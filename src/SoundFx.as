package
{
     /**
     * ...
     * @author Jason Seip
     */
     import org.flixel.*;
	
     public class SoundFx extends FlxState
     {
		[Embed(source="../data/sound/player_hit.mp3")] private var PlayerHitSfx:Class;
		[Embed(source="../data/sound/hit_boss.mp3")] private var BossHitSfx:Class;
		[Embed(source="../data/sound/enemy_hit.mp3")] private var EnemyHitSfx:Class;
		[Embed(source="../data/sound/powerup.mp3")] private var PowerUpSfx:Class;
		[Embed(source="../data/sound/blip.mp3")] private var BlipSoundSfx:Class;
		[Embed(source="../data/sound/powerup_long.mp3")] private var PowerUpLongSfx:Class;
		[Embed(source="../data/sound/die.mp3")] private var HonkSadSfx:Class;
		[Embed(source="../data/sound/startup.mp3")] private var IntroSoundSfx:Class;
		[Embed(source="../data/sound/win.mp3")] private var WinSfx:Class;
		
          public function SoundFx()
          {
		  }
		  
		  public function SoundPlayerHit():void{
			
				FlxG.play(PlayerHitSfx);
		  }
		  
		  public function SoundBossHit():void{
			
				FlxG.play(BossHitSfx);
		  }
		  public function SoundEnemyHit():void{
			
				FlxG.play(EnemyHitSfx);
		  }
		  public function SoundPowerUp():void{
			
				FlxG.play(PowerUpSfx);
		  }
		  public function SoundPowerUpLong():void{
			
				FlxG.play(PowerUpLongSfx);
		  }
		  public function SoundBlip():void{
			
				FlxG.play(BlipSoundSfx);
		  }
		   public function SoundHonk():void{
			
				FlxG.play(HonkSadSfx);
		  }
		  public function SoundHorns():void{
			
				FlxG.play(IntroSoundSfx);
		  }
		  public function SoundWin():void{
			
				FlxG.play(WinSfx);
		  }
		  
//////////////////		  
     }
}