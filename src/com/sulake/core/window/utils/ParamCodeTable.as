package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_118;
         param1["bound_to_parent_rect"] = const_86;
         param1["child_window"] = const_948;
         param1["embedded_controller"] = const_339;
         param1["resize_to_accommodate_children"] = const_68;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_769;
         param1["mouse_dragging_target"] = const_226;
         param1["mouse_dragging_trigger"] = const_330;
         param1["mouse_scaling_target"] = const_255;
         param1["mouse_scaling_trigger"] = const_459;
         param1["horizontal_mouse_scaling_trigger"] = const_224;
         param1["vertical_mouse_scaling_trigger"] = const_232;
         param1["observe_parent_input_events"] = const_1021;
         param1["optimize_region_to_layout_size"] = const_384;
         param1["parent_window"] = const_921;
         param1["relative_horizontal_scale_center"] = const_168;
         param1["relative_horizontal_scale_fixed"] = const_122;
         param1["relative_horizontal_scale_move"] = const_320;
         param1["relative_horizontal_scale_strech"] = const_280;
         param1["relative_scale_center"] = const_966;
         param1["relative_scale_fixed"] = const_768;
         param1["relative_scale_move"] = const_989;
         param1["relative_scale_strech"] = const_1037;
         param1["relative_vertical_scale_center"] = const_184;
         param1["relative_vertical_scale_fixed"] = const_136;
         param1["relative_vertical_scale_move"] = const_332;
         param1["relative_vertical_scale_strech"] = const_282;
         param1["on_resize_align_left"] = const_614;
         param1["on_resize_align_right"] = const_443;
         param1["on_resize_align_center"] = const_478;
         param1["on_resize_align_top"] = const_716;
         param1["on_resize_align_bottom"] = const_408;
         param1["on_resize_align_middle"] = const_448;
         param1["on_accommodate_align_left"] = const_840;
         param1["on_accommodate_align_right"] = const_407;
         param1["on_accommodate_align_center"] = const_641;
         param1["on_accommodate_align_top"] = const_1027;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_707;
         param1["route_input_events_to_parent"] = const_470;
         param1["use_parent_graphic_context"] = const_36;
         param1["draggable_with_mouse"] = const_954;
         param1["scalable_with_mouse"] = const_914;
         param1["reflect_horizontal_resize_to_parent"] = const_435;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_274;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
