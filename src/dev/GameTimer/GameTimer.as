package dev.GameTimer {
	
	import dev.Field.Field;
	import flash.display.Sprite;
	import flash.utils.Timer;  
	import flash.events.TimerEvent;
	import flash.events.*;

	public class GameTimer extends Sprite {
		
		private var _gameTimerWidth:Number = 100;
		private var _gameTimerHeight:Number = 40;
		
		private var _gameTimerColor:uint = 0xFF6633;
		private var _gameTimerBorderColor : uint = 0x006633;
		
		public var _min:Number = 0;
		public var _sec:Number = 0;
		
		public var _timer:Timer;
		public var _timerText:String;
		private var _counter:Number = 0;
		private var _field:Field;

		public function GameTimer() {
			// constructor code
			_field = new Field(_gameTimerWidth, _gameTimerHeight, "infoField");
			
			setTimer()
			startTimer()
			addChild(_field);
		}
		public function setTimer( ) : void  {
			
			_timerText = _min + ":" + _sec
			_field.setText(_timerText)
			//_counter = 0;
			
			
		}
		public function startTimer( ) : void  {
			
			_timer = new Timer(1);
			//addChildAt(_timer,1);
			_timer.addEventListener(TimerEvent.TIMER, countTime);
			_timer.start();
		
		}
		private function countTime(e:TimerEvent):void {
				
			_counter++;
			
			if (_counter == 100) {
				
				_sec++;
				_counter  = 0;
				
				this.setTimer();
			
			}
			if (_sec == 60) {
				
				_min++;
				_sec = 0;
				this.setTimer();
			}
			
			e.updateAfterEvent();
		
		}

	}
	
}
