package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2379:Boolean = false;
      
      private var var_2378:int = 0;
      
      private var var_1535:int = 0;
      
      private var var_2380:int = 0;
      
      private var var_1882:Boolean = false;
      
      private var var_1496:int = 0;
      
      private var var_1536:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1496 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2378;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2379;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2379 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1882;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2378 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1535 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1496;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1882 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2380 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1535;
      }
      
      public function get pixelBalance() : int
      {
         return var_2380;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1536 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1536;
      }
   }
}
