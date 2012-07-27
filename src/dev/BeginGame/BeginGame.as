package dev.BeginGame {
	
	import dev.Box.Box;
	import flash.events.MouseEvent;
	import dev.GameButton.GameButton;
	import dev.Effects.FadeInInterval;
	import flash.display.Sprite;
	import flash.ui.Mouse;
	
	public class BeginGame extends Sprite{
		
		public var _button:GameButton;
		private var _buttonX:Number = 300;
		private var _buttonY:Number = 100;
		private var _buttonDistance:Number = 50;
		private var _buttonArray:Array = new Array();
		public var _buttonTextArray:Array = new Array("New Game", "Choose level" ,"Instructions", "Exit");
		public var _buttonFunctionArray:Array = new Array("newGame", "newLevel" , "showRules", "exit")
		public var _buttonFunction:String;
		private var _fadeFrom:Number = 0;
		private var _fadeTo:Number = 70;
		public var _calledFunction:String;
		public var fadeInArray:FadeInInterval;
		
		public function BeginGame() {
			// constructor code
			var buttonNumber:Number = _buttonTextArray.length;
			var aktText:String;
			var aktFunc:String;
			
			for (var i:Number=0; i<buttonNumber; i++){
				
				aktText = _buttonTextArray[i]
				aktFunc = _buttonFunctionArray[i];
				_button = new GameButton(aktText);
				_button.x = _buttonX;
				_button.y = _buttonY;
				_button._buttonFunction = aktFunc;
				
				
				_buttonY += (_button.height+_buttonDistance)
				_button.alpha = 0
				_buttonArray.push(_button)
				
				addChild(_button)
				
				_button.buttonMode = true;
				_button.addEventListener(MouseEvent.ROLL_OUT, _button.onMouseRollOut)
				_button.addEventListener(MouseEvent.ROLL_OVER, _button.onMouseRollOver)
				
				//_button.addEventListener(MouseEvent.CLICK, onButtonClick);
			}
			
			fadeInArray = new FadeInInterval(_buttonArray, _fadeFrom, _fadeTo, 2 , 10);
			//fadeInArray.addEventListener("fadeInCompleted", enableButton);
		}
		private function enableButton(e:FadeInInterval):void{
			
			
			_button.addEventListener(MouseEvent.ROLL_OVER, _button.onMouseRollOver);
			_button.addEventListener(MouseEvent.ROLL_OUT, _button.onMouseRollOut);
		}
		
		

	}
	
}
