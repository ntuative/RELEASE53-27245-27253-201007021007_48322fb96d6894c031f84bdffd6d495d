package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1808:Array;
      
      private var var_1809:String;
      
      private var var_1810:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1809 = param1;
         var_1808 = param2;
         var_1810 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1809;
      }
      
      public function get yieldList() : Array
      {
         return var_1808;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1810;
      }
   }
}
