package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1884:int = 0;
      
      private var var_1535:int = 0;
      
      private var var_1882:Boolean = false;
      
      private var var_1880:int = 0;
      
      private var var_1881:int = 0;
      
      private var var_1536:int = 0;
      
      private var var_1883:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1535;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1535 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1882 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1883 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1535 > 0 || var_1536 > 0;
      }
      
      public function get credits() : int
      {
         return var_1880;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1881 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1536;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1882;
      }
      
      public function get pastClubDays() : int
      {
         return var_1883;
      }
      
      public function get pastVipDays() : int
      {
         return var_1881;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1884 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1884;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1536 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1880 = param1;
      }
   }
}
