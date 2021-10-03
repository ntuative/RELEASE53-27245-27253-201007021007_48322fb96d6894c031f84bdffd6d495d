package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class UserDefinedRoomEvent implements IDisposable
   {
       
      
      private var var_1089:Array;
      
      private var _disposed:Boolean;
      
      private var var_1986:int;
      
      private var _id:int;
      
      private var var_243:Array;
      
      public function UserDefinedRoomEvent(param1:IMessageDataWrapper)
      {
         var_243 = new Array();
         var_1089 = new Array();
         super();
         _id = param1.readInteger();
         var_1986 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1089.push(new TriggerDefinition(param1));
            _loc3_++;
         }
         _loc2_ = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            var_243.push(new ActionDefinition(param1));
            _loc3_++;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get triggers() : Array
      {
         return var_1089;
      }
      
      public function get propagation() : int
      {
         return var_1986;
      }
      
      public function get actions() : Array
      {
         return var_243;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_243 = null;
         var_1089 = null;
      }
   }
}
