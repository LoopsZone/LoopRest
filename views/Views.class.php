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

    public function render($view) {

        $components = scandir(self::COMPONENTS_DIR);
        $component = in_array($view, $components);

        if ($component) {

            $componentHTML = DIRECTORY . self::COMPONENTS_DIR . DIRECTORY_SEPARATOR . $view . DIRECTORY_SEPARATOR . "$view.html";

            if (file_exists($componentHTML)) {

                $matchesComponents = array();
                $currentComponent = file_get_contents($componentHTML);
                $render = preg_match_all('/<comp>[a-zA-Z0-9_\-]+<\/comp>/', $currentComponent, $matchesComponents, PREG_PATTERN_ORDER);

                if ($render) {

                    $clean[] = '';
                    $clean[] = '';
                    $patrons[] = '/<comp>/';
                    $patrons[] = '/<\/comp>/';

                    $components = preg_replace($patrons, $clean, $matchesComponents[0]);
                    $count = count($components);

                    for ($i = 0; $i < $count; $i++) {
                        $renderedComponent = $this->render($components[$i]);
                        $currentComponent = str_replace($matchesComponents[0][$i], $renderedComponent,$currentComponent);
                    }
                }

                return $currentComponent;
            }
        }

        return false;
    }
}