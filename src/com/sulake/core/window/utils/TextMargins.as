package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_854:int;
      
      private var _right:int;
      
      private var var_853:int;
      
      private var var_855:int;
      
      private var var_192:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_853 = param1;
         var_855 = param2;
         _right = param3;
         var_854 = param4;
         var_192 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_854 = param1;
         var_192(this);
      }
      
      public function get left() : int
      {
         return var_853;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_853 == 0 && _right == 0 && var_855 == 0 && var_854 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_855 = param1;
         var_192(this);
      }
      
      public function get top() : int
      {
         return var_855;
      }
      
      public function set left(param1:int) : void
      {
         var_853 = param1;
         var_192(this);
      }
      
      public function get bottom() : int
      {
         return var_854;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_853,var_855,_right,var_854,param1);
      }
      
      public function dispose() : void
      {
         var_192 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_192(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
