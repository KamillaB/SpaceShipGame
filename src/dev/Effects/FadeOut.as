package dev.Effects {
	
import flash.utils.Timer;  
	import flash.events.TimerEvent;
	
	public class FadeOut {

		private var _obj:Object;
		private var _from:Number;
		private var _to:Number;
		private var _interval:Number;
		private var _step:Number = 0;
		private var timer:Timer;
		
		

		public function FadeOut(obj:Object, from:Number, to:Number, interval:Number, step:Number) {
			// constructor code
			_obj = obj;
			_from = from; //alpha szazalekban
			_to = to; 	//alpha szazalekban
			_interval = interval;
			_step = step;
			
			obj.alpha = _from/100;
			
			startFadeOut();
		}
		
		private function startFadeOut() {
		
			timer = new Timer(_interval);
			timer.repeatCount = Math.round((_from-_to)/_step)
			//timer.delay = _interval;
			timer.addEventListener(TimerEvent.TIMER, fadeOut);
			timer.start();
			
		}
		
		private function fadeOut (e:TimerEvent):void {
			
			if (_obj.alpha >_to/100) {
				
				_obj.alpha -= _step/100;
				
				if (_obj.alpha <= 0) {
					
					_obj.alpha = 0
				}
				
				e.updateAfterEvent();
				
			} else {
				
				timer.stop();
				
			}
			
		}

	}
	
}
