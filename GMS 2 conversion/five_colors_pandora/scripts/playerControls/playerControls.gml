function playerControls() {
	if (!instance_exists(oFreezeInput))
	{
	  kRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	  kLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	  kUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	  kDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	  kJump = keyboard_check(vk_up) || keyboard_check(ord("W"));
	  kMorph = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("Z"));
	}
	else
	{
	  kRight = 0;
	  kLeft = 0;
	  kUp = 0;
	  kDown = 0;
	  kJump = 0;
	  kMorphBalloon = 0;
	  kMorphStick = 0;
	  kMorph = 0;
	}

	//Facing
	if (kRight)
	  facing = 1;
	if (kLeft)
	  facing = -1;
  
  
	//Cycle morph  
	if (kMorph)
	{
	  playerMorph();
	}



}
