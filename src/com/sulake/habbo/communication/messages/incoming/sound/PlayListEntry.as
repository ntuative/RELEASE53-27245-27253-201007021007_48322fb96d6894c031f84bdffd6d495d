package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1770:int;
      
      private var var_2089:int = 0;
      
      private var var_2086:String;
      
      private var var_2087:int;
      
      private var var_2088:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1770 = param1;
         var_2087 = param2;
         var_2088 = param3;
         var_2086 = param4;
      }
      
      public function get length() : int
      {
         return var_2087;
      }
      
      public function get name() : String
      {
         return var_2088;
      }
      
      public function get creator() : String
      {
         return var_2086;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2089;
      }
      
      public function get id() : int
      {
         return var_1770;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2089 = param1;
      }
   }
}
