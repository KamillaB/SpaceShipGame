package dev.GameField {
	import dev.Field.Field;
	import flash.display.Sprite;
	
	public class GameField extends Sprite {
		
		private var _gameRowNumber:Number = 5;
		private var _gameColumnNumber:Number = 5;
		private var _gameRowIdArray:Array = new Array("1","2","3","4","5","");
		private var _gameColumnIdArray:Array = new Array("","A","B","C","D","E");
		public var _gameFieldArray:Array = new Array();
		
		private var _fieldWidth:Number;
		private var _fieldHeight:Number;
		private var _fieldStartX:Number = 0;
		private var _fieldStartY:Number = 0;
		
		

		public function GameField(gWidth:Number, gHeight:Number) {
			
			_fieldWidth = gWidth/(_gameRowNumber+1);
			_fieldHeight = gHeight/(_gameColumnNumber+1);
			
			
			createGameField();
			
		}
		private function createGameField( ) : void  {
			
			var aktField:Field;
			var aktRowId:String;
			var aktColumnId:String;
			
			for (var i:Number = 0; i<=_gameRowNumber; i++) {
					
				for (var j:Number = 0; j<=_gameColumnNumber; j++) {
					
					aktRowId = _gameRowIdArray[j];
					aktColumnId = _gameColumnIdArray[i];
					
					if (i==0) {
						
						aktField = this.setIdField(aktRowId)
						
								
					} else {
						
						if (j != _gameColumnNumber) {
						
							if(i==3 && j==2) {
								
								aktField = new Field(_fieldWidth, _fieldHeight, "goalField");
								
							
							} else {
								
								aktField = new Field(_fieldWidth, _fieldHeight, "playField");
								
							}
						
						} else {
							
							aktField = this.setIdField(aktColumnId)
													}				
					}
					
					addChild(aktField)

					aktField.x = _fieldStartX;
					aktField.y = _fieldStartY;
					
					_gameFieldArray.push(aktField);
					_fieldStartY += aktField.height;
					aktField._fieldColumnId = aktColumnId;
				}
				
				aktField._fieldColumnId = aktColumnId;
				_fieldStartY = 0;
				_fieldStartX += aktField.width;
				
			}
					
		}
		
		private function setIdField(aktColId:String) : Field  {
			
			var aktField:Field = new Field(_fieldWidth, _fieldHeight, "idField");
			aktField.setText(aktColId)
			//addChild(aktField)
			return aktField;
		
		}
	}
	
}
