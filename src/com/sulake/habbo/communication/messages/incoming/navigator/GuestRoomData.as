package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1917:int;
      
      private var var_1918:String;
      
      private var var_1915:int;
      
      private var var_1919:int;
      
      private var var_727:Boolean;
      
      private var var_1914:Boolean;
      
      private var var_410:int;
      
      private var var_1336:String;
      
      private var var_1916:int;
      
      private var var_1281:int;
      
      private var _ownerName:String;
      
      private var var_734:String;
      
      private var var_1912:int;
      
      private var var_1913:RoomThumbnailData;
      
      private var var_1911:Boolean;
      
      private var var_681:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_681 = new Array();
         super();
         var_410 = param1.readInteger();
         var_727 = param1.readBoolean();
         var_734 = param1.readString();
         _ownerName = param1.readString();
         var_1916 = param1.readInteger();
         var_1917 = param1.readInteger();
         var_1912 = param1.readInteger();
         var_1336 = param1.readString();
         var_1915 = param1.readInteger();
         var_1911 = param1.readBoolean();
         var_1919 = param1.readInteger();
         var_1281 = param1.readInteger();
         var_1918 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_681.push(_loc4_);
            _loc3_++;
         }
         var_1913 = new RoomThumbnailData(param1);
         var_1914 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1912;
      }
      
      public function get roomName() : String
      {
         return var_734;
      }
      
      public function get userCount() : int
      {
         return var_1917;
      }
      
      public function get score() : int
      {
         return var_1919;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1918;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1911;
      }
      
      public function get tags() : Array
      {
         return var_681;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1914;
      }
      
      public function get event() : Boolean
      {
         return var_727;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_681 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1281;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1915;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1913;
      }
      
      public function get doorMode() : int
      {
         return var_1916;
      }
      
      public function get flatId() : int
      {
         return var_410;
      }
      
      public function get description() : String
      {
         return var_1336;
      }
   }
}
