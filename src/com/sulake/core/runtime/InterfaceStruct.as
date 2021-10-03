package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_447:uint;
      
      private var var_1130:IUnknown;
      
      private var var_1366:String;
      
      private var var_1129:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1129 = param1;
         var_1366 = getQualifiedClassName(var_1129);
         var_1130 = param2;
         var_447 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1129;
      }
      
      public function get disposed() : Boolean
      {
         return var_1130 == null;
      }
      
      public function get references() : uint
      {
         return var_447;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_447) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1130;
      }
      
      public function get iis() : String
      {
         return var_1366;
      }
      
      public function reserve() : uint
      {
         return ++var_447;
      }
      
      public function dispose() : void
      {
         var_1129 = null;
         var_1366 = null;
         var_1130 = null;
         var_447 = 0;
      }
   }
}
