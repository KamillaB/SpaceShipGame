package dev.Effects {
	
	import flash.utils.Timer;  
	import flash.events.TimerEvent;
	import flash.events.*;
	
	
	public class FadeIn extends EventDispatcher {

		private var _obj:Object;
		private var _from:Number;
		private var _to:Number;
		private var _interval:Number;
		private var _step:Number = 0;
		private var _timer:Timer;
		
		
		public static const FADED_IN:String = "fadeInCompleted";

		public function FadeIn(obj:Object, from:Number, to:Number, interval:Number, step:Number) {
			// constructor code
			
			
			_obj = obj;
			
			_from = from; //alpha szazalekban
			_to = to; 	//alpha szazalekban
			_interval = interval;
			_step = step;
			
			_obj.alpha = _from/100;
			
			
			startFadeIn();
			//trace("FadeIn started")
		}
		
		private function startFadeIn():void {
		
			_timer = new Timer(_interval);
			_timer.addEventListener(TimerEvent.TIMER, fadeIn);
			_timer.start();
			
		}
		
		public function fadeIn (e:TimerEvent):void {
			
			if (_obj.alpha*100 < _to) {
				
				_obj.alpha += _step/100;
				//trace(_obj.alpha);
			} else {
					_obj.alpha = _to/100
					
					_timer.stop();
					//trace("FadeIn ended");
					fadedIn();
					
			}
			
			e.updateAfterEvent();
		}
		private function fadedIn():void {
			
			
			dispatchEvent(new Event(FadeIn.FADED_IN));
		
		
		}

	}
	
}
