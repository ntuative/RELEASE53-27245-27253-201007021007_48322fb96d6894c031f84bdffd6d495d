package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2431:int;
      
      private var var_2430:int;
      
      private var var_90:Array;
      
      private var var_224:Array;
      
      private var var_2429:int;
      
      private var var_2432:int;
      
      private var var_2433:int;
      
      private var var_2428:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_90 = new Array();
         this.var_224 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2431;
      }
      
      public function get friends() : Array
      {
         return this.var_224;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2429;
      }
      
      public function get categories() : Array
      {
         return this.var_90;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2430;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2428;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2428 = param1.readInteger();
         this.var_2429 = param1.readInteger();
         this.var_2431 = param1.readInteger();
         this.var_2433 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_90.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_224.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2430 = param1.readInteger();
         this.var_2432 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2433;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2432;
      }
   }
}
