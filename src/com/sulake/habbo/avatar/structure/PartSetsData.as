package com.sulake.habbo.avatar.structure
{
   import com.sulake.habbo.avatar.actions.ActionDefinition;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.parts.ActivePartSet;
   import com.sulake.habbo.avatar.structure.parts.PartDefinition;
   import flash.utils.Dictionary;
   
   public class PartSetsData implements IStructureData
   {
       
      
      private var var_176:Dictionary;
      
      private var var_967:Dictionary;
      
      public function PartSetsData()
      {
         super();
         var_176 = new Dictionary();
         var_967 = new Dictionary();
      }
      
      public function get parts() : Dictionary
      {
         return var_176;
      }
      
      public function getActiveParts(param1:IActionDefinition) : Array
      {
         var _loc2_:ActivePartSet = var_967[param1.activePartSet];
         if(_loc2_ != null)
         {
            return _loc2_.parts;
         }
         return [];
      }
      
      public function addPartDefinition(param1:XML) : PartDefinition
      {
         var _loc2_:String = String(param1["set-type"]);
         if(true)
         {
            var_176[_loc2_] = new PartDefinition(param1);
         }
         return var_176[_loc2_];
      }
      
      public function get activePartSets() : Dictionary
      {
         return var_967;
      }
      
      public function parse(param1:XML) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return false;
         }
         for each(_loc2_ in param1.partSet[0].part)
         {
            var_176[String(_loc2_["set-type"])] = new PartDefinition(_loc2_);
         }
         for each(_loc3_ in param1.activePartSet)
         {
            var_967[String(_loc3_.@id)] = new ActivePartSet(_loc3_);
         }
         return true;
      }
      
      public function appendXML(param1:XML) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return false;
         }
         for each(_loc2_ in param1.partSet[0].part)
         {
            var_176[String(_loc2_["set-type"])] = new PartDefinition(_loc2_);
         }
         for each(_loc3_ in param1.activePartSet)
         {
            var_967[String(_loc3_.@id)] = new ActivePartSet(_loc3_);
         }
         return false;
      }
      
      public function getActivePartSet(param1:ActionDefinition) : ActivePartSet
      {
         return var_967[param1.activePartSet] as ActivePartSet;
      }
      
      public function getPartDefinition(param1:String) : PartDefinition
      {
         return var_176[param1] as PartDefinition;
      }
   }
}
