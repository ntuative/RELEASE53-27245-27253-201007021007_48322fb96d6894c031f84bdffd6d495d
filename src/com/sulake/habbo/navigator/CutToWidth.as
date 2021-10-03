package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_422:int;
      
      private var var_186:String;
      
      private var var_207:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_186 = param1;
         var_207 = param2;
         var_422 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_207.text = var_186.substring(0,param1) + "...";
         return var_207.textWidth > var_422;
      }
   }
}
