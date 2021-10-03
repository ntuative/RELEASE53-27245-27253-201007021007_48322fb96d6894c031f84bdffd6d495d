package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2032:String;
      
      private var var_410:int;
      
      private var var_2259:String;
      
      private var var_2262:String;
      
      private var var_2258:int;
      
      private var var_2260:String;
      
      private var var_2261:int;
      
      private var var_681:Array;
      
      private var var_1138:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_681 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1138 = false;
            return;
         }
         this.var_1138 = true;
         var_2258 = int(_loc2_);
         var_2259 = param1.readString();
         var_410 = int(param1.readString());
         var_2261 = param1.readInteger();
         var_2032 = param1.readString();
         var_2262 = param1.readString();
         var_2260 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_681.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2261;
      }
      
      public function get eventName() : String
      {
         return var_2032;
      }
      
      public function get eventDescription() : String
      {
         return var_2262;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2259;
      }
      
      public function get tags() : Array
      {
         return var_681;
      }
      
      public function get creationTime() : String
      {
         return var_2260;
      }
      
      public function get exists() : Boolean
      {
         return var_1138;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2258;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_410;
      }
   }
}
