right=keyboard_check(vk_right)||keyboard_check(ord("d"))||keyboard_check(ord("D"));
left=keyboard_check(vk_left)||keyboard_check(ord("a"))||keyboard_check(ord("A"));
up=keyboard_check(vk_up)||keyboard_check(ord("w"))||keyboard_check(ord("W"));
down=keyboard_check(vk_down)||keyboard_check(ord("s"))||keyboard_check(ord("S"));
sprint=keyboard_check(vk_shift);

xspd=(right-left)*move_spd;
yspd=(down-up)*move_spd;

if sprint==true
  {
	  move_spd=2;
  }
  
  if sprint == not true
   {
	   move_spd=1;
   }
//pause
if instance_exists(oPauser)
{
	xspd=0;
	yspd=0;
}

//set_sprite
mask_index = sprite[DOWN];
if yspd == 0
 {
   if xspd > 0  { face = RIGHT };
   if xspd < 0 { face = LEFT };
 }
 if xspd >0 && face=LEFT {face=RIGHT};
  if xspd <0 && face=RIGHT {face=LEFT};
  
 if xspd == 0
 {
  if yspd > 0 { face = DOWN };
  if yspd < 0 { face = UP };
 }
 if yspd >0 && face=UP {face=DOWN};
  if xspd <0 && face=DOWN {face=UP};
sprite_index = sprite[face];

//collisons
if place_meeting(x+xspd	,y,oWall)==true
                {
					xspd=0;
				}
				
if place_meeting(x	,y+yspd,oWall)==true
                {
					yspd=0;
				}


x +=xspd;
y+=yspd;



//animate
if xspd==0 && yspd == 0
    {
		 image_index =0;
	}
	
//depth
depth= -bbox_bottom;