package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1005:String = "RWOCM_CLUB_MAIN";
      
      public static const const_718:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1944:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_718);
         var_1944 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1944;
      }
   }
}
