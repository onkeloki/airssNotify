package org.onkeloki.airssnotify.view {
	import mx.controls.Alert;
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author oki
	 */
	public class LogBoxMediator extends Mediator {

		[Inject]public var logBox : LogBox;

		public function LogBoxMediator() {
			
		}
		
		
		override public function onRegister():void{
			eventMap.mapListener(eventDispatcher, FeedListEvent.ADD_FEED_BUTTON_CLICK, addFeedlistbuttonclick);
		}

		private function addFeedlistbuttonclick(e:FeedListEvent) : void {
			logBox.text+="aaa";
		}
	}
}
