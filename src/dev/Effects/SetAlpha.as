package dev.Effects {
	
	public class SetAlpha {
		
		private var _objArray:Array = new Array();
		private var newAlpha:Number;

		public function SetAlpha(objArray:Array, setTo:Number) {
			// constructor code
			_objArray = objArray;
			newAlpha = setTo;
			
			var aktObj:Object;
			var objNumber = _objArray.length;
			
			for (var i:Number = 0; i<objNumber; i++){
				
				aktObj = _objArray[i];
				aktObj.alpha = newAlpha;
				
			}
		}

	}
	
}
