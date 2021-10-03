package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_734;
         param1["bitmap"] = const_752;
         param1["border"] = const_594;
         param1["border_notify"] = const_1365;
         param1["button"] = const_426;
         param1["button_thick"] = const_742;
         param1["button_icon"] = const_1428;
         param1["button_group_left"] = const_739;
         param1["button_group_center"] = const_688;
         param1["button_group_right"] = const_671;
         param1["canvas"] = const_691;
         param1["checkbox"] = const_737;
         param1["closebutton"] = const_841;
         param1["container"] = const_314;
         param1["container_button"] = const_620;
         param1["display_object_wrapper"] = const_725;
         param1["dropmenu"] = const_439;
         param1["dropmenu_item"] = const_450;
         param1["frame"] = const_353;
         param1["frame_notify"] = const_1332;
         param1["header"] = const_604;
         param1["icon"] = const_889;
         param1["itemgrid"] = const_977;
         param1["itemgrid_horizontal"] = const_454;
         param1["itemgrid_vertical"] = const_753;
         param1["itemlist"] = const_846;
         param1["itemlist_horizontal"] = const_328;
         param1["itemlist_vertical"] = const_354;
         param1["maximizebox"] = const_1409;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1398;
         param1["submenu"] = const_1048;
         param1["minimizebox"] = const_1230;
         param1["notify"] = const_1272;
         param1["null"] = const_765;
         param1["password"] = const_678;
         param1["radiobutton"] = const_733;
         param1["region"] = const_402;
         param1["restorebox"] = const_1288;
         param1["scaler"] = const_598;
         param1["scaler_horizontal"] = const_1194;
         param1["scaler_vertical"] = const_1354;
         param1["scrollbar_horizontal"] = const_481;
         param1["scrollbar_vertical"] = const_564;
         param1["scrollbar_slider_button_up"] = const_945;
         param1["scrollbar_slider_button_down"] = const_886;
         param1["scrollbar_slider_button_left"] = const_958;
         param1["scrollbar_slider_button_right"] = const_973;
         param1["scrollbar_slider_bar_horizontal"] = const_873;
         param1["scrollbar_slider_bar_vertical"] = const_1053;
         param1["scrollbar_slider_track_horizontal"] = const_866;
         param1["scrollbar_slider_track_vertical"] = const_893;
         param1["scrollable_itemlist"] = const_1255;
         param1["scrollable_itemlist_vertical"] = const_509;
         param1["scrollable_itemlist_horizontal"] = const_927;
         param1["selector"] = const_713;
         param1["selector_list"] = const_576;
         param1["submenu"] = const_1048;
         param1["tab_button"] = const_593;
         param1["tab_container_button"] = const_877;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_906;
         param1["tab_selector"] = const_590;
         param1["text"] = const_754;
         param1["input"] = const_736;
         param1["toolbar"] = const_1433;
         param1["tooltip"] = const_308;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
