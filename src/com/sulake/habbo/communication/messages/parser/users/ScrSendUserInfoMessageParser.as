package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1200:int = 2;
      
      public static const const_1600:int = 1;
       
      
      private var var_2298:int;
      
      private var var_2300:int;
      
      private var var_1882:Boolean;
      
      private var var_2296:int;
      
      private var var_1359:String;
      
      private var var_2297:Boolean;
      
      private var var_1881:int;
      
      private var var_2299:int;
      
      private var var_1883:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2300;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1882;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2299;
      }
      
      public function get memberPeriods() : int
      {
         return var_2296;
      }
      
      public function get productName() : String
      {
         return var_1359;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2297;
      }
      
      public function get responseType() : int
      {
         return var_2298;
      }
      
      public function get pastClubDays() : int
      {
         return var_1883;
      }
      
      public function get pastVipDays() : int
      {
         return var_1881;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1359 = param1.readString();
         var_2300 = param1.readInteger();
         var_2296 = param1.readInteger();
         var_2299 = param1.readInteger();
         var_2298 = param1.readInteger();
         var_2297 = param1.readBoolean();
         var_1882 = param1.readBoolean();
         var_1883 = param1.readInteger();
         var_1881 = param1.readInteger();
         return true;
      }
   }
}
