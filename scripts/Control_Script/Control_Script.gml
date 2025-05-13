// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//THIS IS A SCRIPT, IT'S NOT IN AN EVENT

function Player_inputs() 
{

    var stickh = gamepad_axis_value(0,gp_axislh);
    var stickv = gamepad_axis_value(0,gp_axislv);

    right = keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr);
    right_held = keyboard_check(vk_right) or gamepad_button_check(0,gp_padr) or keyboard_check(ord("D")) or stickh >0;
    left = keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl);
    left_held = keyboard_check(vk_left) or gamepad_button_check(0,gp_padl) or keyboard_check(ord("A")) or stickh <0;
    down = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd);
    down_held = keyboard_check(vk_down) or gamepad_button_check(0,gp_padd) or keyboard_check(ord("S")) or stickv >0;
    up = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu);
    up_held = keyboard_check(vk_up) or gamepad_button_check(0,gp_padu) or keyboard_check(ord("W")) or stickv <0;

    jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or mouse_check_button_pressed(mb_left);
    jump_held = keyboard_check(vk_space) or keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face1) or mouse_check_button(mb_left);
    action2 = keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0,gp_face2);
    action_held2 = keyboard_check(ord("C")) or gamepad_button_check(0,gp_face2);
    action3 = keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3);
    action_held3 = keyboard_check(ord("X")) or gamepad_button_check(0,gp_face3) ;
    action4 = keyboard_check_pressed(ord("V")) or gamepad_button_check_pressed(0,gp_face4);
    action_held4 = keyboard_check(ord("V")) or gamepad_button_check(0,gp_face4);

}

function Menu_inputs() 
{

    var stickh = gamepad_axis_value(0,gp_axislh);
    var stickv = gamepad_axis_value(0,gp_axislv);

    right = keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr);
    right_held = keyboard_check(vk_right) or gamepad_button_check(0,gp_padr) or keyboard_check(ord("D")) or stickh >0;
    left = keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl);
    left_held = keyboard_check(vk_left) or gamepad_button_check(0,gp_padl) or keyboard_check(ord("A")) or stickh <0;
    down = keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd);
    down_held = keyboard_check(vk_down) or gamepad_button_check(0,gp_padd) or keyboard_check(ord("S")) or stickv >0;
    up = keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu);
    up_held = keyboard_check(vk_up) or gamepad_button_check(0,gp_padu) or keyboard_check(ord("W")) or stickv <0;

    left_click = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or mouse_check_button_pressed(mb_left);
    left_click_held = keyboard_check(vk_space) or keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face1) or mouse_check_button(mb_left);
	accept = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or keyboard_check_pressed(vk_enter);
    accept_held = keyboard_check(vk_space) or keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face1) or keyboard_check(vk_enter); 
    action2 = keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0,gp_face2);
    action_held2 = keyboard_check(ord("C")) or gamepad_button_check(0,gp_face2);
    action3 = keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3);
    action_held3 = keyboard_check(ord("X")) or gamepad_button_check(0,gp_face3) ;
    action4 = keyboard_check_pressed(ord("V")) or gamepad_button_check_pressed(0,gp_face4);
    action_held4 = keyboard_check(ord("V")) or gamepad_button_check(0,gp_face4);

}
