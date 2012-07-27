package  {
	
	import dev.BeginGame.BeginGame;
	import dev.Box.Box;
	import dev.Counter.Counter;
	import dev.Field.Field;
	import dev.GameField.GameField;
	import dev.GameTimer.GameTimer;
	import dev.Logic.Logic;
	import dev.Navy.Navy;
	import dev.Ship.Ship;
	
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	
	
	public class TheSpaceShipGame extends Sprite {
		
		private var _beginGame:BeginGame;
		private var _onCalled: String;
		
		private var _buttonPanelX:Number;
		private var _buttonPanelY:Number;
		
		private var _gameFieldX:Number = 300;
		private var _gameFieldY:Number = 75;
		private var _gameFieldWidth:Number = 480;
		private var _gameFieldHeight:Number = 480;
		
		private var _shipStartRowIdArray:Array = new Array();
		private var _shipStartColumnArray:Array = new Array();
		
		private var _levelNumber:Number = 1;
		
		public var _logic:Logic;
		private var _navy:Navy;
		
		public function TheSpaceShipGame ()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;		
			startGame();
			
		}
		//Generate the first screen
		private function startGame() : void {
			
			_beginGame = new BeginGame();
			addChild(_beginGame);
			_beginGame.addEventListener(MouseEvent.CLICK, onButtonClick);
			
		}
		public function onButtonClick(e:MouseEvent):void{
			
			var actObj : Object = e.target.parent;
			actObj.parent._calledFunction = actObj._buttonFunction;
			
			_onCalled = actObj._buttonFunction;
			
			
			
			if(_onCalled == "newGame") {
				
				setTable();
				newGame();
				setLevel();
				removeChild(_beginGame);
				//_logic.addEventListener("levelLoaded", newGame);
				
				//addChild(_navy);		
			}
			
		}
		public function newGame():void {
			
			var gameField:GameField = new GameField(_gameFieldWidth,_gameFieldWidth) 
			addChild(gameField);
			gameField.x = _gameFieldX;
			gameField.y = _gameFieldY;
			gameField.alpha = 1;
			
			
		}
		public function setTable( ) : void {
			
			var timer:GameTimer = new GameTimer();
			addChild(timer);
			timer.x = _gameFieldX;
			timer.y = _gameFieldY - timer.height;
			
			var counter:Counter = new Counter("stepCounter");
			addChild(counter);
			counter.x = _gameFieldX + timer.width
			counter.y = _gameFieldY-counter.height;
			
		}
		
		private function setLevel( ) : void {
			
			_logic = new Logic();
			
			
		}
		private function setNavy():void{
			
			var navy:Array = _logic._navy
			var shipRowID:Array = _logic._navyStartRowArray;
			var shipColumnID:Array = _logic._navyStartRowArray;
			var shipColor:Array = _logic._navyColorArray;
			
			_navy = new Navy(navy, shipRowID, shipColumnID, shipColor);
		}
	}
	
}
