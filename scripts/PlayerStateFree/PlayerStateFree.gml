function PlayerStateFree(){
	
	//movement calc
	
	hsp = move * walksp;

	vsp = vsp + grv;	
	
	//le anime
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sGuyPistolFall;
		image_speed = 0; //will be defined when i get the animation frames
		if (sign(vsp) > 0) image_index = 1; else image_index = 0; //again will be defined when we get
	}
	else
	{
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = sGuyPistol
		}
		else
		{
			sprite_index = sGuyPistolRun
		}
	}

	if (hsp != 0) image_xscale = sign(hsp);
	
	
	
}
