
move=-keyboard_check(vk_left)+keyboard_check(vk_right)

if move=1 or move=-1
{
	if spd<13
	{
	spd=spd+0.1+spd*0.07
	}
}
else
{
	spd=0	
}

hspd=move*spd

if hspd!=0{
	hspddepois=hspd}


if move=0{
	hspddepois=lerp(hspddepois,0,0.09)}

velocidadetotal=hspd+hspddepois

if place_meeting(x+velocidadetotal,y,obj_chao)
{
	while not place_meeting(x+sign(velocidadetotal),y,obj_chao)
	{
	x+=sign(velocidadetotal)	
	}
	velocidadetotal=0
}

x+=velocidadetotal

distanciapercorrida=x-xprevious
if distanciapercorrida<0
{
	distanciapercorrida=distanciapercorrida*-1	
}

velocidadeporsegundo=(distanciapercorrida*60)*0.02


