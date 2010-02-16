package org.onkeloki.airssnotify.view {

	import flash.events.MouseEvent;
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author oki
	 */
	public class SettingsAreaMediator extends Mediator {
		[Inject]public var settingsArea : SettingsArea;
		
		public function SettingsAreaMediator() {
		}
		
		override public function onRegister():void{
			eventMap.mapListener(settingsArea.cancleAddFeedButton, MouseEvent.CLICK, cancleAddFeedButton);
		
			
		}

		private function cancleAddFeedButton(e:MouseEvent) : void {
		
			eventDispatcher.dispatchEvent(new FeedListEvent(FeedListEvent.CANCLE_FEED_ADD_BUTTON_CLICK));
		}
	}
}
