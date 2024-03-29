.label SCREEN_RAM = $0400
.label SCREEN_RAM_ROW0 = $0400+40*0
.label SCREEN_RAM_ROW1 = $0400+40*1
.label SCREEN_RAM_ROW2 = $0400+40*2
.label SCREEN_RAM_ROW3 = $0400+40*3
.label SCREEN_RAM_ROW4 = $0400+40*4
.label SCREEN_RAM_ROW5 = $0400+40*5
.label SCREEN_RAM_ROW6 = $0400+40*6
.label SCREEN_RAM_ROW10 = $0400+40*10
.label SCREEN_RAM_ROW12 = $0400+40*12
.label SCREEN_RAM_ROW18 = $0400+40*18
.label SCREEN_RAM_ROW22 = $0400+40*22

.label SCREEN_RAM_ROW4_END = $0400+40*5-1
.label COLOR_RAM_ROW4_END  = $d800+40*5-1
.label SCREEN_RAM_ROW5_END = $0400+40*6-1
.label COLOR_RAM_ROW5_END  = $d800+40*6-1
.label SCREEN_RAM_ROW18_END = $0400+40*19-1
.label COLOR_RAM_ROW18_END  = $d800+40*19-1

.label COLOR_RAM  = $d800
.label COLOR_RAM_ROW0 = $d800+40*0
.label COLOR_RAM_ROW1 = $d800+40*1
.label COLOR_RAM_ROW2 = $d800+40*2
.label COLOR_RAM_ROW3 = $d800+40*3
.label COLOR_RAM_ROW4 = $d800+40*4
.label COLOR_RAM_ROW5 = $d800+40*5
.label COLOR_RAM_ROW6 = $d800+40*6
.label COLOR_RAM_ROW10 = $d800+40*10
.label COLOR_RAM_ROW12 = $d800+40*12
.label COLOR_RAM_ROW18 = $d800+40*18
.label COLOR_RAM_ROW22 = $d800+40*22


.label SCREEN_ROW_LENGTH = $28 //40

.label VIC = $d000 //53248
.label SPRITE_ENABLE = VIC+21
.label SPRITE_MC_MODE_ENABLE = VIC+28
.label SPRITE_MC_COLOR_1 = VIC+37
.label SPRITE_MC_COLOR_2 = VIC+38
.label SPRITE_0_PTR = $07f8 //2040
.label SPRITE_1_PTR = $07f9 //2041
.label SPRITE_2_PTR = $07fa //2042
.label SPRITE_3_PTR = $07fb //2043
.label SPRITE_4_PTR = $07fc //2044
.label SPRITE_5_PTR = $07fd //2045
.label SPRITE_0_PTR_VAL = $f0 //240
.label SPRITE_1_PTR_VAL = $f1 //241
.label SPRITE_2_PTR_VAL = $f2 //242
.label SPRITE_3_PTR_VAL = $f3 //243
.label SPRITE_4_PTR_VAL = $f4 //244
.label SPRITE_5_PTR_VAL = $f5 //245
.label SPRITE_PTR_BASE = $3c00 //240
// *** Color *** //
.label SPRITE_0_COLOR = VIC+39
.label SPRITE_1_COLOR = VIC+40
.label SPRITE_2_COLOR = VIC+41
.label SPRITE_3_COLOR = VIC+42
.label SPRITE_4_COLOR = VIC+43
.label SPRITE_5_COLOR = VIC+44
// *** Position RIGHT X *** //
.label SPRITE_0_POSITION_RIGHT_X_ENABLE = VIC+16
.label SPRITE_1_POSITION_RIGHT_X_ENABLE = VIC+17
.label SPRITE_2_POSITION_RIGHT_X_ENABLE = VIC+18
.label SPRITE_3_POSITION_RIGHT_X_ENABLE = VIC+19
.label SPRITE_4_POSITION_RIGHT_X_ENABLE = VIC+20
.label SPRITE_5_POSITION_RIGHT_X_ENABLE = VIC+21
// *** Position LEFT X *** //
.label SPRITE_0_POSITION_LEFT_X = VIC+0
.label SPRITE_1_POSITION_LEFT_X = VIC+2
.label SPRITE_2_POSITION_LEFT_X = VIC+4
.label SPRITE_3_POSITION_LEFT_X = VIC+6
.label SPRITE_4_POSITION_LEFT_X = VIC+8
.label SPRITE_5_POSITION_LEFT_X = VIC+10
// *** Position Y *** //
.label SPRITE_0_POSITION_Y = VIC+1
.label SPRITE_1_POSITION_Y = VIC+3
.label SPRITE_2_POSITION_Y = VIC+5
.label SPRITE_3_POSITION_Y = VIC+7
.label SPRITE_4_POSITION_Y = VIC+9
.label SPRITE_5_POSITION_Y = VIC+11
// *** Road *** //
.label ROAD_PARI = $01
.label ROAD_DISPARI = $02
.label ROAD_POSITION_LEFT = $80
.label ROAD_POSITION_RIGHT = $b8
.label ROAD_POSITION_RIGHT2 = $b8+$18
.label CAR_LANE_LEFT = $01
.label CAR_LANE_RIGHT = $02
.label CAR_SPEED = $20 //32 decimal
.label ROAD_CHAR = $38 //$39, 57 decimal
.label LANE_SX_CHAR = $39 //$39, 57 decimal
.label LANE_DX_CHAR = $3b //$39, 57 decimal
.label BLANK_CHAR = $3a //$3b, 59 decimal
// *** Keyboard *** //
.label KEYBOARD_DR_PORT_A_COL = $dc00
.label KEYBOARD_DR_PORT_A_ROW = $dc01
.label KEYBOARD_DDR_PORT_A_ROW = $dc02
.label KEYBOARD_DDR_PORT_A_COL = $dc03
.label KEYBOARD_BUFFER_BEGIN = $277
.label KEYBOARD_BUFFER_END = $280
// *** Window *** //
.label SPEED_WINDOW_1_B = $00 //0
.label SPEED_WINDOW_1_E = $20 //32
.label SPEED_WINDOW_2_B = $21
.label SPEED_WINDOW_2_E = $40
.label SPEED_WINDOW_3_B = $80
.label SPEED_WINDOW_3_E = $80
// Sound
.label S = 54272
// Game State
.label GAME_STATE_INTRO = $01
.label GAME_STATE_MENU = $02

// Color
.label COLOR_BLACK = 0
.label COLOR_WHITE = 1
.label COLOR_RED = 2
.label COLOR_CYAN = 3
.label COLOR_VIOLET = 4
.label COLOR_GREEN = 5
.label COLOR_BLUE = 6
.label COLOR_YELLOW = 7
.label COLOR_ORANGE = 8
.label COLOR_BROWN = 9
.label COLOR_LIGHT_RED = 10
.label COLOR_DARK_GREY = 11
.label COLOR_GREY = 12
.label COLOR_LIGHT_GREEN = 13
.label COLOR_LIGHT_BLUE = 14
.label COLOR_LIGHT_GREY = 15

// ***************** CHARSET ***************** //
.label CHARSET_RAM = $3000
.label RAM_CHAR_BLANK = CHARSET_RAM
.label RAM_CHAR_A = CHARSET_RAM+$08
.label RAM_CHAR_B = CHARSET_RAM+$08+$08
.label RAM_CHAR_C = CHARSET_RAM+$08+$08+$08
.label RAM_CHAR_D = CHARSET_RAM+$08+$08+$08+$08
.label RAM_CHAR_E = CHARSET_RAM+$08+$08+$08+$08+$08
.label RAM_CHAR_F = CHARSET_RAM+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_G = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_H = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_I = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_J = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_K = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_L = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_M = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_N = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_O = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_P = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_Q = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_R = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_S = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_T = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_U = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_V = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_W = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_X = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_Y = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_Z = CHARSET_RAM+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08+$08
.label RAM_CHAR_69 = CHARSET_RAM+($08*69)
.label RAM_CHAR_76 = CHARSET_RAM+($08*76)
.label RAM_CHAR_79 = CHARSET_RAM+($08*79)
.label RAM_CHAR_80 = CHARSET_RAM+($08*80)
.label RAM_CHAR_122 = CHARSET_RAM+($08*122)

.label CHAR_BLANK = 0
.label CHAR_A = 1
.label CHAR_B = 2  
.label CHAR_C = 3	
.label CHAR_D = 4	
.label CHAR_E = 5	
.label CHAR_F = 6	
.label CHAR_G = 7	
.label CHAR_H = 8	
.label CHAR_I = 9	
.label CHAR_J = 10	
.label CHAR_K = 11	
.label CHAR_L = 12	
.label CHAR_M = 13	
.label CHAR_N = 14	
.label CHAR_O = 15	
.label CHAR_P = 16	
.label CHAR_Q = 17	
.label CHAR_R = 18	
.label CHAR_S = 19	
.label CHAR_T = 20	
.label CHAR_U = 21	
.label CHAR_V = 22	
.label CHAR_W = 23	
.label CHAR_X = 24	
.label CHAR_Y = 25	
.label CHAR_Z = 26
.label CH_NUM_0 = 27
.label CH_NUM_1 = 28
.label CH_NUM_DOT = 37
.label CH_NUM_2DOT = $2f


// Offset
.label OF1 = 10
.label OFFSET2= 13
.label OFFSET3= 3
.label OFFSET4= 32