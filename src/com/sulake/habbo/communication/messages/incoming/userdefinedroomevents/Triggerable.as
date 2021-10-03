package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_1302:String;
      
      private var var_1669:String;
      
      private var var_2317:int;
      
      private var var_2316:int;
      
      private var var_319:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         super();
         var_319 = param1.readInteger();
         var_1302 = param1.readString();
         var_1669 = param1.readString();
         var_2316 = param1.readInteger();
         var_2317 = param1.readInteger();
      }
      
      public function get params() : String
      {
         return var_1669;
      }
      
      public function get cooldownPeriod() : int
      {
         return var_2317;
      }
      
      public function get performCount() : int
      {
         return var_2316;
      }
      
      public function get stuffId() : int
      {
         return var_319;
      }
      
      public function get stuffName() : String
      {
         return var_1302;
      }
   }
}
