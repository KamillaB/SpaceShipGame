package dev.Counter {
	import dev.Field.Field;
	import flash.display.Sprite;
	
	public class Counter extends Sprite {
		
		private var _counterWidth:Number = 200;
		private var _counterHeight:Number = 40;
		private var _counterType:String;
		private var _counterText:String;
		
		public var _stepCount:Number = 0;
		private var _field:Field;

		public function Counter(cType:String) {
			// constructor code
			_counterType = cType;
			
			if (_counterType == "stepCounter") {
				
				createStepCounter();
				addChild(_field);
			}
		}
		
		public function createStepCounter():void {
			
			_field = new Field(_counterWidth, _counterHeight, "infoField");
			_counterText = "Steps: " + _stepCount;
			
			
			_field.setText(_counterText);
		}

	}
	
}
