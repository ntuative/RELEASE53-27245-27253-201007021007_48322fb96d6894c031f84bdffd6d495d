package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_862:String = "inventory_badges";
      
      public static const const_1187:String = "inventory_clothes";
      
      public static const const_1322:String = "inventory_furniture";
      
      public static const const_585:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_942:String = "inventory_effects";
       
      
      private var var_2180:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_585);
         var_2180 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2180;
      }
   }
}
