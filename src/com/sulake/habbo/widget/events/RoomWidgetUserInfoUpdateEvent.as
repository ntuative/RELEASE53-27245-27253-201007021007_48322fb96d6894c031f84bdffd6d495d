package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_221:String = "RWUIUE_PEER";
      
      public static const const_236:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1282:String = "BOT";
      
      public static const const_1041:int = 2;
      
      public static const const_1229:int = 0;
      
      public static const const_1044:int = 3;
       
      
      private var var_411:String = "";
      
      private var var_1282:String = "";
      
      private var var_2126:Boolean = false;
      
      private var var_1900:int = 0;
      
      private var var_2003:int = 0;
      
      private var var_2127:Boolean = false;
      
      private var var_1283:String = "";
      
      private var var_2128:Boolean = false;
      
      private var var_944:int = 0;
      
      private var var_2129:Boolean = true;
      
      private var var_1148:int = 0;
      
      private var var_2125:Boolean = false;
      
      private var var_1226:Boolean = false;
      
      private var var_2122:Boolean = false;
      
      private var var_2004:int = 0;
      
      private var var_2124:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_297:Array;
      
      private var var_1229:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1898:int = 0;
      
      private var var_2130:Boolean = false;
      
      private var var_2123:int = 0;
      
      private var var_2005:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_297 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2003;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2003 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2126;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2129;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2129 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2128 = param1;
      }
      
      public function get motto() : String
      {
         return var_1282;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2125 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1226;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1282 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2130;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2005;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1226 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2124;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2004 = param1;
      }
      
      public function get badges() : Array
      {
         return var_297;
      }
      
      public function get amIController() : Boolean
      {
         return var_2127;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2127 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2130 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2123 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2005 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1283 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2128;
      }
      
      public function set figure(param1:String) : void
      {
         var_411 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_2004;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1229;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2125;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_944 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2123;
      }
      
      public function get realName() : String
      {
         return var_1283;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
      
      public function set webID(param1:int) : void
      {
         var_1898 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_297 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2122 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2124 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_944;
      }
      
      public function get webID() : int
      {
         return var_1898;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1148 = param1;
      }
      
      public function get xp() : int
      {
         return var_1900;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2126 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1148;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2122;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1229 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1900 = param1;
      }
   }
}
