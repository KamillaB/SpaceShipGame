package dev.Field {
	import dev.Box.Box;
	import flash.display.Sprite;
	import dev.TxtField.TxtField;
	import flash.events.Event;
	
	public class Field extends Sprite {
		
		private var _fieldWidth:Number;
		private var _fieldHeight:Number;
		private var _fieldColor:uint = 0xE0C1A3;
		private var _fieldBorderColor:uint = 0xCC9966;
		private var _fieldRounded:Boolean = false;
		private var _idFieldColor:uint = 0xBC7D3F;
		private var _goalFieldColor:uint =0x66CC66;
		private var _infoFieldColor:uint = 0xCC99FF;
		public var _fieldType:String;
		public var _idField:Boolean = false;
		public var _goalField:Boolean =false;
		
		public var _fieldRowId:String;
		public var _fieldColumnId:String;
		public var _txtField:TxtField;
		
		public function Field(fWidth:Number, fHeight:Number, fieldType:String) {
			// constructor code
			
			_fieldWidth = fWidth;
			_fieldHeight = fHeight;
			_fieldType = fieldType;
			
			if (_fieldType == "playField") {
				
				createField();
				
			} else if (_fieldType == "idField") {
				
				createIdField();
				
			} else if (_fieldType == "goalField") {
				
				createGoalField();
			
			} else if (_fieldType == "infoField") {
				
				createInfoField();
			
			}
			
		}
		
		private function createField( ) :void {
			
			
			var field:Box;
			field = new Box(_fieldColor, _fieldBorderColor, _fieldWidth,_fieldHeight, _fieldRounded)
			addChild(field);
			
		}
		
		private function createIdField():void{
			
			var field:Box;
			field = new Box(_idFieldColor, _fieldBorderColor, _fieldWidth,_fieldHeight, _fieldRounded) 
			_txtField = new TxtField();
			addChild(field);
		}
		
		private function createGoalField():void {
			var field:Box;
			field = new Box(_goalFieldColor, _fieldBorderColor, _fieldWidth,_fieldHeight, _fieldRounded)
			addChild(field);
		
		}
		
		private function createInfoField():void {
			
			var field:Box;
			field = new Box(_infoFieldColor, _fieldBorderColor, _fieldWidth,_fieldHeight, _fieldRounded)
			_txtField = new TxtField();
			addChild(field);
		}
		
		public function setText(tText:String):void {
			
			var txtFieldText:String = tText;
			//trace("IdFieldText: " + txtFieldText);
			
			_txtField.text = txtFieldText;
			this.addChildAt(_txtField,1);
			_txtField.setTextFieldPosition();
			
		
		}
		
		public function setGoalField():void {
			
			this._goalField = true;
		
		}
		
		public function onMouseRollOver(e:Event):void {
			
			trace("_fieldRowId = " + _fieldRowId + " _fieldColumnId = " + _fieldColumnId)
			
		}

	}
	
}
