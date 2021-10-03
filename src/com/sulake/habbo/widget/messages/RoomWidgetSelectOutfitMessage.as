package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_859:String = "select_outfit";
       
      
      private var var_2044:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_859);
         var_2044 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2044;
      }
   }
}
