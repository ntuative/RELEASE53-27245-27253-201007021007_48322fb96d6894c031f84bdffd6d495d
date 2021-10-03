package com.sulake.habbo.avatar.structure.figure
{
   public class FigurePartSet implements IFigurePartSet
   {
       
      
      private var _id:int;
      
      private var _type:String;
      
      private var var_607:String;
      
      private var var_176:Array;
      
      private var var_1077:Array;
      
      private var var_1862:int;
      
      private var var_1966:Boolean;
      
      private var var_1908:Boolean;
      
      public function FigurePartSet(param1:XML, param2:String)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         super();
         _type = param2;
         _id = parseInt(param1.@id);
         var_607 = String(param1.@gender);
         var_1862 = parseInt(param1.@club);
         var_1966 = Boolean(parseInt(param1.@colorable));
         var_1908 = Boolean(parseInt(param1.@selectable));
         var_176 = new Array();
         var_1077 = new Array();
         for each(_loc3_ in param1.part)
         {
            _loc5_ = new FigurePart(_loc3_);
            _loc6_ = indexOfPartType(_loc5_);
            if(_loc6_ != -1)
            {
               var_176.splice(_loc6_,0,_loc5_);
            }
            else
            {
               var_176.push(_loc5_);
            }
         }
         for each(_loc4_ in param1.hiddenlayers.layer)
         {
            var_1077.push(String(_loc4_.@parttype));
         }
      }
      
      public function get gender() : String
      {
         return var_607;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1966;
      }
      
      public function get hiddenLayers() : Array
      {
         return var_1077;
      }
      
      public function get parts() : Array
      {
         return var_176;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_176)
         {
            _loc1_.dispose();
         }
         var_176 = null;
         var_1077 = null;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1908;
      }
      
      public function getPart(param1:String, param2:int) : IFigurePart
      {
         var _loc3_:* = null;
         for each(_loc3_ in var_176)
         {
            if(_loc3_.type == param1 && _loc3_.id == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function get clubLevel() : int
      {
         return var_1862;
      }
      
      private function indexOfPartType(param1:FigurePart) : int
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < var_176.length)
         {
            _loc3_ = var_176[_loc2_];
            if(_loc3_.type == param1.type && _loc3_.index < param1.index)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
   }
}
