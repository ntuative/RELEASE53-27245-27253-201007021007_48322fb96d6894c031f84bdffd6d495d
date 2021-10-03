package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_186:String;
      
      private var var_421:int;
      
      private var var_207:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_186 = param1;
         var_207 = param2;
         var_421 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_207.text = var_186.substring(0,param1) + "...";
         return var_207.textHeight > var_421;
      }
   }
}
