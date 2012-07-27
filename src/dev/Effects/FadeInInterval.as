package dev.Effects {

	
	import dev.GameButton.GameButton;
	import flash.display.Sprite;
	import flash.utils.Timer;  
	import flash.events.TimerEvent;
	import dev.Effects.FadeIn;
	import flash.events.*;
	import flash.display.*;
	
	public class FadeInInterval extends EventDispatcher{
		
		private var _objArray:Array = new Array();
		private var _from:Number;
		private var _to:Number;
		private var _step:Number;
		private var _interval:Number;
		private var _startNext:Number;
		private var _timer:Timer;
		private var _fadedIn:Boolean = false;
		
		public static const FADED_IN:String = "fadeInCompleted"

		public function FadeInInterval(objArray:Array, from:Number, to:Number, step:Number, interval:Number ) {
			// constructor code
			_objArray = objArray;
			_from = from;
			_to = to;
			_step = step;
			_interval = interval;
			
			
			
			
			startFadeInInterval();
		}
		
		private function startFadeInInterval():void {
			
			var i : int =0;
			var objNumber:Number = _objArray.length;
			var aktObj:Object;
			var fadeIn:FadeIn;
			var started:Boolean = false;
			
			_timer = new Timer(2);//( _startNext, objNumber);
			_timer.addEventListener(TimerEvent.TIMER, fadeInArray);
			_timer.start();
			
			
			
			function fadeInArray() :void{
					
				if (!started) {
					
				
					aktObj = _objArray[i];
					fadeIn = new FadeIn(aktObj, _from, _to, _interval, _step);
					
					fadeIn.addEventListener("fadeInCompleted",onFadedIn);
					started = true
					
				} else {
					//trace("started")
				}
					
			}
			
			function onFadedIn():void{
				
				i++;
				started = false;
				if (i==objNumber) {
					
					_timer.stop();
					
					//dispatchEvent(new Event(FadeInInterval.FADED_IN))
				}
				
			}
				
			
		
		
			
		}
	}
	
}
