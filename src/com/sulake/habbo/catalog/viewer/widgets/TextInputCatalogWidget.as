package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.TextInputEvent;
   
   public class TextInputCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1071:ITextFieldWindow;
      
      public function TextInputCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         var_1071 = _window.findChildByName("input_text") as ITextFieldWindow;
         if(var_1071 != null)
         {
            var_1071.addEventListener(WindowKeyboardEvent.const_592,onKey);
         }
      }
      
      private function onKey(param1:WindowKeyboardEvent) : void
      {
         if(var_1071 == null)
         {
            return;
         }
         events.dispatchEvent(new TextInputEvent(var_1071.text));
      }
   }
}
