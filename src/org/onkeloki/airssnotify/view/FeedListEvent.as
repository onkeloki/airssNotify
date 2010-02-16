package org.onkeloki.airssnotify.view {
	import flash.events.Event;

	/**
	 * @author oki
	 */
	public class FeedListEvent extends Event {
		     public static const ADD_FEED_BUTTON_CLICK:String = 'add_feed_button_click';
		     public static const CANCLE_FEED_ADD_BUTTON_CLICK:String = 'cancle_feed_add_button_click';
		
		
		public function FeedListEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type,true);
		}
	}
}
