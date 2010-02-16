package org.onkeloki.airssnotify {
	import org.onkeloki.airssnotify.view.SettingsAreaMediator;
	import org.onkeloki.airssnotify.view.SettingsArea;
	import org.onkeloki.airssnotify.view.MainViewStackMediator;
	import org.onkeloki.airssnotify.view.MainViewStack;
	import org.onkeloki.airssnotify.view.LogBoxMediator;
	import org.onkeloki.airssnotify.view.LogBox;
	import org.onkeloki.airssnotify.view.FeedListMediator;
	import org.onkeloki.airssnotify.view.FeedList;
	import org.robotlegs.mvcs.Context;

	/**
	 * @author oki
	 */
	public class AirssNotifyContext extends Context {
		public function AirssNotifyContext() {
			super();
		}

		override public function startup() : void {
			
			// view
			mediatorMap.mapView(FeedList, FeedListMediator);
			mediatorMap.mapView(LogBox, LogBoxMediator);
			mediatorMap.mapView(MainViewStack, MainViewStackMediator);
			mediatorMap.mapView(SettingsArea, SettingsAreaMediator); 
	
			super.startup();
		}
	}
}
