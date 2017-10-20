<?php

class Views{
    private $currentComponent;
    private $comps_dir = 'views' . DS . 'staticFiles';
    private $parent_explode = '/[a-zA-Z0-9_\-]:[a-zA-Z0-9_\-]/';
    private $comp_rgx = '/<comp[\s]*name=["|\'][a-zA-Z0-9_\-]*["|\']+[\s]*\/>/';
    private $src_rgx = '/<src[\s]*type=["|\'](js|css|png|gif|file)[\s]*["|\']*[\s]*name=["|\'][a-zA-Z0-9_\-]+["|\'][\s]*\/>/';

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

        $component = $view;
        $parent = '';

        $explode = preg_match($this->parent_explode, $view);
        if ($explode) {
           $views = explode(':', $view) ;
           $component = $views[0];
           $parent = $views[1];
        }

        return $this->render($component, $parent);
    }

    public function render($component, $parent) {

        $findIn = ($parent) ? DS . $component : $parent;
        $target = ($parent) ? "{$parent}.html" : $component;
        $components = scandir($this->comps_dir.$findIn);
        $componentMatch = in_array($target, $components);

        if ($componentMatch) {

            if(!$parent) {
                $parent = $component;
            }

            $componentHTML = DIRECTORY . $this->comps_dir . DS . $component . DS . "{$parent}.html";

            if (file_exists($componentHTML)) {
                $currentComponent = file_get_contents($componentHTML);
                $render = preg_match_all($this->comp_rgx, $currentComponent, $matchesComponents, PREG_PATTERN_ORDER);

                if ($render) {

                    $clear[] = '';
                    $clear[] = '';
                    $patrons[] = '/<comp[\s]*name=["|\']/';
                    $patrons[] = '/["|\']+[\s]*\/>/';

                    $components = preg_replace($patrons, $clear, $matchesComponents[0]);
                    $count = count($components);

                    for ($i = 0; $i < $count; $i++) {
                        $renderedComponent = $this->render($component, $components[$i]);
                        $this->currentComponent = str_replace($matchesComponents[0], $renderedComponent, $currentComponent);
                    }
                }else{
                    $this->currentComponent = $currentComponent;
                }

                $this->resources($component);

                return $this->currentComponent;
            }
        }

        return false;
    }

    private function resources($view) {
        $matchesResources = array();
        $resource = preg_match_all($this->src_rgx, $this->currentComponent, $matchesResources, PREG_PATTERN_ORDER);

        if ($resource) {

            $clear[] = '';
            $clear[] = '';
            $namePatrons[] = '/<src[\s]*type=["|\'](js|css|png|gif|file)[\s]*["|\']*[\s]*name=["|\']/';
            $namePatrons[] = '/["|\'][\s]*\/>/';

            $nameResource = preg_replace($namePatrons, $clear, $matchesResources[0]);
            $count = count($nameResource);

            for ($i = 0; $i < $count; $i++) {
                $extra = '';
                $fileType = $matchesResources[1][$i];
                if ($fileType == 'png'){
                    $fileType = 'img';
                    $extra = $nameResource[$i];
                }

                $resourcesPath = $this->comps_dir . DS . $view . DS . 'Resources' . DS . $fileType . DS;
                $resources = scandir($resourcesPath);
                $file = $nameResource[$i].".{$matchesResources[1][$i]}";
                $found = in_array($file, $resources);

                if($found){
                    $type = strtoupper($fileType);
                    $methodTypeResource = "resources{$type}";
                    $content = $this->$methodTypeResource($resourcesPath.$file, $extra);
                }else{
                    $content = "<!-- {$file} not fount -->";
                }

                $this->currentComponent = str_replace($matchesResources[0][$i], $content, $this->currentComponent);
            }

            return true;
        }

        return false;
    }

    private function resourcesJS($path) {
        return "<script src='{$path}'></script>";
    }

    private function resourcesCSS($path) {
        return "<link rel='stylesheet' type='text/css' href='{$path}'>";
    }

    private function resourcesIMG($path, $id) {
        return "<img id='{$id}' src='$path' />";
    }
}