 package dev.Navy {
	 
 	import dev.Ship.Ship;
 	
 	import flash.display.Sprite;
	
	public class Navy extends Sprite{
		
		private var _shipArray : Array= new Array();
		private var _shipRowIdArray:Array = new Array();
		private var _shipColumnIdArray:Array = new Array();
		private var _shipColorArray:Array = new Array();
		
		public function Navy(shArray:Array, shRowArray:Array, shColumnArray:Array, shColorArray:Array) {
			// constructor code
			_shipArray = shArray;
			_shipRowIdArray = shRowArray;
			_shipColumnIdArray = shColumnArray;
			_shipColorArray = shColorArray;
			
			createNavy();
			trace(_shipArray)
		}
		private function createNavy( ) : void {
			
			var aktShip:Ship;
			var aktRow:String;
			var aktColumn:String;
			var aktColor:uint;
			
			for (var i:Number =0; i<_shipArray.length(); i++) {
				
				aktColor = _shipColorArray[i];
				aktRow = _shipRowIdArray[i];
				aktColumn = _shipColumnIdArray[i];
				
				aktShip = new Ship(aktColor);
				
				aktShip._shipRowId = aktRow;
				aktShip._shipColumnId = aktColumn;
				
				addChild(aktShip)
				trace("Hallo")
			}
			
		}

	}
	
}
