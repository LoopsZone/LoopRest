<?php

class View extends Expected_Views
{
  private $model;
	private $currentComponent;

	function __construct()
	{
		$model = Model::getInstance();
		$viewMD = $model->getViewsInstance;
		$routeMD = $model->getRouteInstance;

		$view = $routeMD->getRequest(GlobalSystem::ExpView);
		$target = ($view) ? ucfirst($view) : CoreConfig::PRINCIPAL_VIEW;
		$viewMD->setView($target);
	}

  /**
   * Search current component
   *
   * @param array $model
   * @return bool|string
   */
	public function routingView($dataModel = [])
	{
		$model = Model::getInstance();
		$viewMD = $model->getViewsInstance;
		$view = $viewMD->getView();

		$component = $view;
		$parent = '';

		$this->model = $dataModel;
		$explode = preg_match(self::PARENT_EXPLODE, $view);
		if($explode){
			$views = explode(':', $view);
			$component = $views[0];
			$parent = $views[1];
		}

		$render = $this->render($component, $parent);

		return ($render) ? $render : $this->render(CoreConfig::PRINCIPAL_VIEW, '404');
	}

	/**
	 * Render current component
	 *
	 * @param $component
	 * @param $parent
	 * @return bool|string
	 */
	private function render ($component, $parent)
	{
		$findIn = ($parent) ? DS . $component : $parent;
		$target = ($parent) ? "{$parent}." . self::EXT : $component;
		$components = scandir(self::COMPS_DIR . $findIn);
		$componentMatch = in_array($target, $components);

		if($componentMatch){
			if(!$parent){
				$parent = $component;
			}

			$componentHTML = DIRECTORY . self::COMPS_DIR . DS . $component . DS . "{$parent}." . self::EXT;
			if(file_exists($componentHTML)) {
				$currentComponent = file_get_contents($componentHTML);
				$this->currentComponent = $currentComponent;

				$render = preg_match_all(self::COMP_RGX, $currentComponent, $matchesComponents, PREG_PATTERN_ORDER);
				if($render){
					$clear[] = self::CLEAR;
					$clear[] = self::CLEAR;
					$patrons[] = self::COMP_INIT;
					$patrons[] = self::COMP_END;

					$components = preg_replace($patrons, $clear, $matchesComponents[0]);
					$count = count($components);

					for($i = 0; $i < $count; $i++){
						$renderedComponent = $this->render($component, $components[$i]);
						$this->currentComponent = str_replace($matchesComponents[0], $renderedComponent, $currentComponent);
					}
				}

				$this->modelView();
				$this->resources($component);

				return $this->currentComponent;
			}
		}

		return false;
	}

	/**
	 * Load resources in render content
	 * 
	 * @param $component
	 * @return bool
	 */
	private function resources($component)
	{
		$matchesResources = array();
		$resource = preg_match_all(self::SRC_RGX, $this->currentComponent, $matchesResources, PREG_PATTERN_ORDER);

		if($resource){
			$clear[] = self::CLEAR;
			$clear[] = self::CLEAR;
			$namePatrons[] = self::SRC_INIT;
			$namePatrons[] = self::SRC_END;

			$nameResource = preg_replace($namePatrons, $clear, $matchesResources[0]);
			$count = count($nameResource);

			for($i = 0; $i < $count; $i++){
				$extra = '';
				$fileType = $matchesResources[1][$i];
				if($fileType == 'png'){
					$fileType = 'img';
					$extra = $nameResource[$i];
				}

				$resourcesPath = self::COMPS_DIR . DS . $component . DS . self::SRC_PATH . DS . $fileType . DS;
				$resources = scandir($resourcesPath);
				$file = $nameResource[$i] . ".{$matchesResources[1][$i]}";
				$content = str_replace('{file}', $file, self::NOT_FOUND_COMP);

				$found = in_array($file, $resources);
				if($found){
					$type = strtoupper($fileType);
					$methodTypeResource = constant("self::SRC_{$type}");
					$methodTypeResource = str_replace('{id}', $extra, $methodTypeResource);
					$methodTypeResource = str_replace('{path}', DS . $resourcesPath . $file, $methodTypeResource);
					$content = $methodTypeResource;
				}

				$this->currentComponent = str_replace($matchesResources[0][$i], $content, $this->currentComponent);
			}

			return true;
		}

		return false;
	}

  /**
   * Model value replace
   */
	private function modelView()
  {
    if($this->model){
      foreach($this->model as $model => $value){
        $this->currentComponent = str_replace('{' . $model . '}', $value, $this->currentComponent);
      }
    }
  }
}