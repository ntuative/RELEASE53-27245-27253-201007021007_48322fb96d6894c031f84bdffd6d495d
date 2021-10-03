package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var var_1997:Boolean;
      
      private var var_2001:Boolean;
      
      private var var_2000:Array;
      
      private var var_1914:Boolean;
      
      private var var_1336:String;
      
      private var var_1998:int;
      
      private var var_1999:Boolean;
      
      private var var_1916:int;
      
      private var var_1281:int;
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var _password:String;
      
      private var var_681:Array;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2001 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1998;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1998 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_1999 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_681;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1914;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2000 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_681 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1997;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2001;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function get categoryId() : int
      {
         return var_1281;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1914 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_1999;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2000;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1916 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1997 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1916;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1281 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1336 = param1;
      }
      
      public function get description() : String
      {
         return var_1336;
      }
   }
}
