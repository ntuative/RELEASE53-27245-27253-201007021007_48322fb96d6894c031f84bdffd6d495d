package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2142:int;
      
      private var var_2148:String;
      
      private var var_1670:IActionDefinition;
      
      private var var_2145:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2144:String;
      
      private var var_2147:String;
      
      private var var_1966:Boolean;
      
      private var var_2143:ColorTransform;
      
      private var var_2146:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2148 = param1;
         var_2144 = param2;
         var_2142 = param3;
         _color = param4;
         _frames = param5;
         var_1670 = param6;
         var_1966 = param7;
         var_2146 = param8;
         var_2147 = param9;
         var_2145 = param10;
         var_2143 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1966;
      }
      
      public function get partType() : String
      {
         return var_2144;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_2146;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2145;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2142;
      }
      
      public function get flippedPartType() : String
      {
         return var_2147;
      }
      
      public function get bodyPartId() : String
      {
         return var_2148;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1670;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2143;
      }
   }
}
