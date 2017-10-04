<?php

class Views
{
    const COMPONENTS_DIR = 'views' . DIRECTORY_SEPARATOR . 'staticFiles';

    /**
     * Model
     * get a singleton instance of Views_MD
     *
     * @return Route_MD
     */
    protected function getViewsInstance()
    {
        return Views_MD::getInstance();
    }

    function __construct($request)
    {
        $view = $this->getViewsInstance();
        $target = ($request) ? $request : GlobalConstants::PRINCIPAL_VIEW;
        $view->setView($target);
    }

    public function routingView() {
        $target = $this->getViewsInstance();
        $view = $target->getView();

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

                $matchesComponents = array();
                $currentComponent = file_get_contents($componentHTML);
                $render = preg_match_all('/<comp>[a-zA-Z0-9_\-]+<\/comp>/', $currentComponent, $matchesComponents, PREG_PATTERN_ORDER);

                if ($render) {

                    $resource = preg_match_all('/<src type=["|\'](img|js|css|file)["|\']>[a-zA-Z0-9_\-]+<\/src>/', $currentComponent, $matchesResources, PREG_PATTERN_ORDER);

                    if ($resource) {

                        $clear[] = '';
                        $clear[] = '';
                        $patrons[] = '/<src type=["|\'](img|js|css|file)["|\']>/';
                        $patrons[] = '/<\/src>/';

                        $resource = preg_replace($patrons, $clear, $matchesResources[0]);
                        $types = $matchesResources[1];
                        $count = count($resource);

                        for ($i = 0; $i < $count; $i++) {
                            $resourcesPath = self::COMPONENTS_DIR . DIRECTORY_SEPARATOR . $view . DIRECTORY_SEPARATOR . 'Resources' . DIRECTORY_SEPARATOR . $types[$i] . DIRECTORY_SEPARATOR;
                            $resources = scandir($resourcesPath);
                            $file = $resource[$i].".{$types[$i]}";
                            $found = in_array($file, $resources);

                            if ($found){
                                $path = "'{$resourcesPath}{$file}'";
                                $currentComponent = str_replace($matchesResources[0][$i], $path,$currentComponent);
                            }
                        }
                    }

                    $clear[] = '';
                    $clear[] = '';
                    $patrons[] = '/<comp>/';
                    $patrons[] = '/<\/comp>/';

                    $components = preg_replace($patrons, $clear, $matchesComponents[0]);
                    $count = count($components);

                    for ($i = 0; $i < $count; $i++) {
                        $renderedComponent = $this->render($view, $components[$i]);
                        $currentComponent = str_replace($matchesComponents[0][$i], $renderedComponent,$currentComponent);
                    }
                }

                return $currentComponent;
            }
        }

        return false;
    }
}