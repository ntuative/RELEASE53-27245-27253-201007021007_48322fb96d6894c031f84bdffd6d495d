package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_411:String = "";
      
      private var var_1899:String = "";
      
      private var var_1896:int = 0;
      
      private var var_1900:int = 0;
      
      private var _type:int = 0;
      
      private var var_1897:String = "";
      
      private var var_605:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1898:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1896 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1897 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_411 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_605 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1896;
      }
      
      public function set webID(param1:int) : void
      {
         var_1898 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1897;
      }
      
      public function set custom(param1:String) : void
      {
         var_1899 = param1;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
      
      public function get sex() : String
      {
         return var_605;
      }
      
      public function get custom() : String
      {
         return var_1899;
      }
      
      public function get webID() : int
      {
         return var_1898;
      }
      
      public function set xp(param1:int) : void
      {
         var_1900 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1900;
      }
   }
}
