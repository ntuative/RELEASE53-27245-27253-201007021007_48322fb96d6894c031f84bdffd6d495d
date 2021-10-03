package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1104:Boolean;
      
      private var _name:String;
      
      private var var_1853:String;
      
      private var var_1103:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1853 = String(param1.@link);
         var_1103 = Boolean(parseInt(param1.@fliph));
         var_1104 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1103;
      }
      
      public function get flipV() : Boolean
      {
         return var_1104;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1853;
      }
   }
}
