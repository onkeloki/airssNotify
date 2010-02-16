package org.onkeloki.airssnotify.view {
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author oki
	 */
	public class MainViewStackMediator extends Mediator {
		
		[Inject]public var mainViewStack : MainViewStack;
		
		
		public function MainViewStackMediator() {
		}
		
		override public function onRegister():void{
			eventMap.mapListener(eventDispatcher, FeedListEvent.ADD_FEED_BUTTON_CLICK, addFeedlistbuttonclick);
			eventMap.mapListener(eventDispatcher, FeedListEvent.CANCLE_FEED_ADD_BUTTON_CLICK, cancleFeedAddEvent);
		}

		private function cancleFeedAddEvent(e:FeedListEvent) : void {
			mainViewStack.selectedIndex = 0;
		}

		private function addFeedlistbuttonclick(e:FeedListEvent) : void {
			mainViewStack.selectedIndex = 1;
		}
	}
}
