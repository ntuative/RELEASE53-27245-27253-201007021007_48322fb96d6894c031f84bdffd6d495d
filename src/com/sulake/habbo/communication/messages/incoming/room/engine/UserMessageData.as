package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1438:String = "F";
      
      public static const const_1001:String = "M";
       
      
      private var var_85:Number = 0;
      
      private var var_411:String = "";
      
      private var var_1894:int = 0;
      
      private var var_1899:String = "";
      
      private var var_1896:int = 0;
      
      private var var_1900:int = 0;
      
      private var var_1897:String = "";
      
      private var var_605:String = "";
      
      private var _id:int = 0;
      
      private var var_199:Boolean = false;
      
      private var var_252:int = 0;
      
      private var var_1895:String = "";
      
      private var _name:String = "";
      
      private var var_1898:int = 0;
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_252;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_199)
         {
            var_252 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_199)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1894;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_199)
         {
            var_1896 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1895;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_199)
         {
            var_1897 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_199)
         {
            var_1895 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_199)
         {
            var_1900 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_199)
         {
            var_411 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_199)
         {
            var_1894 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_199)
         {
            var_605 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1896;
      }
      
      public function get groupID() : String
      {
         return var_1897;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_199)
         {
            var_1898 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_199)
         {
            var_1899 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_199 = true;
      }
      
      public function get sex() : String
      {
         return var_605;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
      
      public function get webID() : int
      {
         return var_1898;
      }
      
      public function get custom() : String
      {
         return var_1899;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_199)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_199)
         {
            var_84 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_199)
         {
            var_85 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1900;
      }
   }
}
