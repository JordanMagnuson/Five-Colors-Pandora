#define scr_resize_stop_drawing
//scr_resize_stop_drawing();
//Call this script if you're done with the drawing while the game is frozen by a while-loop.
//This doesn't replace screen_refresh();, you stil have to call it after this.

if(variable_global_exists("screencontroller"))
{
if(surface_exists(global.resizesurface))
{
with(global.screencontroller)
{
surface_reset_target();
event_user(0);
}}
}

#define scr_resize_start_drawing
//scr_resize_start_drawing();
//Call this script if you're drawing something while the game is frozen by a while loop
//If you use scr_screen_redraw();, call if BEFORE calling this script!

if(variable_global_exists("screencontroller"))
{
if(surface_exists(global.resizesurface))
surface_set_target(global.resizesurface);
}

#define scr_screen_redraw
//scr_screen_redraw();
//Always use this instead of screen_redraw();

if(variable_global_exists("screencontroller"))
{
if(instance_exists(global.screencontroller))
{
with(global.screencontroller)
{
if(surface_exists(global.resizesurface))
{
surface_set_target(global.resizesurface);
screen_redraw();
surface_reset_target();
event_user(1);
}
else
screen_redraw();
}
}
else
screen_redraw();
}
else
screen_redraw();
#define scr_toggle_resize
//scr_toggle_resize(width,height);
//Toggles the resizing
//Always call scr_room_goto_resize(room,width,height,wport,hport); after this

if(variable_global_exists("screencontroller"))
{
if(surface_exists(global.resizesurface))
surface_free(global.resizesurface);
if(instance_exists(global.screencontroller))
{
with(global.screencontroller)
{
instance_destroy();
set_automatic_draw(true);
}
}
else
instance_create(0,0,global.screencontroller);
}
else
scr_resize_init(argument0,argument1);

#define scr_resize_init_gm7
//scr_resize_init(viewwidth,viewheight);
//use this if you work with gm7

if(!variable_global_exists("screencontroller"))
{
var troom,width,height,wport,hport,interpol;
width=argument0;
height=argument1;
interpol=0;
wport=width-1;
hport=height-1;

global.resizesurface=surface_create(width,height);

var str;

global.screencontroller=object_add();

object_set_persistent(global.screencontroller,1);

str="width="+string(width)+"height="+string(height)+"wport="+string(wport)+"hport="+string(hport);
object_event_add(global.screencontroller,ev_create,0,str);

str="set_automatic_draw(false);"
str+="view_wport=width;view_hport=height;";
object_event_add(global.screencontroller,ev_other,ev_room_start,str);

str="if(surface_exists(global.resizesurface)){"
str+="surface_set_target(global.resizesurface);"
str+="screen_redraw();"
str+="surface_reset_target();"
str+="event_user(1);"
str+="screen_refresh();"
str+="}"
str+="else{"
str+="set_automatic_draw(true);"
str+="view_wport=wport;view_hport=hport;";
str+="}";
object_event_add(global.screencontroller,ev_step,ev_step_end,str);

str="texture_set_interpolation(0);"
//str+="draw_clear_alpha(c_black,0);"
str+="draw_surface_stretched(global.resizesurface,0,0,hport,wport);";
str+="texture_set_interpolation("+string(interpol)+");"
object_event_add(global.screencontroller,ev_other,ev_user0,str);

str="texture_set_interpolation(0);"
//str+="draw_clear_alpha(c_black,0);"
str+="draw_surface_stretched(global.resizesurface,0,0,wport,hport);";
str+="texture_set_interpolation("+string(interpol)+");"

object_event_add(global.screencontroller,ev_other,ev_user1,str);


instance_create(0,0,global.screencontroller);
}
#define scr_texture_set_interpolation
//scr_texture_set_interpolation(interpolation);
//always use this instead of texture_set_interpolation();

texture_set_interpolation(argument0);
if(variable_global_exists("screencontroller"))
{
if(instance_exists(global.screencontroller))
{
global.screencontroller.interpol=argument0;
}
}
#define scr_resize_init
//scr_resize_init(viewwidth,viewheight);
//use this if you work with gm6

if(!variable_global_exists("screencontroller"))
{
var troom,width,height,wport,hport,interpol;
width=argument0;
height=argument1;
interpol=0;
wport=width-1;
hport=height-1;

global.resizesurface=surface_create(width,height);

var str;

global.screencontroller=object_add();

object_set_persistent(global.screencontroller,1);

str="width="+string(width)+"height="+string(height)+"wport="+string(wport)+"hport="+string(hport)+";interpol="+string(interpol);
object_event_add(global.screencontroller,ev_create,0,str);

str="set_automatic_draw(false);"
str+="view_wport=width;view_hport=height;";
object_event_add(global.screencontroller,ev_other,ev_room_start,str);

str="if(surface_exists(global.resizesurface)){"
str+="surface_set_target(global.resizesurface);"
str+="screen_redraw();"
str+="surface_reset_target();"
str+="event_user(1);"
str+="screen_refresh();"
str+="}"
str+="else{"
str+="set_automatic_draw(true);"
str+="view_wport=wport;view_hport=hport;";
str+="}";
object_event_add(global.screencontroller,ev_step,ev_step_end,str);

str="texture_set_interpolation(0);"
//str+="draw_clear_alpha(c_black,0);"
str+="var xx,yy;"
str+="xx=(wport+1)/display_get_width();yy=(hport+1)/display_get_height();"
str+="draw_surface_stretched(global.resizesurface,xx,yy,width*(xx),height*(yy));";
str+="texture_set_interpolation(interpol);"
object_event_add(global.screencontroller,ev_other,ev_user0,str);

str="texture_set_interpolation(0);"
//str+="draw_clear_alpha(c_black,0);"
str+="draw_surface_stretched(global.resizesurface,0,0,wport*(wport/display_get_width()),hport*(hport/display_get_height()));";
str+="texture_set_interpolation(interpol);"

object_event_add(global.screencontroller,ev_other,ev_user1,str);


instance_create(0,0,global.screencontroller);
}
#define scr_room_goto_resize
//scr_room_goto_resize(room,width,height,wport,hport);
//ALWAYS use this instead of room_goto();!
var troom,width,height,wport,hport;
troom=argument0;
width=argument1;
height=argument2;
wport=argument3-1;
hport=argument4-1;

if(variable_global_exists("screencontroller"))
{
if(instance_exists(global.screencontroller))
{
if(surface_exists(global.resizesurface))
surface_free(global.resizesurface);

global.resizesurface=surface_create(width,height);

if(surface_exists(global.resizesurface))
{
global.screencontroller.width=argument1;
global.screencontroller.height=argument2;
global.screencontroller.wport=argument3;
global.screencontroller.hport=argument4;

room_set_view_enabled(troom,1);
room_set_view(troom,0,1,0,0,width,height,0,0,wport,hport,0,0,0,0,-1);
}
else
{
room_set_view_enabled(troom,1);
room_set_view(troom,0,1,0,0,width,height,0,0,width,height,0,0,0,0,-1);
}

}
else
{
room_set_view_enabled(troom,1);
room_set_view(troom,0,1,0,0,width,height,0,0,width,height,0,0,0,0,-1);
}
}

room_goto(troom);

