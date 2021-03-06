package
{
	
	/**
	 * ...
	 * @author emedine
	 */
	import flash.utils.ByteArray;
	import org.flixel.*;
	import flash.net.*;
	import flash.events.*;
	// import flash.display.Sprite;
	import hexagonstar.util.debug.Debug;
	
	public class Obstac extends FlxGroup
	{
		
		private var numBoxes:Number = 1;
		private var numBorder:Number = 11;
		private var theRock:Rock;
		
		/// game board info
		public var theWidth:Number = FlxG.width;
		public var theHeight:Number = FlxG.height;
		
		/// LEVEL IDS
		private var theLevelID:Number = 0;
		/// xml for the game data
		private var xmlData:XML;
		
		[Embed(source = '../data/worldMapData.xml', mimeType="application/octet-stream")]
		public static const WorldMap:Class;
		
		//private var theXMLPath:String = "../data/worldMapData.xml";
		
		private var theXPos:XMLList;
		private var theYPos:XMLList;
		private var firstNames:XMLList;
		
		public function Obstac():void
		{

			loadObstacData();
		}
		
		 public function loadObstacData():void {
			var data:ByteArray = (new WorldMap) as ByteArray;
			var stringData:String = data.readUTFBytes(data.length);
			xmlData = new XML(stringData);
			
			numBoxes  = xmlData.worldData[theLevelID].block.length();
			
			theXPos = xmlData.worldData[theLevelID].block.@xPos;
			theYPos = xmlData.worldData[theLevelID].block.@yPos;
			/// iterate thru the xml
			/// position the block according to the xml
			for(var i:int = 0; i<numBoxes; i++){

				Debug.trace("x: " + i + " : " + theXPos[i]);
				theRock = new Rock();
				theRock.immovable = true;
	
				theRock.x = theXPos[i];
				theRock.y = theYPos[i];
				add(theRock);
			}
		}
		

		/////
	}
}
