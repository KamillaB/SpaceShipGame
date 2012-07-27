package dev.Box {
	
	import flash.display.Sprite;
	
	
	public class Box extends Sprite {
		
		private var _boxWidth:Number;
		private var _boxHeight:Number;
		private var _boxX:Number;
		private var _boxY:Number;
		private var _boxColor:uint;
		private var _boxBorderColor:uint;
		private var _boxAlpha:Number;
		private var _boxBorderAlpha:Number;
		private var _rounded:Boolean = false;
		
		public function Box(bColor:uint, bBorderColor:uint, bWidth:Number, bHeight:Number, rounded:Boolean) {
			
			
			_boxColor = bColor;
			_boxBorderColor = bBorderColor,
			_boxWidth = bWidth;
			_boxHeight = bHeight;
			_rounded = rounded;
			
			// constructor code
			if (_rounded == true) { 
				
				drawRoundedRect();
				
				
			} else {
			
				drawRect();	
			
			}
			
		}
		// just draw graphic rectangle
		private function drawRect():void {
			graphics.beginFill(_boxColor, 1);
			graphics.lineStyle(1,_boxBorderColor,1)
			graphics.drawRect(0,0,_boxWidth,_boxHeight)
			graphics.endFill();
							
		}
		
		private function drawRoundedRect():void {
			
			graphics.beginFill(_boxColor, 1);
			graphics.lineStyle(1,_boxBorderColor,0)
			graphics.drawRoundRect(0, 0, _boxWidth, _boxHeight, 9) //cornerRadius)(0,0,_boxWidth,_boxHeight)
			graphics.endFill();
			
		}
		
		
	}
	
}

