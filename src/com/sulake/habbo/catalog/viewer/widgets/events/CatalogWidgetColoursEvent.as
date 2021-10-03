package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1450:Array;
      
      private var var_2293:String;
      
      private var var_2295:String;
      
      private var var_2294:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1450 = param1;
         var_2293 = param2;
         var_2295 = param3;
         var_2294 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1450;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_2293;
      }
      
      public function get colourAssetName() : String
      {
         return var_2295;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_2294;
      }
   }
}
