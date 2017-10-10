<?php

class Views{
    private $currentComponent;
    const COMPONENTS_DIR = 'views' . DIRECTORY_SEPARATOR . 'staticFiles';

    function __construct($request) {
        $model = Model::getInstance();
        $viewMD = $model->getViewsInstance();
        $target = ($request) ? $request : GlobalConstants::PRINCIPAL_VIEW;
        $viewMD->setView($target);
    }

    public function routingView() {
        $model = Model::getInstance();
        $targetMD = $model->getViewsInstance();
        $view = $targetMD->getView();

        return $this->render($view);
    }

    public function render($view, $parent = '') {

        $components = scandir(self::COMPONENTS_DIR);
        $component = in_array($view, $components);

        if ($component) {

            if($parent == '') {
                $parent = $view;
            }

            $componentHTML = DIRECTORY . self::COMPONENTS_DIR . DIRECTORY_SEPARATOR . $view . DIRECTORY_SEPARATOR . "{$parent}.html";

            if (file_exists($componentHTML)) {
                $currentComponent = file_get_contents($componentHTML);
                $render = preg_match_all('/<comp[\s]*name=["|\'][a-zA-Z0-9_\-]*["|\']+[\s]*\/>/', $currentComponent, $matchesComponents, PREG_PATTERN_ORDER);

                if ($render) {

                    $clear[] = '';
                    $clear[] = '';
                    $patrons[] = '/<comp[\s]*name=["|\']/';
                    $patrons[] = '/["|\']+[\s]*\/>/';

                    $components = preg_replace($patrons, $clear, $matchesComponents[0]);
                    $count = count($components);

                    for ($i = 0; $i < $count; $i++) {
                        $renderedComponent = $this->render($view, $components[$i]);
                        $this->currentComponent = str_replace($matchesComponents[0], $renderedComponent,$currentComponent);
                    }
                }

                $this->resources($view);

                return $this->currentComponent;
            }
        }

        return false;
    }

    private function resources($view) {
        $matchesResources = array();
        $resource = preg_match_all('/<src[\s]*type=["|\'](js|css|png|gif|file)[\s]*["|\']*[\s]*name=["|\'][a-zA-Z0-9_\-]+["|\'][\s]*\/>/', $this->currentComponent, $matchesResources, PREG_PATTERN_ORDER);

        if ($resource) {

            $clear[] = '';
            $clear[] = '';
            $namePatrons[] = '/<src[\s]*type=["|\'](js|css|png|gif|file)[\s]*["|\']*[\s]*name=["|\']/';
            $namePatrons[] = '/["|\'][\s]*\/>/';

            $nameResource = preg_replace($namePatrons, $clear, $matchesResources[0]);

            $count = count($nameResource);

            for ($i = 0; $i < $count; $i++) {
                $resourcesPath = self::COMPONENTS_DIR . DIRECTORY_SEPARATOR . $view . DIRECTORY_SEPARATOR . 'Resources' . DIRECTORY_SEPARATOR . $matchesResources[1][$i] . DIRECTORY_SEPARATOR;
                $resources = scandir($resourcesPath);
                $file = $nameResource[$i].".{$matchesResources[1][$i]}";
                $found = in_array($file, $resources);

                if ($found){
                    $path = "'{$resourcesPath}{$file}'";
                    $this->currentComponent = str_replace($matchesResources[0][$i], $path, $this->currentComponent);
                }
            }
        }
    }
}