package org.onkeloki.airssnotify.view {
	import mx.controls.Alert;
	import flash.events.MouseEvent;
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author oki
	 */
	public class FeedListMediator extends Mediator {
		[Inject]public var feedList:FeedList;
		
		public function FeedListMediator() {
		}
		
		override public function onRegister():void{
			eventMap.mapListener(feedList.addButton, MouseEvent.CLICK, onAddFeedClicked);
		}

		private function onAddFeedClicked(e:MouseEvent) : void {
			eventDispatcher.dispatchEvent(new FeedListEvent(FeedListEvent.ADD_FEED_BUTTON_CLICK));
		}
	}
}
