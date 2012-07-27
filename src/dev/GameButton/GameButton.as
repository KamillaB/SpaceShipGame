package dev.GameButton {
	
	import dev.Box.Box;
	import flash.display.Sprite;
	import flash.text.TextField;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormat;
    import flash.filters.DropShadowFilter;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	import dev.TxtField.TxtField;

	
	public class GameButton extends Sprite {
		
		private var _button:Box;
		//public var _buttonTextField:TextField;
		
		//Button Properties
		private var _buttonColor:uint = 0xDD00DD;
		private var _buttonBorderColor:uint = 0xDD00DD;
		private var _buttonText:String;
		private var _buttonWidth:Number = 200;
		private var _buttonHeight:Number = 50;
		public var _buttonFunction:String;
		private var _txtField:TxtField;
		
		private var _TextFieldX:Number;
		private var _TextFieldY:Number;		
		public static var _buttonTextFieldText:String;
			
		
		private var dropShadow:DropShadowFilter;
		

		public function GameButton(btnText:String) {
			
			// constructor code
			_buttonTextFieldText = btnText;
			createButton();
			
			_txtField = new TxtField();
			setText();
			
			
			addChild(_button);
			addChildAt(_txtField, 1);
			_txtField.setTextFieldPosition();
			createDropShadowFilter();
			
			
		}
		private function createButton():void {
			
			_button = new Box(_buttonColor,_buttonBorderColor,_buttonWidth,_buttonHeight, true);
			
		
		}
		public function setText():void {
			
			_txtField.text = _buttonTextFieldText;
			
		}
		
		private function createDropShadowFilter():void {
			
			dropShadow = new DropShadowFilter();
			//_button.filters = new Array(dropShadow);
					
					
						dropShadow.distance = 2;
						dropShadow.angle = 60;
						dropShadow.color = 0x000000;
						dropShadow.alpha = 0;
						dropShadow.blurX = 2;
						dropShadow.blurY = 2;
						dropShadow.strength = 8;
						dropShadow.quality = 1;
						dropShadow.inner = false;
						dropShadow.knockout = false;
						dropShadow.hideObject = false;
						
		
		}
		public function setBtnFunction(t:String):void{
			
			this._buttonFunction = t
		}
		
		public function onMouseRollOver(event:MouseEvent):void {
			
					dropShadow.alpha = 1;
					_button.filters = new Array(dropShadow)
			//trace("ButtonRollOver")
		}
		public function onMouseRollOut(event:MouseEvent):void {
			
					dropShadow.alpha = 0;
					_button.filters = new Array(dropShadow)
					//trace("ButtonRollOut")
						
		}
		public function onMouseClick(event:MouseEvent):void {
			
			//trace("ButtonRollClick")
		
		}
		

	}
	
}
