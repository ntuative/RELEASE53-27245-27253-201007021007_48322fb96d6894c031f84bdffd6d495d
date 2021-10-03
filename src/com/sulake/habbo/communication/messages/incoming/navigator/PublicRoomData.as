package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2010:int;
      
      private var var_2008:String;
      
      private var var_2011:int;
      
      private var _disposed:Boolean;
      
      private var var_2009:int;
      
      private var var_2012:String;
      
      private var var_1438:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2012 = param1.readString();
         var_2010 = param1.readInteger();
         var_2011 = param1.readInteger();
         var_2008 = param1.readString();
         var_2009 = param1.readInteger();
         var_1438 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2009;
      }
      
      public function get worldId() : int
      {
         return var_2011;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_2012;
      }
      
      public function get unitPort() : int
      {
         return var_2010;
      }
      
      public function get castLibs() : String
      {
         return var_2008;
      }
      
      public function get nodeId() : int
      {
         return var_1438;
      }
   }
}
