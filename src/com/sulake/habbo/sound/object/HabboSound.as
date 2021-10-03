package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1042:SoundChannel = null;
      
      private var var_851:Boolean;
      
      private var var_1043:Sound = null;
      
      private var var_711:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1043 = param1;
         var_1043.addEventListener(Event.COMPLETE,onComplete);
         var_711 = 1;
         var_851 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_851;
      }
      
      public function stop() : Boolean
      {
         var_1042.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_851 = false;
         var_1042 = var_1043.play(0);
         this.volume = var_711;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_711;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1042.position;
      }
      
      public function get length() : Number
      {
         return var_1043.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_711 = param1;
         if(var_1042 != null)
         {
            var_1042.soundTransform = new SoundTransform(var_711);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_851 = true;
      }
   }
}
