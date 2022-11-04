///P Input

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("Z"));  ///I want to change this to Z also want to add check_press for moves

//movement calc
var move = key_right - key_left;  // "Var" means it is only running that variable temporarily (once) as opposed to having it as a constant

hsp = move * walksp;

vsp = vsp + grv;



if (place_meeting(x,y+1,oWall)) and (key_jump)
{
   vsp = -7;

}


//Hrz collision

if(place_meeting(x+hsp,y,oWall))  //place_meeting is checking if 2 things are touching, if is 1 use, while is constant
{

while (!place_meeting(x+sign(hsp),y,oWall)) //adding ! makes it do the opposite - sign throws a number back based on what we give it, therefore all ways making us 1 pixel away (i move close with +4 speed, i goto wall which needed +2 pixels to get too, instead of it putting me +2 apart itll put me 1 apart, better collision basically)
{
	x = x + sign(hsp);
}
hsp = 0;
}

x = x + hsp; 

//vert collision

if(place_meeting(x,y+vsp,oWall))  
{

while (!place_meeting(x,y+sign(vsp),oWall)) 
{
	y = y + sign(vsp);
}
vsp = 0;
}

y = y + vsp;


//le anime

if (!place_meeting(x,y+1,oWall))
{
    sprite_index = sGuyFall;
	image_speed = 0; //will be defined when i get the animation frames
	if (sign(vsp) > 0) image_index = 1; else image_index = 0; //again will be defined when we get
}
else
{
    image_speed = 1;
	if (hsp == 0)
	{
	    sprite_index = sGuy
	}
	else
	{
		sprite_index = sGuyRun
	}
}


if (hsp != 0) image_xscale = sign(hsp);

