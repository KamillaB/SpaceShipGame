package dev.TxtField {
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
    import flash.text.TextFormat;
	
	public class TxtField extends TextField{
		
		private var _textFont:String = "Verdana";
		private var _textColor:uint = 0x000000;
		private var _textSize:Number = 24;
		private var _textUnderLine:Boolean = false;
		private var _textFieldX:Number;
		private var _textFieldY:Number;
		private var _textFieldBackground:Boolean = false;
		private var _textFieldBorder:Boolean = false;
		private var _textFieldAutoSize:Class = TextFieldAutoSize
		public static var _textFieldText:String;
		public var _textField:TextField;
		
		public function TxtField()  {
			// constructor code
			createTextField()
			//setTextFieldPosition()
			//addChild(this)
			
		}
		public function createTextField() :void {
			
			_textField = new TextField();
			this.autoSize = _textFieldAutoSize.LEFT;
			//_TextField.type = TextFieldType.
			this.mouseEnabled = false
			//trace('kriete textfield')
			
			this.background = _textFieldBackground;
            this.border = _textFieldBorder;
			
            var format:TextFormat = new TextFormat();
            format.font = _textFont;
            format.color = _textColor;
            format.size = _textSize;
            format.underline = _textUnderLine;

         	this.defaultTextFormat = format;
			
			
			
		}
		public function setTextFieldPosition() : void{
			
			//center
			_textFieldX = (this.parent.width - this.width)/2
			_textFieldY = (this.parent.height  -this.height)/2
			this.x = _textFieldX;
			this.y = _textFieldY;
			//trace("Button.width: " + this.parent.width + " Button.height: " + this.parent.height + " Button.x: " + this.parent.x + " Button.y: " + this.parent.y)
			//trace("_textField.width: " + this.width + " _textField.height: " + this.height + " _txtField.x: " + this.x + " _txtField.y: " + this.y)
		
		}
		
		

	}
	
}

		/*public function createTextField() :void {
			
			_textField = new TextField();
			_textField.autoSize = _textFieldAutoSize.CENTER;
			//_TextField.type = TextFieldType.
			_textField.mouseEnabled = false
			//trace('kriete textfield')
			
			_textField.background = _textFieldBackground;
            _textField.border = _textFieldBorder;
			
            var format:TextFormat = new TextFormat();
            format.font = _textFont;
            format.color = _textColor;
            format.size = _textSize;
            format.underline = _textUnderLine;

         	_textField.defaultTextFormat = format;
			trace("_textField: "+ _textField.autoSize + " this: " + this.autoSize)
			
			
		}
		public function setTextFieldPosition() {
			
			//center
			_textFieldX = (this.parent.width - _textField.width)
			_textFieldY = (this.parent.height - _textField.height)
			_textField.x = _textFieldX;
			_textField.y = _textFieldY;
			trace("Button.width: " + this.parent.width + " Button.height: " + this.parent.height + " Button.x: " + this.parent.x + " Button.y: " + this.parent.y)
			trace("_textField.width: " + _textField.width + " _textField.height: " + _textField.height + " _txtField.x: " + _textField.x + " _txtField.y: " + _textField.y)
		
		}
		
		

	}
	
}
*/