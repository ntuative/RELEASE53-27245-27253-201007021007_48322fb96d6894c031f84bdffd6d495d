package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_411:String;
      
      private var var_1284:String;
      
      private var var_1282:String;
      
      private var var_1281:int;
      
      private var var_607:int;
      
      private var var_1283:String;
      
      private var _name:String;
      
      private var var_1285:Boolean;
      
      private var var_750:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_607 = param1.readInteger();
         this.var_750 = param1.readBoolean();
         this.var_1285 = param1.readBoolean();
         this.var_411 = param1.readString();
         this.var_1281 = param1.readInteger();
         this.var_1282 = param1.readString();
         this.var_1284 = param1.readString();
         this.var_1283 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_607;
      }
      
      public function get realName() : String
      {
         return var_1283;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1282;
      }
      
      public function get categoryId() : int
      {
         return var_1281;
      }
      
      public function get online() : Boolean
      {
         return var_750;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1285;
      }
      
      public function get lastAccess() : String
      {
         return var_1284;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
   }
}
