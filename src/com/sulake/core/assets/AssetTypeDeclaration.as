package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2214:Class;
      
      private var var_2215:Class;
      
      private var var_2213:String;
      
      private var var_1388:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2213 = param1;
         var_2215 = param2;
         var_2214 = param3;
         if(rest == null)
         {
            var_1388 = new Array();
         }
         else
         {
            var_1388 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2214;
      }
      
      public function get assetClass() : Class
      {
         return var_2215;
      }
      
      public function get mimeType() : String
      {
         return var_2213;
      }
      
      public function get fileTypes() : Array
      {
         return var_1388;
      }
   }
}
