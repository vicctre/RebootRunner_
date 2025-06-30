draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed_color(x,y,text,1,1,0,c_white,c_white,c_white,c_white,1)
draw_set_halign(fa_left) //this resets the text back to the original origins 
draw_set_valign(fa_top) //the text is always drawn by default to the top left 
//without it, text can be easily misplaced 