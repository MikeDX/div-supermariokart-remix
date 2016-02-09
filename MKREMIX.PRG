////
compiler_options _extended_conditions;
PROGRAM mariokartremix;
const
joypad=701;keyboard=702;
old=100;new=101;
old_mario=0;
old_princess=17;
old_bowser=34;
old_koopa=51;
old_luigi=68;
old_yoshi=85;
old_donkey=102;
old_toad=119;

new_mario=149;
new_princess=172;
new_bowser=195;
new_wario=218;
new_luigi=241;
new_yoshi=264;
new_donkey=287;
new_toad=310;


GLOBAL
xdrne01[]=28,8,7,6,5,4,3,2,1,-2,-3,-4,-5,-6,-7,-8,-9,-9,-10,-10,-11,-11,12,11,11,10,10,9,9;
xdrne02[]=28,25,24,23,22,21,20,19,18,-19,-20,-21,-22,-23,-24,-25,-26,-26,-27,-27,-28,-28,29,28,28,27,27,26,26;
xdrne03[]=28,42,41,40,39,38,37,36,35,-36,-37,-38,-39,-40,-41,-42,-43,-43,-44,-44,-45,-45,46,45,45,44,44,43,43;
xdrne04[]=28,59,58,57,56,55,54,53,52,-53,-54,-55,-56,-57,-58,-59,-60,-60,-61,-61,-62,-62,63,62,62,61,61,60,60;
xdrne05[]=28,76,75,74,73,72,71,70,69,-70,-71,-72,-73,-74,-75,-76,-77,-77,-78,-78,-79,-79,80,79,79,78,78,77,77;
xdrne06[]=28,93,92,91,90,89,88,87,86,-87,-88,-89,-90,-91,-92,-93,-94,-94,-95,-95,-96,-96,97,96,96,95,95,94,94;
xdrne07[]=28,110,109,108,107,106,105,104,103,-104,-105,-106,-107,-108,-109,-110,-111,-111,-112,-112,-113,-113,114,113,113,112,112,111,111;
xdrne08[]=28,127,126,125,124,123,122,121,120,-121,-122,-123,-124,-125,-126,-127,-128,-128,-129,-129,-130,-130,131,130,130,129,129,128,128;

xdrne09[]=40,-159,-158,-157,-156,-155,-154,-153,-152,-151,-150,
             150,151,152,153,154,155,156,157,158,159,
             160,161,162,163,164,165,166,167,168,169,
             -169,-168,-167,-166,-165,-164,-163,-162,-161,-160;
xdrne10[]=40,-182,-181,-180,-179,-178,-177,-176,-175,-174,-173,
             173,174,175,176,177,178,179,180,181,182,
             183,184,185,186,187,188,189,190,191,192,
             -192,-191,-190,-189,-188,-187,-186,-185,-184,-183;
xdrne11[]=40,-205,-204,-203,-202,-201,-200,-199,-198,-197,-196,
             196,197,198,199,200,201,202,203,204,205,
             206,207,208,209,210,211,212,213,214,215,
             -215,-214,-213,-212,-211,-210,-209,-208,-207,-206;
xdrne12[]=40,-228,-227,-226,-225,-224,-223,-222,-221,-220,-219,
             219,220,221,222,223,224,225,226,227,228,
             229,230,231,232,233,234,235,236,237,238,
             -238,-237,-236,-235,-234,-233,-232,-231,-230,-229;
xdrne13[]=40,-251,-250,-249,-248,-247,-246,-245,-244,-243,-242,
             242,243,244,245,246,247,248,249,250,251,
             252,253,254,255,256,257,258,259,260,261,
             -261,-260,-259,-258,-257,-256,-255,-254,-253,-252;
xdrne14[]=40,-274,-273,-272,-271,-270,-269,-268,-267,-266,-265,
             265,266,267,268,269,270,271,272,273,274,
             275,276,277,278,279,280,281,282,283,284,
             -284,-283,-282,-281,-280,-279,-278,-277,-276,-275;
xdrne15[]=40,-297,-296,-295,-294,-293,-292,-291,-290,-289,-288,
             288,289,290,291,292,293,294,295,296,297,
             298,299,300,301,302,303,304,305,306,307,
             -307,-306,-305,-304,-303,-302,-301,-300,-299,-298;
xdrne16[]=40,-320,-319,-318,-317,-316,-315,-314,-313,-312,-311,
             311,312,313,314,315,316,317,318,319,320,
             321,322,323,324,325,326,327,328,329,330,
             -330,-329,-328,-327,-326,-325,-324,-323,-322,-321;

xgshell[]=18,610,611,612,613,614,-614,-613,-612,-611,-610,
             611,612,613,614,-614,-613,-612,-611;
xrshell[]=18,615,616,617,618,619,-619,-618,-617,-616,-615,
             616,617,618,619,-619,-618,-617,-616;


norm_colour[255]=
   0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,
   20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,
   40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,
   60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,
   80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,
   100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,
   120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,
   140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,
   160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,
   180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,
   200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,
   220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,
   240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255;

star_colour[255]=
   0,99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241,103,149,101,237,99,241,103,149,101,237,99,241,103,149,101,237,
     99,241;

star_colour2[255]=
   0,164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241,103,149,101,237,164,241,103,149,101,237,164,241,103,149,101,237,
     164,241;


SAVELINE="MKREMIX\test2.dat";
struct car[8];
 struct cpoint[5000];
  x;y;angle;
 end
end

SAVELINE2="mkremix\test2.dat";
/*
struct car2[8];
 struct cpoint[5000];
  x;y;angle;
 end
end
*/
rec_pointno=0;

carno=0;
pointno=0;
//drone_pointno=0;
d1;d2;d3;d4;d5;d6;d7;d8;

lapcpointstart=1;
lapcpointmax=1000;


go=0;racend=false;
uppers;downers;leftees;rightees;butt1;butt2;butt3;butt4;
//kontrol=joypad;
kontrol=keyboard;
tmins;tsecs;tmsec;mins;secs;msec;ticker=0;
MAP1;skymap1;skymap2;zerotxt1;zerotxt2;zerotxt3;zerotxt4;
string txt1;string txt2;txt3;txt4;txt5;txt6;
zero1;zero2;zero3;zero4;zero5;
fnt1;fnt2;fnt3;fnt4;
pcm1;pcm2;pcm3;pcm4;pcm5;
fpg0;FPG1;
song_id;
STAGE=1;
STAGEND=TRUE;
CHEESE=0;

ANGLA=200;
PHICS;
LMAX;
MAX;
POINT=1;
pCAR;
CAM1;scam;
APHICS=1;
MGRAPH;
atmos_c=1;
turn_angle=0;
boosting=false;can_boost=true;spdiv=3;top_speed=240;boostpad=false;
dchange=0;
player;player_selected=9;
track=900;trackmap;
v=236;
colour_check;
colour_check_up;
colour_check_down;
colour_check_left;
colour_check_right;
colour_checkL;colour_checkR;//wheels
coins=3;
can_pickup_bonus=true;

lapno=1;tlaps=5;

sand[]=119,120,222;c;
tarmac[]=25,26;

midi_pattern;
midi_line;

ENDCAR;
//lapcpointmax;
//lapcpointstart;
revs;gear;
canspace=true;
canboost=false;

face1;face2;face3;face4;
mushboost;
bstopped=true;bstoppin=false;bstate;
xshells=0;
ammo=0;bammo=0;
g1id;g2id;g3id;r1id;r2id;r3id;

graphcounter;

LOCAL
p;px;py;c_dist;start_Y;
angleL;angleR;angle2;angle3;speed;speed2;sd;
rx;ry;lx;ly;
next_p;next_p_x;next_p_y;cno;

WHERE;pos;pdist;
my_POINTNO;drone_pointno=0;
my_LAP=0;LAPVAR=0;

counter0;id2;
age;
looking;
spin;
b_colour;CANJUMP=TRUE;HSPEED;
face;pgraph;
LASTX;LASTY;

xang;xangA;xangB;xchange;xdist;xfired;counter;stop=1;

can_fireGS;canfire=0;candrop=true;

drift=0;


BEGIN
//FPG1=LOAD_FPG("mkremix\KOOP1.fpg");
//LOAD_FPG("mkremix\COPYOF~1.fpg");

//SET_MODE(M800X600);

kontrol=joypad;
kontrol=keyboard;

SET_FPS(40,0);
LOOP


IF (STAGEND==TRUE)
//if(key(_esc))exit("Cheers Big Ears!",69);end
SWITCH(STAGE)

///////////////////////////////////////
CASE 1: (STAGEND=FALSE);LET_ME_ALONE();SET_MODE(640480);set_fps(40,0);
fpg0=LOAD_FPG("mkremix\mk3.fpg");
fpg1=LOAD_FPG("mkremix\mk3.fpg");

fnt1=load_fnt("mkremix\impact32.fnt");
fnt2=load_fnt("mkremix\imp32x20.fnt");

pcm1=load_pcm("mkremix\lights.pcm",0);

track=900;
environment(1,1);
fade(0,0,0,10);
frame(10000);fade(100,100,100,1);
boosting=true;
song_id=load_song("mkremix\mazcrc.xm",1);song(song_id);midi_tracker();

//DEFINE_REGION(1,0,0,640,480);   // MAIN AREA
START_MODE7(0,0,trackmap,852,0,128);    ////////////////////
DEFINE_REGION(2,0,0,640,128);   //   SKY BIT
start_scroll(0,0,skymap2,skymap1,2,15);///////
//DEFINE_REGION(3,219,26,58,53);
////////////////////////////////////////////
player_selected=09;

pCAR=kart();
cam1=start_camera();
//M7[0].HEIGHT=80;
//M7[0].DISTANCE=30;
//M7[0].FOCUS=200;
M7[0].CAMERA=cam1;




//mario circuit 1///////////////////
lapcpointstart=178;lapcpointmax=754;//114,708
//pipes///////////////////////
from p=10 to 17;
 get_point(0,track,p,&px,&py);
 pipe(700,px,py);
end///////////////////////////
 //get_point(0,track,9,&px,&py);
 //gshell(px*10,py*10);

controls();
recorder();

load(saveline,&car);

/*
d1=drone(1,&xdrne01,old);
d2=drone(2,&xdrne02,old);
d3=drone(3,&xdrne03,old);
d4=drone(4,&xdrne04,old);
d5=drone(5,&xdrne05,old);
d6=drone(6,&xdrne06,old);
d7=drone(7,&xdrne07,old);
d8=drone(8,&xdrne08,old);
*/


if(player_selected==01)
d1=drone(1,&xdrne02,old,2);
d2=drone(2,&xdrne03,old,3);
d3=drone(3,&xdrne04,old,4);
d4=drone(4,&xdrne05,old,5);
d5=drone(5,&xdrne06,old,6);
d6=drone(6,&xdrne07,old,7);
d7=drone(7,&xdrne08,old,8);
d8=drone(8,&xdrne01,old,1);
end


if(player_selected==09)
d1=drone(1,&xdrne13,new,13);
d2=drone(2,&xdrne10,new,10);
d3=drone(3,&xdrne11,new,11);
d4=drone(4,&xdrne16,new,16);
d5=drone(5,&xdrne14,new,14);
d6=drone(6,&xdrne12,new,12);
d7=drone(7,&xdrne15,new,15);
d8=drone(8,&xdrne09,new,09);
else
if(player_selected==10)
d1=drone(1,&xdrne15,new,15);
d2=drone(2,&xdrne14,new,14);
d3=drone(3,&xdrne13,new,13);
d4=drone(4,&xdrne11,new,11);
d5=drone(5,&xdrne12,new,12);
d6=drone(6,&xdrne09,new,09);
d7=drone(7,&xdrne16,new,16);
d8=drone(8,&xdrne10,new,10);
else
if(player_selected==11)
d1=drone(1,&xdrne16,new,16);
d2=drone(2,&xdrne15,new,15);
d3=drone(3,&xdrne14,new,14);
d4=drone(4,&xdrne13,new,13);
d5=drone(5,&xdrne12,new,12);
d6=drone(6,&xdrne10,new,10);
d7=drone(7,&xdrne09,new,09);
d8=drone(8,&xdrne11,new,11);
else
if(player_selected==12)
d1=drone(1,&xdrne10,new,10);
d2=drone(2,&xdrne11,new,11);
d3=drone(3,&xdrne13,new,13);
d4=drone(4,&xdrne14,new,14);
d5=drone(5,&xdrne09,new,09);
d6=drone(6,&xdrne16,new,16);
d7=drone(7,&xdrne15,new,15);
d8=drone(8,&xdrne12,new,12);
else
if(player_selected==13)
d1=drone(1,&xdrne15,new,15);
d2=drone(2,&xdrne10,new,10);
d3=drone(3,&xdrne09,new,09);
d4=drone(4,&xdrne12,new,12);
d5=drone(5,&xdrne16,new,16);
d6=drone(6,&xdrne11,new,11);
d7=drone(7,&xdrne14,new,14);
d8=drone(8,&xdrne13,new,13);
else
if(player_selected==14)
d1=drone(1,&xdrne15,new,15);
d2=drone(2,&xdrne16,new,16);
d3=drone(3,&xdrne09,new,09);
d4=drone(4,&xdrne11,new,11);
d5=drone(5,&xdrne13,new,13);
d6=drone(6,&xdrne10,new,10);
d7=drone(7,&xdrne12,new,12);
d8=drone(8,&xdrne14,new,14);
else
if(player_selected==15)
d1=drone(1,&xdrne13,new,13);
d2=drone(2,&xdrne12,new,12);
d3=drone(3,&xdrne10,new,10);
d4=drone(4,&xdrne11,new,11);
d5=drone(5,&xdrne14,new,14);
d6=drone(6,&xdrne09,new,09);
d7=drone(7,&xdrne16,new,16);
d8=drone(8,&xdrne15,new,15);
else
if(player_selected==16)
d1=drone(1,&xdrne09,new,09);
d2=drone(2,&xdrne10,new,10);
d3=drone(3,&xdrne11,new,11);
d4=drone(4,&xdrne12,new,12);
d5=drone(5,&xdrne13,new,13);
d6=drone(6,&xdrne14,new,14);
d7=drone(7,&xdrne15,new,15);
d8=drone(8,&xdrne16,new,16);
end end end end end end end end



hud();
//d8=drone(8,&xdrne16,new);
repeat POSITIONS();
 if(coins<10)zero1.y=40;else zero1.y=-40;end
 txt2=itoa(pcar.my_lap)+"/"+itoa(tlaps);
//time system/////////////////////////////////////
 if(msec>9)
  if(secs<10)
   txt1=itoa(mins)+"'0"+itoa(secs)+"''"+itoa(msec);
  else
   txt1=itoa(mins)+"'"+itoa(secs)+"''"+itoa(msec);
  end
 else
  if(secs<10)
   txt1=itoa(mins)+"'0"+itoa(secs)+"''0"+itoa(msec);
  else
   txt1=itoa(mins)+"'"+itoa(secs)+"''0"+itoa(msec);
  end
 end
scroll.x0=-pCAR.angle/v;scroll.x1=-pCAR.angle/276;


FRAME;
until(key(_esc)or pcar.my_lap==7)
let_me_alone();
stagend=true;
go=0;
coins=3;//signal(id,s_kill_tree);
//unload_fpg(fpg0);
//unload_fpg(fpg1);
delete_draw(all_drawing);
delete_text(all_text);
END
/////////////////
/*case 2:
 stage=1;stagend=true;
end*/
////////////////
///////////////
END
END
FRAME;
END
END ////////////////////,,,,,<<<<<<<<<<<<<<<<<<<<<<<<<-------------------
//////////////////////////////
/*
process ();
begin loop
frame;end end
*/
//////////////////////////////
process start_camera();
begin resolution=10;
//write_int(0,100,120,5,&x);write_int(0,120,120,3,&y);write_int(0,120,140,3,&pdist);
 pcar.size=0;
 get_point(0,track,9,&px,&py);
 x=px*10;y=py*10;
 M7[0].HEIGHT=380;
 M7[0].DISTANCE=930;
 M7[0].FOCUS=200;
 angle=pcar.angle+180000;
repeat
 if(M7[0].DISTANCE>30)M7[0].DISTANCE-=10;end
 if(M7[0].HEIGHT>80)M7[0].HEIGHT-=5;end
 if(M7[0].DISTANCE<130)
  if(angle>pcar.angle)angle-=10000;end
 end
frame; until(M7[0].distance==30 and angle==pcar.angle)
repeat
 if(x<pcar.x)x+=10;end if(x>pcar.x)x-=10;end
 if(y<pcar.y)y+=10;end if(y>pcar.y)y-=10;end
 pdist=get_dist(pcar);
frame; until(pdist<10)
 signal(id,s_kill);
 signal(d8,s_kill_tree);
 pcar.size=94;
 M7[0].CAMERA=pcar;
 lakito();

 //lights();
end
//////////////////////////////
process recorder();
begin
 //write_int(1,10,10,3,&rec_pointno);
 //resolution=10;
 loop
 //to rec 0, unrem rec_pointno+=1; and rem if(carno>0)
 // rec_pointno+=1;
  if(carno>0)
   car[carno].cpoint[rec_pointno].x=pcar.x;
   car[carno].cpoint[rec_pointno].y=pcar.y;
   car[carno].cpoint[rec_pointno].angle=pcar.angle;
  end

  if(key(_f2))save(saveline,&car,sizeof(car));end
  if(key(_f1))load(saveline,&car);pcar.pos=8;
   pointno=0;pcar.my_pointno=1;lapno=1;
   map_put(0,trackmap,track,512,512);
   coins=3;
   get_point(0,track,pcar.pos,&px,&py);
   d1.drone_pointno=0;d2.drone_pointno=0;d3.drone_pointno=0;
   d4.drone_pointno=0;d5.drone_pointno=0;d6.drone_pointno=0;d7.drone_pointno=0;
   pcar.x=px*10;pcar.y=py*10;pcar.angle2=90000;
   pcar.pdist=0;d1.pdist=0;d2.pdist=0;d3.pdist=0;
   d4.pdist=0;d5.pdist=0;d6.pdist=0;d7.pdist=0;d8.pdist=0;
   pcar.my_pointno=0;d1.my_pointno=0;d2.my_pointno=0;d3.my_pointno=0;d4.my_pointno=0;
   d5.my_pointno=0;d6.my_pointno=0;d7.my_pointno=0;d8.my_pointno=0;
   pcar.lapvar=0;d1.lapvar=0;d2.lapvar=0;d3.lapvar=0;
   d4.lapvar=0;d5.lapvar=0;d6.lapvar=0;d7.lapvar=0;d8.lapvar=0;
   pcar.where=0;d1.where=0;d2.where=0;d3.where=0;
   d4.where=0;d5.where=0;d6.where=0;d7.where=0;d8.where=0;
   PCAR.POS=1;d1.POS=1;d2.pos=1;d3.pos=1;
   d4.pos=1;d5.pos=1;d6.pos=1;d7.pos=1;

  end
  if(key(_f3))pointno=0;drone_pointno=0;rec_pointno=0;end
  if(key(_0))carno=0;end

 if(canspace==true)
  if(key(_space))canspace=false;go=1;laplakito();end
 end
 if(!key(_space))canspace=true;end

 if(key(_enter))go=0;racend=true;end
 //if(go==true)drone_pointno++;end
frame;end end
//////////////////////////////
process drone(cno,xgraph,age,face);
private schange;notspin;
begin ctype=c_m7;resolution=10;whereru();
//write_int(0,150,100+(10*cno),4,&pdist);
//write_int(0,200,100+(10*cno),4,&drone_pointno);
Pmap_ball(x,y,face,50);
if(age==old)size=120;else size=94;end
loop
  pgraph=face;

  if(go==true and notspin and drone_pointno<5000)drone_pointno++;end
  x=car[cno].cpoint[drone_pointno].x;
  y=car[cno].cpoint[drone_pointno].y;

  if(height==0)height=1;else height=0;end
  pdist=LAPVAR*10000+(WHERE+(my_pointno*200));

  if(pos==1)face1.graph=face+561;else
  if(pos==2)face2.graph=face+561;else
  if(pos==3)face3.graph=face+561;else
  if(pos==4)face4.graph=face+561;end end end end
//cpu speed cheat///////////////////////////
  if(pcar.pos==1 and pcar.pdist>pdist+10000 and drone_pointno<5000)
   if(rand(0,30)<9-pos)drone_pointno+=1;end
  end
//get hit and spin//////////////////////////
  if(spin)notspin=false;
   if(schange<stop)schange++;else schange=0;stop++;end
   if(schange==1)drone_pointno++;end
   if(stop>10)spin=0;end
   angle+=20000;
  else
   if(schange<stop)schange++;else schange=0;stop--;end
   if(schange==1)drone_pointno++;end
   if(stop<0)notspin=true;end
   angle=car[cno].cpoint[drone_pointno].angle;
  end
//Gshell checker/////////////////
  while(id2=get_id(type Gshell));
   xdist=get_dist(id2);
   if(xdist<100)spin=true;stop=1;
   spark(x-50,y);spark(x,y+50);spark(x,y-50);spark(x+50,y);
   signal(id2,s_kill_tree);xshells-=1;
   if(id2.candrop)ammo-=1;end end
  end
//Rshell checker/////////////////
  while(id2=get_id(type Rshell));
   xdist=get_dist(id2);
   if(xdist<100)spin=true;stop=1;
   spark(x-50,y);spark(x,y+50);spark(x,y-50);spark(x+50,y);
   signal(id2,s_kill_tree);xshells-=1;
   if(id2.candrop)ammo-=1;end end
  end
//nana checker//////////////////
  while(id2=get_id(type nana));
   xdist=get_dist(id2);
   if(xdist<50)spin=true;stop=1;
   spark(x-50,y);spark(x,y+50);spark(x,y-50);spark(x+50,y);
   signal(id2,s_kill_tree);xshells-=1;
   if(id2.candrop)ammo-=1;end end
  end

  //if(where<pcar.where+100 and where>pcar.where-200)pcar.looking=true;else pcar.looking=false;end
frame;end end
//////////////////////////////
process controls();
begin repeat
 if(kontrol==joypad)
  if(joy.up)uppers=true;else uppers=false;end
  if(joy.down)downers=true;else downers=false;end
  if(joy.left)leftees=true;else leftees=false;end
  if(joy.right)rightees=true;else rightees=false;end
  if(joy.button1)butt1=true;else butt1=false;end
  if(joy.button2)butt2=true;else butt2=false;end
  if(joy.button3)butt3=true;else butt3=false;end
  if(joy.button4)butt4=true;else butt4=false;end
 else
  if(key(_n)or key(_w))uppers=true;else uppers=false;end
  if(key(_down)or key(_s))downers=true;else downers=false;end
  if(key(_left)or key(_a))leftees=true;else leftees=false;end
  if(key(_right)or key(_d))rightees=true;else rightees=false;end
  if(key(_r_shift)or key(_u))butt1=true;else butt1=false;end
  if(key(_m)or key(_i))butt2=true;else butt2=false;end
 end
 switch(player_selected)
  case 1: player=old_mario;pcar.age=old;end
  case 2: player=old_princess;pcar.age=old;end
  case 3: player=old_bowser;pcar.age=old;end
  case 4: player=old_koopa;pcar.age=old;end
  case 5: player=old_luigi;pcar.age=old;end
  case 6: player=old_yoshi;pcar.age=old;end
  case 7: player=old_donkey;pcar.age=old;end
  case 8: player=old_toad;pcar.age=old;end
  case 9: player=new_mario;pcar.age=new;end
  case 10: player=new_princess;pcar.age=new;end
  case 11: player=new_bowser;pcar.age=new;end
  case 12: player=new_wario;pcar.age=new;end
  case 13: player=new_luigi;pcar.age=new;end
  case 14: player=new_yoshi;pcar.age=new;end
  case 15: player=new_donkey;pcar.age=new;end
  case 16: player=new_toad;pcar.age=new;end
 end
 if(key(_1))player_selected++;frame(800);end
 if(key(_2))player_selected--;frame(800);end
 if(player_selected>16)player_selected=1;end if(player_selected<1)player_selected=16;end

 IF((mushboost or boostpad==true) and can_boost==true)
  if(boostpad==true)revs+=20;end
  boosting=true;can_boost=false;ammo-=1;
 end
 if(boosting and m7[0].focus>20)
  m7[0].focus-=4;spdiv=3;top_speed=200;pcar.speed+=3;
  if(m7[0].distance>8)m7[0].distance--;end
  if(m7[0].focus<22)boosting=false;end
 end
 if(boosting==false and m7[0].focus<200)
  m7[0].focus+=2;spdiv=3;top_speed=180;pcar.speed+=3;
  if(dchange<1)dchange+=1;else dchange=0;end
  if(m7[0].distance<30 and dchange==0)m7[0].distance++;end
 else
  can_boost=true;spdiv=3;top_speed=150;mushboost=false;
 end

frame;until(key(_esc));end
////////////////////////////////
process hud();
begin
DEFINE_REGION(3,291,26,58,53);
object(15,41,500,100,0,0,c_screen,0,0,0);
object(130,39,501,100,0,0,c_screen,0,0,0);
object(425,36,502,100,0,0,c_screen,0,0,0);
object(320,52,503,100,0,0,c_screen,-199,0,0);
object(320,52,504,100,0,0,c_screen,-201,0,0);


//object(320,240,999,280,0,0,c_screen,0,0,3);
object(545,380,track+20,100,0,0,c_screen,-199,0,0);

face1=object(45,110,505,100,0,0,c_screen,0,0,0);
face2=object(45,185,506,100,0,0,c_screen,0,0,0);
face3=object(45,260,507,100,0,0,c_screen,0,0,0);
face4=object(45,335,508,100,0,0,c_screen,0,0,0);

time();write(fnt1,482,35,3,txt1);
write(fnt1,168,35,3,txt2);
write_int(fnt2,630,470,5,&fps);
write_int(fnt2,70,40,5,&coins);
zerotxt1=write_in_map(fnt2,"0",4);
zero1=object(37,40,zerotxt1,100,0,0,c_screen,0,0,0);
position();
end
///////////////////////////////////////////////////
process position();
begin x=45;y=425;position_suffix();
clone flags=4;x=x+2;y=y+1;z=z+1;end
loop graph=980+pcar.pos;
frame;end end
process position_suffix();
begin x=85;y=444;
clone flags=4;x=x+2;y=y+1;z=z+1;end
loop
if(pcar.pos<4)graph=988+pcar.pos;else graph=992;end
frame;end end
///////////////////////////////////////////////////
process environment(sky,atmos);
begin
trackmap=new_map(1024,1024,512,512,0);
map_put(0,trackmap,track,512,512);
switch(sky)
 case 1:
  skymap1=new_map(1300,128,650,0,0);
  skymap2=new_map(1300,128,650,0,0);
  map_xput(0,skymap1,803,0,63,0,120,0);
  map_xput(0,skymap1,803,300,63,0,120,0);
  map_xput(0,skymap1,803,600,63,0,120,0);
  map_xput(0,skymap1,803,900,63,0,120,0);
  map_xput(0,skymap1,803,1160,63,0,120,0);
  map_xput(0,skymap2,804,0,63,0,120,0);
  map_xput(0,skymap2,804,300,63,0,120,0);
  map_xput(0,skymap2,804,600,63,0,120,0);
  map_xput(0,skymap2,804,900,63,0,120,0);
  map_xput(0,skymap2,804,1160,63,0,120,0);
  //foreground trees//////////////////////////
  object(512,68,802,200,0,0,c_scroll,0,0,2);
  object(0,68,802,200,0,0,c_scroll,0,0,2);
  object(-512,68,802,200,0,0,c_scroll,0,0,2);
  object(-1024,68,802,200,0,0,c_scroll,0,0,2);
  object(-1536,68,802,200,0,0,c_scroll,0,0,2);
  object(-2048,68,802,200,0,0,c_scroll,0,0,2);
  object(-2560,68,802,200,0,0,c_scroll,0,0,2);
  object(-3072,68,802,200,0,0,c_scroll,0,0,2);
  object(-3584,68,802,200,0,0,c_scroll,0,0,2);
  object(-4096,68,802,200,0,0,c_scroll,0,0,2);
 end
 case 2:

 end
end
switch(atmos)
 case 1://small white atmosphere//////////////////////
  atmos_c=130;
  draw(3,atmos_c,3,0,0,121,640,140);
  draw(3,atmos_c,3,0,0,123,640,138);
  draw(3,atmos_c,3,0,0,124,640,137);
  draw(3,atmos_c,3,0,0,125,640,136);
  draw(3,atmos_c,3,0,0,126,640,134);
  draw(3,atmos_c,3,0,0,127,640,132);
  draw(3,atmos_c,3,0,0,128,640,130);
  draw_z=0;
  //////////////////////////////////
 end
 case 2:

 end
end
end
///////////////////////
PROCESS PIPE(GRAPH,X,Y)
BEGIN
ctype=c_m7;
ANGLE=90000;
SIZE=130;
LOOP FRAME;END END
///////////////////////////////
////////////////////////////////////////////////////
///////////////////////////////////////////////////
process map_ball(x,y,graph);
begin z=-graph;size=100;
loop x=(father.x/70)+470;y=(father.y/70)+310;
frame;end end
/////////////////////////////
process Pmap_ball(x,y,Pgraph,size);
private set;
begin
loop x=(father.x/70)+470;y=(father.y/70)+310;
     z=-y;
 switch(father.Pgraph)
  case 01: set=0;end
  case 02: set=17;end
  case 03: set=34;end
  case 04: set=51;end
  case 05: set=68;end
  case 06: set=85;end
  case 07: set=102;end
  case 08: set=119;end
  case 09: set=149;end
  case 10: set=172;end
  case 11: set=195;end
  case 12: set=218;end
  case 13: set=241;end
  case 14: set=264;end
  case 15: set=287;end
  case 16: set=310;end
 end

if(father.age==old)
 switch(father.angle)
  case 0000..9000:     graph=08+set;flags=0;end
  case 9000..18000:    graph=08+set;flags=0;end
  case 18000..27000:   graph=07+set;flags=0;end
  case 27000..36000:   graph=07+set;flags=0;end
  case 36000..45000:   graph=06+set;flags=0;end
  case 45000..54000:   graph=05+set;flags=0;end
  case 54000..63000:   graph=04+set;flags=0;end
  case 63000..72000:   graph=03+set;flags=0;end
  case 72000..81000:   graph=02+set;flags=0;end
  case 81000..90000:   graph=01+set;flags=0;end
  case 90000..99000:   graph=01+set;flags=1;end
  case 99000..108000:  graph=02+set;flags=1;end
  case 108000..117000: graph=02+set;flags=1;end
  case 117000..126000: graph=03+set;flags=1;end
  case 126000..135000: graph=04+set;flags=1;end
  case 135000..144000: graph=05+set;flags=1;end
  case 144000..153000: graph=06+set;flags=1;end
  case 153000..162000: graph=07+set;flags=1;end
  case 162000..171000: graph=07+set;flags=1;end
  case 171000..180000: graph=08+set;flags=1;end
  case 180000..189000: graph=08+set;flags=1;end
  case 189000..198000: graph=09+set;flags=1;end
  case 198000..207000: graph=09+set;flags=1;end
  case 207000..216000: graph=10+set;flags=1;end
  case 216000..225000: graph=10+set;flags=1;end
  case 225000..234000: graph=11+set;flags=1;end
  case 234000..243000: graph=11+set;flags=1;end
  case 243000..252000: graph=11+set;flags=1;end
  case 252000..261000: graph=12+set;flags=1;end
  case 261000..270000: graph=12+set;flags=1;end
  case 270000..279000: graph=12+set;flags=0;end
  case 279000..288000: graph=11+set;flags=0;end
  case 288000..297000: graph=11+set;flags=0;end
  case 297000..306000: graph=11+set;flags=0;end
  case 306000..315000: graph=10+set;flags=0;end
  case 315000..324000: graph=10+set;flags=0;end
  case 324000..333000: graph=09+set;flags=0;end
  case 333000..342000: graph=09+set;flags=0;end
  case 342000..351000: graph=09+set;flags=0;end
  case 351000..360000: graph=08+set;flags=0;end
 end
else
 switch(father.angle)
  case 0000..9000:     graph=10+set;flags=1;end
  case 9000..18000:    graph=09+set;flags=1;end
  case 18000..27000:   graph=08+set;flags=1;end
  case 27000..36000:   graph=07+set;flags=1;end
  case 36000..45000:   graph=06+set;flags=1;end
  case 45000..54000:   graph=05+set;flags=1;end
  case 54000..63000:   graph=04+set;flags=1;end
  case 63000..72000:   graph=03+set;flags=1;end
  case 72000..81000:   graph=02+set;flags=1;end
  case 81000..90000:   graph=01+set;flags=1;end
  case 90000..99000:   graph=01+set;flags=0;end
  case 99000..108000:  graph=02+set;flags=0;end
  case 108000..117000: graph=03+set;flags=0;end
  case 117000..126000: graph=04+set;flags=0;end
  case 126000..135000: graph=05+set;flags=0;end
  case 135000..144000: graph=06+set;flags=0;end
  case 144000..153000: graph=07+set;flags=0;end
  case 153000..162000: graph=08+set;flags=0;end
  case 162000..171000: graph=09+set;flags=0;end
  case 171000..180000: graph=10+set;flags=0;end
  case 180000..189000: graph=11+set;flags=0;end
  case 189000..198000: graph=12+set;flags=0;end
  case 198000..207000: graph=13+set;flags=0;end
  case 207000..216000: graph=14+set;flags=0;end
  case 216000..225000: graph=15+set;flags=0;end
  case 225000..234000: graph=16+set;flags=0;end
  case 234000..243000: graph=17+set;flags=0;end
  case 243000..252000: graph=18+set;flags=0;end
  case 252000..261000: graph=19+set;flags=0;end
  case 261000..270000: graph=20+set;flags=0;end
  case 270000..279000: graph=20+set;flags=1;end
  case 279000..288000: graph=19+set;flags=1;end
  case 288000..297000: graph=18+set;flags=1;end
  case 297000..306000: graph=17+set;flags=1;end
  case 306000..315000: graph=16+set;flags=1;end
  case 315000..324000: graph=15+set;flags=1;end
  case 324000..333000: graph=14+set;flags=1;end
  case 333000..342000: graph=13+set;flags=1;end
  case 342000..351000: graph=12+set;flags=1;end
  case 351000..360000: graph=11+set;flags=1;end
 end
end
// if(father<>pcar)flags=flags+4;end

frame;end end
//////////////////////////////////////////////////
process kart()
private
begin graph=1+player;ctype=c_m7;//scroll[1].camera=id;
//write_int(0,300,100,5,&pdist);//write_int(0,120,100,3,&ammo);//write(fnt1,310*p,460,5,speedtxt);
//write_int(0,300,100,5,&drift);
/*
write_int(0,100,120,5,&next_p_x);write_int(0,120,120,3,&next_p_y);
write_int(1,100,140,5,&next_p);write_int(2,120,140,3,&pdist);
*/
//write_int(2,160,140,3,&my_pointno);write_int(2,160,160,3,&where);


//write_int(2,120,160,3,&revs);
//write_int(2,120,180,3,&gear);
//write_int(2,120,200,3,&speed);
//write_int(2,120,200,3,&pos);write_int(2,120,180,3,&pdist);

angle=90000;
angle2=90000;
shadow(x,y,angle);
Pmap_ball(x,y,player_selected,70);
resolution=10;SIZE=94;point=8;
get_point(0,track,point,&px,&py);
x=px*10;y=py*10;my_pointno=1;
WHERERU();
my_lap=1;jumperinfo();

loop //speedtxt=itoa(speed/2)+" km/h";
 pgraph=player_selected;
 pdist=LAPVAR*10000+(WHERE+(my_POINTNO*200));
/*
 if(key(_l_shift))
  if(key(_1))signal(d1,s_wakeup);end
  if(key(_2))signal(d2,s_wakeup);end
  if(key(_3))signal(d3,s_wakeup);end
  if(key(_4))signal(d4,s_wakeup);end
  if(key(_5))signal(d5,s_wakeup);end
  if(key(_6))signal(d6,s_wakeup);end
  if(key(_7))signal(d7,s_wakeup);end
  if(key(_8))signal(d8,s_wakeup);end
 else
  if(key(_1))carno=1;get_point(0,track,1,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d1,s_sleep);end
  if(key(_2))carno=2;get_point(0,track,2,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d2,s_sleep);end
  if(key(_3))carno=3;get_point(0,track,3,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d3,s_sleep);end
  if(key(_4))carno=4;get_point(0,track,4,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d4,s_sleep);end
  if(key(_5))carno=5;get_point(0,track,5,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d5,s_sleep);end
  if(key(_6))carno=6;get_point(0,track,6,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d6,s_sleep);end
  if(key(_7))carno=7;get_point(0,track,7,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d7,s_sleep);end
  if(key(_8))carno=8;get_point(0,track,8,&px,&py);x=px*10;y=py*10;angle2=90000;signal(d8,s_sleep);end
  if(key(_0))carno=0;get_point(0,track,9,&px,&py);x=px*10;y=py*10;angle2=90000;end
 end
*/
//face position hud//////////////////////////
 if(pos==1)face1.graph=player_selected+561;else
 if(pos==2)face2.graph=player_selected+561;else
 if(pos==3)face3.graph=player_selected+561;else
 if(pos==4)face4.graph=player_selected+561;end end end end
//graphic section///////////////////////////
if(age==old)
if(speed==0)
 if(leftees)flags=1;graph=13+player;else
 if(rightees)flags=0;graph=13+player;else
 graph=1+player;end end
else
if(turn_angle>-10 and turn_angle<10)graph=1+player;flags=0;else
 if(turn_angle>10 and turn_angle<40)graph=2+player;flags=1;else
  if(turn_angle>40 and turn_angle<77)graph=3+player;flags=1;else
   if(turn_angle>77)graph=4+player;flags=1;else
    if(turn_angle<-10 and turn_angle>-40)graph=2+player;flags=0;else
     if(turn_angle<-40 and turn_angle>-77)graph=3+player;flags=0;else
      if(turn_angle<-77)graph=4+player;flags=0;else
end end end end end end end end
else//age==new//
if(speed==0)
 if(leftees)flags=0;graph=2+player;else
 if(rightees)flags=1;graph=2+player;else
 graph=1+player;end end
else
if(turn_angle>-10 and turn_angle<10);graph=1+player;flags=0;else
 if(turn_angle>10 and turn_angle<20)graph=2+player;flags=0;else
  if(turn_angle>20 and turn_angle<40)graph=3+player;flags=0;else
   if(turn_angle>40 and turn_angle<60)graph=4+player;flags=0;else
    if(turn_angle>60 and turn_angle<77)graph=5+player;flags=0;else
     if(turn_angle>77)graph=6+player;flags=0;else
     if(turn_angle<-10 and turn_angle>-20)graph=2+player;flags=1;else
    if(turn_angle<-20 and turn_angle>-40)graph=3+player;flags=1;else
   if(turn_angle<-40 and turn_angle>-60)graph=4+player;flags=1;else
  if(turn_angle<-60 and turn_angle>-77)graph=5+player;flags=1;else
 if(turn_angle<-77)graph=6+player;flags=1;else
end end end end end end end end end end end end
end

  if(uppers or butt1) revs+=1;
  else
   if(speed>0)speed-=2;end
   if(speed2>0)speed2-=9;end
   if(revs>0)revs-=2;end
  end
   if(coins<0)coins=0;end
   if(coins=>0 and coins<10)
    if(revs==0)gear=0;else
    if(revs>0 and revs<20)    gear=1;else
    if(revs>20 and revs<40)   gear=2;else
    if(revs>40 and revs<60)   gear=3;else
    end end end end
   else
   if(coins>9 and coins<20)
    if(revs==0)gear=0;else
    if(revs>0 and revs<20)    gear=1;else
    if(revs>20 and revs<40)   gear=2;else
    if(revs>40 and revs<60)   gear=3;else
    if(revs>60 and revs<80)   gear=4;else
    if(revs>80 and revs<100)  gear=4;else
    if(revs>100 and revs<120) gear=4;else
    end end end end end end end
   else
   if(coins>19 and coins<30)
    if(revs==0)gear=0;else
    if(revs>0 and revs<20)    gear=1;else
    if(revs>20 and revs<40)   gear=2;else
    if(revs>40 and revs<60)   gear=3;else
    if(revs>60 and revs<80)   gear=4;else
    if(revs>80 and revs<100)  gear=5;else
    if(revs>100 and revs<120) gear=5;else
    end end end end end end end
   else
   if(coins>29 and coins<35)
    if(revs==0)gear=0;else
    if(revs>0 and revs<20)    gear=1;else
    if(revs>20 and revs<40)   gear=2;else
    if(revs>40 and revs<60)   gear=3;else
    if(revs>60 and revs<80)   gear=4;else
    if(revs>80 and revs<100)  gear=5;else
    if(revs>100 and revs<120) gear=6;else
    end end end end end end end
   else
   if(coins>34)
    if(revs==0)gear=0;else
    if(revs>0 and revs<20)    gear=1;else
    if(revs>20 and revs<40)   gear=2;else
    if(revs>40 and revs<60)   gear=3;else
    if(revs>60 and revs<80)   gear=4;else
    if(revs>80 and revs<100)  gear=5;else
    if(revs>100 and revs<120) gear=6;else
    if(revs>120) gear=7;else
    end end end end end end end end
   end end end end end

   if(revs>122)revs=122;end
   if(speed<top_speed+(gear*5))speed+=gear;end
   if(speed>top_speed+(gear*5))speed-=5;end


if(go==1)/////////////////////////////////

  if(angle2>360000)angle2=0;end
  if(angle2<0)angle2=360000;end

  angle=angle2;
  if(speed>1)//speed+=5;end
   if(leftees or rightees)
    if(speed>200)speed-=2;end
    if(leftees)if(turn_angle<80)turn_angle+=4;end end
    if(rightees)if(turn_angle>-80)turn_angle-=4;end end
    if(leftees and turn_angle<0)turn_angle+=4;end
    if(rightees and turn_angle>0)turn_angle-=4;end
    if(leftees and turn_angle>77)if(drift<20)drift+=1;end end
    if(rightees and turn_angle<-77)if(drift>-20)drift-=1;end end
   end
  end
    if(not(leftees)AND NOT(rightees))
     if(turn_angle>16)turn_angle-=8;end
     if(turn_angle<-16)turn_angle+=8;end
     if(turn_angle>0)turn_angle-=2;end
     if(turn_angle<0)turn_angle+=2;end
    end
//drift out/////////////////////////////
   if(drift>0 and !leftees)drift--;
    if(rightees)drift=0;end
   end
   if(drift<0 and !rightees)drift++;
    if(leftees)drift=0;end
   end
   if(speed<50)drift=0;end

   if(drift>0)
    x+=get_distx(angleL,drift);y+=get_disty(angleL,drift);
   else
   if(drift<0)
    x-=get_distx(angleR,drift);y-=get_disty(angleR,drift);
   end end
////////////////////////////////////////
 advance(speed/spdiv);
/*
 if(downers)
  if(speed>-120 and speed<1)speed-=8;else
   if(speed>0)speed2=speed;speed-=8;sd=24;end
  end
 else sd=7;end
 if(speed<0)speed+=1;end
*/
if(speed>4 or speed<-10)
 angle2+=turn_angle*35;
 if(leftees or rightees) if(revs>0)revs-=1;end //speed-=1;   /*angle2+=turn_angle*50;speed*(40-speed/sd);*/if(speed2<120)speed2+=5;end leftees=true;rightees=false;if(speed>180)speed-=6;end //end//else
 //if(rightees)speed-=1;angle2-=turn_angle*50;/*speed*(40-speed/sd);*/if(speed2<120)speed2+=5;end rightees=true;leftees=false;if(speed>180)speed-=6;end else
 if(speed2>0)speed2-=1;end end //end
  if(speed2>110)
   angleL=angle2-90000;angleR=angle2+90000;
   if(leftees==true)
    x+=get_distx(angleL,turn_angle/4);y+=get_disty(angleL,turn_angle/4);
   else
   if(rightees==true)
    x+=get_distx(angleR,turn_angle/4);y+=get_disty(angleR,turn_angle/4);  //speed2/5
//    map_xput(0,track,604,x/10+lx,y/10+ly,angle-90000,60,4);
   else
//    map_xput(0,map1,800,x,y,angle2-90000,100,4);//skidmarks//////////////////
   end end
  end
end

//skidmark check////////////
if((uppers or butt1)and(turn_angle>77 or turn_angle<-77))
 from c=0 to 1;
  if(colour_checkR==tarmac[c] and rand(0,10)<speed/60)
   spray(x+rx*5,y+ry*5,601,angle-((graph-player)*1000),1);
   map_xput(0,trackmap,605,x/10+rx,y/10+ry,angle-90000,60,4);
  end
  if(colour_checkL==tarmac[c] and rand(0,10)<speed/60)
   spray(x+lx*5,y+ly*5,601,angle-((graph-player)*1000),2);
   map_xput(0,trackmap,605,x/10+lx,y/10+ly,angle-90000,60,4);
  end
 end
end////////////////////////
//cpu kart checker//////////////////////////////
WHILE (id2=get_id(TYPE drone))
 counter0=get_dist(id2);//s_volume=counter0/64;IF(s_volume>600)s_volume=600;END
//change_sound(channel[2],700-s_volume,(abs(REVS/4)+200)+GEARS*40);
 IF(counter0<50)//SOUND(PCM3,150,RAND(180,256));ENERGY-=5;
  if(x<id2.x)x-=50+speed/2;spark(x+50,y);end
  if(x>id2.x)x+=50+speed/2;spark(x-50,y);end
  if(y<id2.y)y-=50+speed/2;spark(x,y+50);end
  if(y>id2.y)y+=50+speed/2;spark(x,y-50);end
  if(speed>150)speed-=50;end
  coins--;coin_flip(x,y);
 end
if(!leftees and !rightees)
 if(age==old)
  IF(counter0>200 and counter0<300)graph=16+player;end
  IF(counter0<200)graph=17+player;end
 else
  IF(counter0>200 and counter0<300)graph=21+player;end
  IF(counter0<200)graph=22+player;end
 end

 IF(counter0<300)
  if(angle>45000 and angle<135000)
   if(x<id2.x)flags=0;end if(x>id2.x)flags=1;end
  end
  if(angle>225000 and angle<315000)
   if(x<id2.x)flags=1;end if(x>id2.x)flags=0;end
  end

  if(angle>135000 and angle<225000)
   if(y<id2.y)flags=1;end if(y>id2.y)flags=0;end
  end
  if(angle>315000  or  angle<45000)
   if(y<id2.y)flags=0;end if(y>id2.y)flags=1;end
  end
 end
end
end//////////////////////////////////////
//nana checker/////////////////////////
while(id2=get_id(type nana));
 xdist=get_dist(id2);
 if(xshells>0)
  if(xdist<50 and id2.xfired>50)size=0;spinner(x,y);
  spark(x-50,y);spark(x,y+50);spark(x,y-50);spark(x+50,y);
  signal(id2,s_kill_tree);xshells-=1;end
 end
end
//shell checker/////////////////////////
while(id2=get_id(type gshell));
 xdist=get_dist(id2);
 if(xshells>0)
  if(xdist<100 and id2.xfired>50)size=0;revs=30;if(speed>0)speed-=200;end
  scam=spinner(x,y);M7[0].CAMERA=scam;
  spark(x-50,y);spark(x,y+50);spark(x,y-50);spark(x+50,y);
  signal(id2,s_kill_tree);xshells-=1;end
 end
end
//oil spills//////////////////////////////
colour_check=map_get_pixel(0,track,(x/10),y/10);
if(size==94 and colour_check==74)size=0;spinner(x,y);end
//jump pads///////////////////////////////
b_colour=map_get_pixel(0,track+50,(x/80),(y/80));
//boost pads//////////////////////////////
colour_check=map_get_pixel(0,track+50,(x/80),(y/80)-1);
if(colour_check==238)boostpad=true;else boostpad=false;end
//pipe checker//////////////////////////////
from p=10 to 19;
 get_point(0,track,p,&px,&py); px*=10;py*=10;
 c_dist=fget_dist(x,y,px,py);
 if(c_dist<50)
  if(x<px)x-=speed/2;spark(x+50,y);else
  if(x>px)x+=speed/2;spark(x-50,y);else
  if(y<py)y-=speed/2;spark(x,y+50);else
  if(y>py)y+=speed/2;spark(x,y-50);end end end end
  if(speed>100)speed-=100;end

 end
end//////////////////////////////////////
//bonus catcher//////////////////////////////
from p=70 to 81;
 get_point(0,track,p,&px,&py); px*=10;py*=10;
 c_dist=fget_dist(x,y,px,py);
 colour_check=map_get_pixel(0,trackmap,(px/10-1),py/10-3);
 if(colour_check==103 and c_dist<90 and can_pickup_bonus)
  can_pickup_bonus=false;bonus_spinner();
  if(track==904)
   map_put(0,trackmap,856,px/10,py/10+1);
  else
   map_put(0,trackmap,855,px/10+1,py/10+1);
  end
 end
end//////////////////////////////////////
//coin collector//////////////////////////////
from p=20 to 69;
 get_point(0,track,p,&px,&py); px*=10;py*=10;
 c_dist=fget_dist(x,y,px,py);
 colour_check=map_get_pixel(0,trackmap,px/10,py/10);
 if(colour_check==106 and c_dist<60)
  coins++;//20to54coins //60to71bonus's
  coin_flip(x,y);
  map_put(0,trackmap,854,px/10,py/10);
 end
end//////////////////////////////////////
//sand tyre checker//////////////////////////////////
angleR=angle2+90000;angleL=angle2-90000;
rx=get_distx(angleR,4);ry=get_disty(angleR,4);
lx=get_distx(angleL,4);ly=get_disty(angleL,4);
colour_checkR=map_get_pixel(0,track,x/10+rx,y/10+ry);
colour_checkL=map_get_pixel(0,track,x/10+lx,y/10+ly);
if(speed>top_speed-100)
from c=0 to 2;
 if(colour_checkR==sand[c]) speed-=3;
  if(speed>40)
   spray(x+rx*5,y+ry*5,600,angle-((graph-player)*1000),1);
   map_xput(0,trackmap,604,x/10+rx,y/10+ry,angle-90000,60,4);
  end
 end
 if(colour_checkL==sand[c]) speed-=3;
  if(speed>40)
   spray(x+lx*5,y+ly*5,600,angle-((graph-player)*1000),2);
   map_xput(0,trackmap,604,x/10+lx,y/10+ly,angle-90000,60,4);
  end
 end
end
end
//barriers/////////////////////////////////////////////////
colour_check_up=map_get_pixel(0,track+50,(x/80),(y/80)-1);
colour_check_down=map_get_pixel(0,track+50,(x/80),(y/80)+1);
colour_check_left=map_get_pixel(0,track+50,(x/80)-1,(y/80));
colour_check_right=map_get_pixel(0,track+50,(x/80)+1,(y/80));

if(canjump)
 if(colour_check_up==237)y=lasty+10;if(speed>60)speed-=10;spark(x,y-50);end end
 if(colour_check_down==237)y=lasty-10;if(speed>60)speed-=10;spark(x,y+50);end end
 if(colour_check_left==237)x=lastx+10;if(speed>60)speed-=10;spark(x-50,y);end end
 if(colour_check_right==237)x=lastx-10;if(speed>60)speed-=10;spark(x+50,y);end end
end
//////////////////////////////////////////
end//if(go==1);//////////////////////////
//speed vibrations//////////////////////
if(speed>100 and canjump)
 if(top_speed>240)
  if(height==0)height=3;else height=0;end
 else
 if(height==0)height=1;else height=0;end
 end
end
//

//weapons fire////////////////

if(bstopped and bstate==8 and timer[2]>50)canfire=true;end

if(canfire==true)
 if(bstopped==true and butt2)
  if(bstate==1 and timer[2]>100)canfire=false;signal(type bonus_spinner,s_kill);
   mushboost=true;can_pickup_bonus=true;ammo+=1;
  end
  if(bstate==2 and timer[2]>100)canfire=false;//signal(type bonus_spinner,s_kill);
   mushboost=true;ammo+=1;bstate=1;timer[2]=0;
  end
  if(bstate==3)canfire=false;//signal(type bonus_spinner,s_kill);
   mushboost=true;ammo+=1;bstate=2;timer[2]=0;
  end

  if(bstate==4)canfire=false;signal(type bonus_spinner,s_kill);
   nana(x,y);can_pickup_bonus=true;ammo+=1;
  end


  if(bstate==7)canfire=false;signal(type bonus_spinner,s_kill);
   star();can_pickup_bonus=true;
  end

  if(bstate==8)canfire=false;//canboost=false;
   signal(type bonus_spinner,s_freeze);
   mushboost=false;mushboost=true;bammo-=1;timer[2]=0;
   if(bammo<1)bammo=0;ammo=1;signal(type bonus_spinner,s_kill);
   bstate=0;canfire=false;can_pickup_bonus=true;end
  end

  if(bstate==10)canfire=false;signal(type bonus_spinner,s_kill);
   if(downers)Gshell(x,y,angle,0);else Gshell(x,y,angle,120);end
   can_pickup_bonus=true;ammo+=1;
  end
  if(bstate==11)canfire=false;signal(type bonus_spinner,s_kill);
   g1id=tripleGshell(x,y,0);g2id=tripleGshell(x,y,120000);g3id=tripleGshell(x,y,240000);
   can_pickup_bonus=true;ammo+=3;
  end

  if(bstate==12)canfire=false;signal(type bonus_spinner,s_kill);
   Rshell(x,y,angle,120);can_pickup_bonus=true;ammo+=1;
  end
  if(bstate==13)canfire=false;signal(type bonus_spinner,s_kill);
   r1id=tripleRshell(x,y,0);r2id=tripleRshell(x,y,120000);r3id=tripleRshell(x,y,240000);
   can_pickup_bonus=true;ammo+=3;
  end

 bstoppin=false;
 end
end



//borders//////////////////////
if(x<0)x=0;end if(y<0)y=0;end
if(x>10240)x=10240;end if(y>10240)y=10240;end
LASTY=Y;LASTX=X;
frame;end end
/////////////////////////
////////////////////////
///////////////////////
//////////////////////
/////////////////////
////////////////////
///////////////////
//////////////////
/////////////////
///////////////
/////////////
//////////
//////
//
////////////////////////
process star();
begin timer[9]=0;
 repeat
  convert_palette(fpg1,father.graph,&star_colour);father.file=fpg1;father.flags=father.flags+4;frame;
  convert_palette(fpg1,father.graph,&norm_colour);father.file=fpg0;father.flags=father.flags;frame;
  convert_palette(fpg1,father.graph,&star_colour2);father.file=fpg1;father.flags=father.flags+4;frame;
  convert_palette(fpg1,father.graph,&norm_colour);father.file=fpg0;father.flags=father.flags;frame;
  convert_palette(fpg1,father.graph,&star_colour2);father.file=fpg1;father.flags=father.flags+4;frame;
  convert_palette(fpg1,father.graph,&star_colour);father.file=fpg1;father.flags=father.flags+4;frame;
  convert_palette(fpg1,father.graph,&norm_colour);father.file=fpg0;father.flags=father.flags;frame;

  top_speed=250;pcar.speed+=5;
 until(timer[9]>1000);father.file=fpg0;signal(id,s_kill);
  unload_fpg(fpg1);
  fpg1=LOAD_FPG("mkremix\mk3.fpg");
end
////////////////////////
process bonus_spinner();
private bspin=32;
begin x=320;y=100;z=-200;graph=580;size=200;region=3;
      bstate=rand(0,13);bstopped=0;
loop
 if(bstate>13)bstate=1;end y+=bspin;
 if(y>150)y=0;bstate+=1;end

 switch(bstate)
  case 1: graph=580;size=200;end
  case 2: graph=581;size=200;end
  case 3: graph=582;size=200;end
  case 4: graph=583;size=200;end
  case 5: graph=584;size=200;end
  case 6: graph=585;size=200;end
  case 7: graph=586;size=200;end
  case 8: graph=587;size=200;end
  case 9: graph=588;size=200;end
  case 10: graph=589;size=225;end
  case 11: graph=590;size=125;end
  case 12: graph=591;size=150;end
  case 13: graph=592;size=100;end
 end

 IF(key(_b))bstate+=1;frame(1000);end


 if(butt2)bstoppin=true;end
 if(bstoppin)bspin--;end

 if(bspin<0)y=52;
  if(ammo==0)bstopped=true;pcar.canfire=true;end
  if(bstate==8)bammo=10;end
 end

frame;end end
///////////////////////////////
process nana(x,y)

begin ctype=c_m7;graph=625;size=0;xshells++;xfired=0;resolution=10;map_ball(x,y,509);
loop
if(size<50)size+=2;end
if(candrop)
 if(butt2)x=father.x;y=father.y;height=father.height-20;else candrop=false;ammo-=1;height=0;end
else if(xfired<60)xfired++;end end
frame;end end
///////////////////////////////
process tripleGshell(x,y,angle);
PRIVATE angle1;DISTA=0;
BEGIN  xgraph=&xgshell;xshells++;HEIGHT=0;SIZE=0;CTYPE=C_M7;
       X=FATHER.X;Y=FATHER.Y;resolution=10;map_ball(x,y,507);
       timer[3]=0;
LOOP
//  IF(FINISH==FALSE)
  X=FATHER.X+get_distx(ANGLE+angle1,DISTA);Y=FATHER.Y+get_disty(ANGLE+angle1,DISTA);
//   ELSE
//   IF(FINISH==TRUE)X=CAR9.X+get_distx(ANGLE+angle1,DISTA);Y=CAR9.Y+get_disty(ANGLE+angle1,DISTA);END
//  END
  IF(SIZE<100)SIZE+=5;END IF(DISTA<60)DISTA+=4;END
  angle+=8000;

  if(candrop and size>90 and timer[3]>50)
   if(butt2 and ammo==3 and id==g3id)candrop=false;
    signal(g3id,s_kill_tree);Gshell(x,y,xang,0);xshells--;end
   if(butt2 and ammo==2 and id==g2id)candrop=false;
    signal(g2id,s_kill_tree);Gshell(x,y,xang,0);xshells--;end
   if(butt2 and ammo==1 and id==g1id)candrop=false;
    signal(g1id,s_kill_tree);Gshell(x,y,xang,0);xshells--;end
  end
 //colour=map_get_pixel(0,trackno,X/100,Y/100);
 //IF(COLOUR==119 OR COLOUR==120 OR COLOUR==121)
 // HEIGHT=-7; SIZE=2; FLAGS=4; SIGNAL(SHAB,S_SLEEP);
 // ELSE
 //  HEIGHT=0; SIZE=3; FLAGS=0; SIGNAL(SHAB,S_WAKEUP);
 //END
FRAME;END END
///////////////////////////////
process tripleRshell(x,y,angle);
PRIVATE angle1;DISTA=0;
BEGIN  xgraph=&xRshell;xshells++;HEIGHT=0;SIZE=0;CTYPE=C_M7;
       X=FATHER.X;Y=FATHER.Y;resolution=10;map_ball(x,y,508);
       timer[3]=0;
LOOP
//  IF(FINISH==FALSE)
  X=FATHER.X+get_distx(ANGLE+angle1,DISTA);Y=FATHER.Y+get_disty(ANGLE+angle1,DISTA);
//   ELSE
//   IF(FINISH==TRUE)X=CAR9.X+get_distx(ANGLE+angle1,DISTA);Y=CAR9.Y+get_disty(ANGLE+angle1,DISTA);END
//  END
  IF(SIZE<80)SIZE+=5;END IF(DISTA<60)DISTA+=4;END
  angle+=8000;

  if(candrop and size>70 and timer[3]>50)
   if(butt2 and ammo==3 and id==r3id)candrop=false;
    signal(r3id,s_kill_tree);Rshell(x,y,xang,0);xshells--;end
   if(butt2 and ammo==2 and id==r2id)candrop=false;
    signal(r2id,s_kill_tree);Rshell(x,y,xang,0);xshells--;end
   if(butt2 and ammo==1 and id==r1id)candrop=false;
    signal(r1id,s_kill_tree);Rshell(x,y,xang,0);xshells--;end
  end
 //colour=map_get_pixel(0,trackno,X/100,Y/100);
 //IF(COLOUR==119 OR COLOUR==120 OR COLOUR==121)
 // HEIGHT=-7; SIZE=2; FLAGS=4; SIGNAL(SHAB,S_SLEEP);
 // ELSE
 //  HEIGHT=0; SIZE=3; FLAGS=0; SIGNAL(SHAB,S_WAKEUP);
 //END
FRAME;END END
///////////////////////////////
process Gshell(x,y,xang,xspeed)
begin ctype=c_m7;size=0;xgraph=&xgshell;xshells++;xfired=0;resolution=10;
//write_int(0,100,80,5,&x);write_int(0,120,80,3,&y);
map_ball(x,y,507);
loop angle+=10000;if(size<100)size+=10;end
if(candrop)
 if(butt2)x=pcar.x;y=pcar.y;height=pcar.height-20;timer[3]=0;
 else candrop=false;ammo-=1;height=0;father.candrop=true;
  if(!downers)xspeed=120;xang=pcar.angle;else xspeed=0;end
 end
else
xadvance(xang,xspeed);
if(xchange<3)xchange++;else xchange=0;end
if(xspeed>40 and xchange==0)xspeed--;end
if(xfired<60)xfired++;end
//barriers//////////////////////////////
colour_check_up=map_get_pixel(0,track+50,(x/80),(y/80)-1);
colour_check_down=map_get_pixel(0,track+50,(x/80),(y/80)+1);
colour_check_left=map_get_pixel(0,track+50,(x/80)-1,(y/80));
colour_check_right=map_get_pixel(0,track+50,(x/80)+1,(y/80));
if(colour_check_up==237)   /*y=lasty+xspeed/2;*/spark(x,y-50);
 xangA=90000-xang;xangB=90000+xangA;xang=xangB+180000;
else
if(colour_check_down==237) /*y=lasty-xspeed/2;*/spark(x,y+50);
 xangA=270000-xang;xangB=270000+xangA;xang=xangB+180000;
else
if(colour_check_left==237) /*x=lastx+xspeed/2;*/spark(x-50,y);
 xangA=0-xang;xangB=0+xangA;xang=xangB+180000;
else
if(colour_check_right==237)/*x=lastx-xspeed/2;*/spark(x+50,y);
 xangA=180000-xang;xangB=180000+xangA;xang=xangB+180000;
end end end end
//if(xdist<100)id2.spin=true;id2.stop=1;
//spark(x-50,y);spark(x,y+50);spark(x,y-50);spark(x+50,y);
//signal(id,s_kill);end
LASTY=Y;LASTX=X;
end//candrop=0;
frame;end end
///////////////////////////////
process Rshell(x,y,xang,xspeed)

begin ctype=c_m7;size=0;xgraph=&xrshell;resolution=10;
//write_int(0,100,100,5,&dx);write_int(0,120,100,3,&dy);
//write_int(0,100,80,5,&x);write_int(0,120,80,3,&y);
from counter=1 to 7;id2=get_id(type drone);
 if(id2.pos==pcar.pos-1)break;end
END
map_ball(x,y,508);
loop angle+=10000;if(size<80)size+=5;end
//if(xchange<3)xchange++;else xchange=0;end
//if(xspeed>40)xspeed--;end
if(candrop)
 if(butt2)x=pcar.x;y=pcar.y;height=pcar.height-20;timer[3]=0;
 else candrop=false;ammo-=1;height=0;
  if(!downers)xspeed=120;xang=pcar.angle;else xspeed=0;end
 end
else

xang=get_angle(id2);
xdist=get_dist(id2);
xadvance(xang,xspeed);
//barriers//////////////////////////////
colour_check_up=map_get_pixel(0,track+50,(x/80),(y/80)-1);
colour_check_down=map_get_pixel(0,track+50,(x/80),(y/80)+1);
colour_check_left=map_get_pixel(0,track+50,(x/80)-1,(y/80));
colour_check_right=map_get_pixel(0,track+50,(x/80)+1,(y/80));
if(colour_check_up==237)   y=lasty+xspeed/2;spark(x,y-50);
 signal(id,s_kill_tree);
else
if(colour_check_down==237) y=lasty-xspeed/2;spark(x,y+50);
 signal(id,s_kill_tree);
else
if(colour_check_left==237) x=lastx+xspeed/2;spark(x-50,y);
 signal(id,s_kill_tree);
else
if(colour_check_right==237)x=lastx-xspeed/2;spark(x+50,y);
 signal(id,s_kill_tree);
end end end end

/*
if(xdist<10)id2.spin=true;id2.stop=1;
spark(x-50,y);spark(x,y+50);spark(x,y-50);spark(x+50,y);
signal(id,s_kill_tree);ammo-=1;end
*/
LASTY=Y;LASTX=X;
end//candrop
frame;end end

//////////////////////////////////
process spinner(x,y);
begin graph=1+player;ctype=c_m7;resolution=10;size=94;
      angle=father.angle;//graph=father.xgraph;
if(father.age==old)
 repeat graph++; x=father.x;y=father.y;angle+=20000;
 frame;until(graph>12+player) flags=1;graph=12+player;
 repeat graph--; x=father.x;y=father.y;angle+=20000;
 frame;until(graph<2+player) flags=0;father.size=94;
 M7[0].CAMERA=pcar;father.drift=0;
else
 repeat graph++; x=father.x;y=father.y;angle+=20000;
 frame;until(graph=>20+player) flags=1;//graph=1+player;
 repeat graph--; x=father.x;y=father.y;angle+=20000;
 frame;until(graph<2+player) flags=0;father.size=94;father.speed=0;
 M7[0].CAMERA=pcar;father.drift=0;
end
end
////////////////////
//process cpu_spinner();
///////////////////////////////////////////////////
PROCESS JUMPERINFO();
BEGIN  FATHER.CANJUMP=TRUE;
LOOP
 IF(FATHER.b_colour==236)
 IF(FATHER.CANJUMP)FATHER.CANJUMP=FALSE;HSPEED+=7;
 IF(FATHER==PCAR)REVS+=20;END

 REPEAT FRAME;FATHER.HEIGHT+=HSPEED;
 if(m7[0].distance<30)m7[0].distance++;end
 IF(FATHER.HEIGHT>40)HSPEED-=1;END
// IF(FATHER==PCAR)REVS+=50;END
 UNTIL(FATHER.HEIGHT<1)HSPEED=0;FATHER.HEIGHT=0;FATHER.CANJUMP=TRUE;
 ELSE FATHER.CANJUMP=TRUE;END end
FRAME;
END
END
 //IF(FATHER.b_colour==118 or FATHER.b_colour==249)
///////////////////////
process coin_flip(x,y);
private coin_move;
begin ctype=c_m7;graph=500;resolution=10;size=50;
      coin_move=rand(-10,10);
repeat //X=FATHER.X; Y=FATHER.Y;
 height+=5+father.speed/10;flags=rand(0,3);//size+=3;
 x+=coin_move;y+=coin_move;
frame;until(height>80);end
/////////////////////////////////////
PROCESS spray(x,y,graph,angle,state);
private sx;sy;
BEGIN flags=rand(4,5);SIZE=40;CTYPE=C_M7;resolution=10;
height=-5;
REPEAT
switch(state)
 case 1:
  x=father.x+(father.rx*7)+sx;y=father.y+(father.ry*7)+sy;
 end
 case 2:
  x=father.x+father.lx*7+sx;y=father.y+father.ly*7+sy;
 end
end
sx+=get_distx(angle-180000,20);sy+=get_disty(angle-180000,20);
HEIGHT+=3;
size+=8;
FRAME;
UNTIL (size>=140)
END
/////////////////////////////////////
process spark(x,y)
begin ctype=c_m7;graph=606;resolution=10;size=50;height=20;
repeat //X=FATHER.X; Y=FATHER.Y;
 flags=rand(0,3);size+=10;
frame;until(size>100);end
/////////////////////////////////////
PROCESS SHADOW(x,y,angle)
BEGIN
CTYPE=C_M7; GRAPH=602; FLAGS=4; Z=+100; size=90;
priority=-1;resolution=10;
LOOP X=FATHER.X;Y=FATHER.Y;
if(size==90)size=0;else size=90;end
if(father.age==new)graph=602;else graph=603;end
FRAME;END END
//////////////////////////
PROCESS object(X,Y,GRAPH,SIZE,ANGLE,FLAGS,CTYPE,Z,HEIGHT,REGION)
private relativex;
BEGIN relativex=x;
LOOP
 if(graph==802)
  x=(relativex-scroll.x0)*1;
 end
FRAME;END END
////////////////////////////////////////
process lakito();
begin x=500;y=-20;z=-300;graph=400;size=200;timer[5]=0;
repeat frame;y+=4;if(x>400)x-=4;end if(size<300)size+=4;end sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,403,size,z-1);
until(y>140)
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,403,size,z-1);
until(timer[5]>30)graph=400;timer[5]=0;
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,403,size,z-1);
until(timer[5]>100)graph=401;timer[5]=0;sound(pcm1,256,256);
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,404,size,z-1);
until(timer[5]>30)graph=400;timer[5]=0;
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,404,size,z-1);
until(timer[5]>100)graph=401;timer[5]=0;sound(pcm1,256,256);
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,405,size,z-1);
until(timer[5]>30)graph=400;timer[5]=0;
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,405,size,z-1);
until(timer[5]>100)graph=401;timer[5]=0; sound(pcm1,256,356);
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,406,size,z-1);
until(timer[5]>30)graph=400;timer[5]=0;
repeat frame;sign(x-36,y-22,402,size,z+1);sign(x-48,y+27,406,size,z-1);
until(timer[5]>30)graph=401;timer[5]=0;go=1;
repeat frame;y-=8;size+=12;sign(x-36,y-22,406,size,z+1);sign(x-48,y+27,403,size,z-1);
until(y<-20)
frame;end
//
process laplakito();
begin x=500;y=-20;z=-300;graph=407;size=200;timer[5]=0;
repeat y+=4;if(x>400)x-=4;end if(size<300)size+=4;end sign(x,y+18,410,size,z-1);
frame;until(y>140)graph=408;
repeat y+=2;if(x>350)x-=2;end sign(x,y-9,411,size,z-1);
frame;until(y>150)graph=409;
repeat y+=1;if(x>300)x-=2;end sign(x,y-50,411+pcar.my_lap,size,z-1);
frame;until(y>160)
repeat y-=4;x-=3;sign(x,y-50,411+pcar.my_lap,size,z-1);
frame;until(y<-20)
frame;end
//
process sign(x,y,graph,size,z);
begin
frame;
end
////////////////////////////////////////
PROCESS TIME();
private //go=1;
BEGIN
while(go==0)frame;timer[0]=0;end
LOOP while(go==0)frame;timer[0]=0;end
 msec=timer[0]%100; secs=timer[0]/100%60; mins=timer[0]/100/60%60;
 Tsecs=60-secs;Tmins=1-mins;Tmsec=100-msec;//count down
FRAME;END END
///////////////////////////////////
process midi_tracker();
private playing_song;
begin
loop
 midi_pattern=get_song_pos();
 midi_line=get_song_line();


 if(go==0 and midi_pattern==1)
  playing_song=false;
  set_song_pos(1);
 end
 if(go==1 and playing_song==false)
  playing_song=true;
  set_song_pos(1);
 end
 if(midi_pattern==14 and midi_line==85)
  set_song_pos(1);
 end
 if(racend==true)racend=false;
  song_id=load_song("mkremix\smkmidi\dkwin.xm",1);
  song(song_id);
 end
frame;end end
//////////////////////////

PROCESS WHERERU();
BEGIN
 LOOP
  FATHER.WHERE=FGET_DIST(FATHER.X,FATHER.Y,
                         car[0].cpoint[father.my_pointno].x,
                         car[0].cpoint[father.my_pointno].y);

//  IF(FATHER<>pCAR)
//   IF(FATHER.WHERE<3000)FATHER.my_POINTNO+=1;END
//  ELSE
//  IF(FATHER==pCAR)
   IF(FATHER.WHERE<3000)FATHER.my_POINTNO+=2;END
//  END
//  END

  IF(FATHER.my_POINTNO=>lapcpointmax)FATHER.my_POINTNO=lapcpointstart;
  father.my_LAP+=1;FATHER.LAPVAR+=100;
  if(father==pcar)laplakito();end

   //IF(FATHER==PCAR)TURBO+=1;TIMEKEEPER();LAPINFO();END
  END
 FRAME;
 END
END
////////////////////////////////////////
////////////////////////////////////////
PROCESS POSITIONS();
BEGIN
PCAR.POS=1;d1.POS=1;d2.pos=1;d3.pos=1;
  d4.pos=1;d5.pos=1;d6.pos=1;d7.pos=1;
///////////////////////////////////////////////////
IF(Pcar.PDIST>d1.PDIST)d1.pos++;ELSE Pcar.pos++;END
IF(Pcar.PDIST>d2.PDIST)d2.pos++;ELSE Pcar.pos++;END
IF(Pcar.PDIST>d3.PDIST)d3.pos++;ELSE Pcar.pos++;END
IF(Pcar.PDIST>d4.PDIST)d4.pos++;ELSE Pcar.pos++;END
IF(Pcar.PDIST>d5.PDIST)d5.pos++;ELSE Pcar.pos++;END
IF(Pcar.PDIST>d6.PDIST)d6.pos++;ELSE Pcar.pos++;END
IF(Pcar.PDIST>d7.PDIST)d7.pos++;ELSE Pcar.pos++;END
IF(Pcar.PDIST>d8.PDIST)d8.pos++;ELSE Pcar.pos++;END
///////////////////////////////////////////////
IF(d1.PDIST>d2.PDIST)d2.pos++;ELSE d1.pos++;END
IF(d1.PDIST>d3.PDIST)d3.pos++;ELSE d1.pos++;END
IF(d1.PDIST>d4.PDIST)d4.pos++;ELSE d1.pos++;END
IF(d1.PDIST>d5.PDIST)d5.pos++;ELSE d1.pos++;END
IF(d1.PDIST>d6.PDIST)d6.pos++;ELSE d1.pos++;END
IF(d1.PDIST>d7.PDIST)d7.pos++;ELSE d1.pos++;END
IF(d1.PDIST>d8.PDIST)d8.pos++;ELSE d1.pos++;END
///////////////////////////////////////////////
IF(d2.PDIST>d3.PDIST)d3.pos++;ELSE d2.pos++;END
IF(d2.PDIST>d4.PDIST)d4.pos++;ELSE d2.pos++;END
IF(d2.PDIST>d5.PDIST)d5.pos++;ELSE d2.pos++;END
IF(d2.PDIST>d6.PDIST)d6.pos++;ELSE d2.pos++;END
IF(d2.PDIST>d7.PDIST)d7.pos++;ELSE d2.pos++;END
IF(d2.PDIST>d8.PDIST)d8.pos++;ELSE d2.pos++;END
///////////////////////////////////////////////
IF(d3.PDIST>d4.PDIST)d4.pos++;ELSE d3.pos++;END
IF(d3.PDIST>d5.PDIST)d5.pos++;ELSE d3.pos++;END
IF(d3.PDIST>d6.PDIST)d6.pos++;ELSE d3.pos++;END
IF(d3.PDIST>d7.PDIST)d7.pos++;ELSE d3.pos++;END
IF(d3.PDIST>d8.PDIST)d8.pos++;ELSE d3.pos++;END
///////////////////////////////////////////////
IF(d4.PDIST>d5.PDIST)d5.pos++;ELSE d4.pos++;END
IF(d4.PDIST>d6.PDIST)d6.pos++;ELSE d4.pos++;END
IF(d4.PDIST>d7.PDIST)d7.pos++;ELSE d4.pos++;END
IF(d4.PDIST>d8.PDIST)d8.pos++;ELSE d4.pos++;END
///////////////////////////////////////////////
IF(d5.PDIST>d6.PDIST)d6.pos++;ELSE d5.pos++;END
IF(d5.PDIST>d7.PDIST)d7.pos++;ELSE d5.pos++;END
IF(d5.PDIST>d8.PDIST)d8.pos++;ELSE d5.pos++;END
///////////////////////////////////////////////
IF(d6.PDIST>d7.PDIST)d7.pos++;ELSE d6.pos++;END
IF(d6.PDIST>d8.PDIST)d8.pos++;ELSE d6.pos++;END
///////////////////////////////////////////////
IF(d7.PDIST>d8.PDIST)d8.pos++;ELSE d7.pos++;END
///////////////////////////////////////////////
END
//////////////////////////////////////////////////




















