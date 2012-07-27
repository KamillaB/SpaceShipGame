package dev.Ship {
	
	import dev.Box.Box;
	
	import flash.display.Sprite;
	
	public class Ship extends Sprite {
		
		private var _shipColor:uint;
		private var _shipBorderColor:uint = 0xFF8833;
		private var _shipWidth:Number = 60;
		private var _shipHeight:Number = 60;
		private var _shipRadius:Number;
		public var _shipX:Number;
		public var _shipY:Number;
		public var _shipRowId:String;
		public var _shipColumnId:String;
		private var _shipPercent : Number = 0.8;
		
		public function Ship(shColor:uint) {
			// constructor code
			
			_shipColor = shColor;
			var box:Box = new Box(_shipColor, _shipColor, _shipWidth, _shipHeight, false);
			addChild(box);
			box.alpha = 0;
			drawCircle()
			
			
		}
		private function drawCircle() : void {
			
			var sh:Sprite = new Sprite();//hajo letrehozasa
			
			_shipRadius = (_shipWidth*_shipPercent)/2
			sh.graphics.lineStyle(2, _shipBorderColor);
			sh.graphics.beginFill(_shipColor, 1);
			sh.graphics.drawCircle(0,0, _shipRadius);
			sh.graphics.endFill();
			
			addChildAt(sh,1);
			
			setShipPosition(sh)
			
		}
		private function setShipPosition(sh:Sprite) : void  {
			
			var shWidth:Number = _shipWidth*_shipPercent;
			var shHeight:Number = _shipHeight*_shipPercent;
			sh.x = _shipWidth/2//(_shipWidth-shWidth)/2
			sh.y = _shipHeight/2//(_shipHeight-shHeight)/2
		
		}
	}
	
}
