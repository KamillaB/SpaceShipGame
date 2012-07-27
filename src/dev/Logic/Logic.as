package dev.Logic {
	import flash.events.*;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	

	public class Logic extends EventDispatcher{
		
		public var _levelNumber:Number = 1;
		
		
		public var xmlLoader:URLLoader=new URLLoader();
		public var xmlValue:Number;
		public var nodeType:uint;
		
		private var itemXML:XML;
		
		public var _levelID:Number;
		public var _levelText:String;
		public var _navy:Array = new Array();
		public var _navyStartRowArray:Array = new Array();
		public var _navyStartColumnArray:Array = new Array();
		public var _navyColorArray:Array = new Array();
		
		public static const LOADED:String = "levelLoaded";
		
		public function Logic():void {
			
			loadLevel();
			
		}
		
		public function loadLevel(level:Number = NaN) : void {
			
			if (!level) {
				
				_levelNumber = 1;
				
			} else {
				
				_levelNumber = level;
				
			}
			
			
			xmlLoader.load(new URLRequest("SpaceShipGame_Levels.xml"));
			xmlLoader.addEventListener(Event.COMPLETE, loadLevelProperties);
			
		}
		
		public function loadLevelProperties(e:Event):void
			{
				itemXML = new XML(e.currentTarget.data);
				/* try {
					 
					itemXML = new XML(e.target);
                    trace("Could parse the XML file.");
				 
                } catch (e:TypeError) {
                    trace("Could not parse the XML file. " + itemXML.data);
                }*/
				
				 trace("Could parse the XML file.");
				//XML.ignoreWhitespace = true;
				
				//var itemClass:String = String(item);
				var i:Number=0;
				var j:Number=0
				var aktItem:Number = 0;
				trace(itemXML.Level.length())
								
				for (i=0; i<itemXML.Level.length(); i++) {
					
					//trace(itemXML.Level[i]);	
					
					if (i == (_levelNumber-1)){
						
						
						
						_levelID = itemXML.Level[i].ID;
						_levelText = itemXML.Level[i].Text;
						
						for (j=0; j<itemXML.Level[i].Ship.length(); j++) {
							
							var ship:String = itemXML.Level[i].Ship[j].ID;
							
							var shipRowId:String = itemXML.Level[i].Ship[j].rowId
							var shipColumnId:String = itemXML.Level[i].Ship[j].columnId
							var shipColor:uint = itemXML.Level[i].Ship[j].ShipColor
							
							_navy.push(ship)
							_navyStartRowArray.push(shipRowId)
							_navyStartColumnArray.push(shipColumnId)
							_navyColorArray.push(shipColor)
							
							
						}				
								
						
					}
					
				}
				dispatchEvent(new Event("levelLoaded"));
				trace(this)
				
			//xmlLoader.removeEventListener(Event.COMPLETE);
		}
		
		private function levelLoaded( ) : void  {
			trace("ended")
			//dispatchEvent(new Event(Logic.LOADED));
		
		}


	}
	
}
