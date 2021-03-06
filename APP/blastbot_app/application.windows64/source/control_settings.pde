//---------------------------------------------------------------------------
//
// ControlP5 UX Objects Setup
//
//---------------------------------------------------------------------------

void setupControls(){
  //global control panel settings
  cP5.setFont( fontS );
  cP5.setColorForeground( fgColor );
  cP5.setColorBackground( bgColor );
  cP5.setColorValueLabel( bgColor );
  cP5.setColorCaptionLabel( bgColor );
  cP5.setColorActive( activeColor );

  //MANUAL COMMAND ENTRY
  //---------------------------------------------------------------------------
  //Issues typed out GCODE command
  cP5.addTextfield("cmd_entry")
  .setPosition( 50, 620 )
  .setSize( 700, 50 )
  .setFont( fontL )
  .setFocus( true )
  .setColor( color(0) )
  .setAutoClear( true )
  //caption settings
  .getCaptionLabel()
  .setColor(255)
  .setFont(fontM)
  .alignX(ControlP5.LEFT)
  .setText("Manual GCODE Entry")
  ;
  
  //FILE CONTROLS
  cP5.addBang("refresh")
  .setPosition(850,100)
  .setSize(250, 25)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("REFRESH")
  ;
  
  cP5.addBang("run_l_clean")
  .setPosition(850,225)
  .setSize(500, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("RUN L CLEANING")
  ;
  
  cP5.addBang("run_l_blast")
  .setPosition(850,275)
  .setSize(500, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontL)
  .setText("RUN L BLASTING")
  ;
  
  cP5.addBang("run_r_clean")
  .setPosition(850,425)
  .setSize(500, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("RUN R CLEANING")
  ;
  
  cP5.addBang("run_r_blast")
  .setPosition(850,475)
  .setSize(500, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontL)
  .setText("RUN R BLASTING")
  ;

  //MOTOR TOGGLES
  //---------------------------------------------------------------------------
  //X-AXIS TOGGLE - Top-Left
  cP5.addToggle("x")
  .setPosition(50, 50)
  .setSize(50, 50)
  //caption settings
  .getCaptionLabel()
  .alignX(ControlP5.LEFT)
  .setColor(0)
  .setFont(fontM)
  .setText("X")
  ;
  //Y-AXIS TOGGLE - Top-Right
  cP5.addToggle("y")
  .setPosition(500, 50)
  .setSize(50, 50)
  //caption settings
  .getCaptionLabel()
  .alignX(ControlP5.RIGHT)
  .setColor(0)
  .setFont(fontM)
  .setText("Y")
  ;

  //MOTOR JOGGING
  //---------------------------------------------------------------------------
  //JOG FORWARD BUTTON
  //Send jog forward signal to all selected motors
  cP5.addBang("jog_forward")
  .setPosition(600, 50)
  .setSize(95, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("F")
  ;

  //JOG BACKWARD BUTTON
  //Send jog backward signal to all selected motors
  cP5.addBang("jog_backward")
  .setPosition(600, 100)
  .setSize(95, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("RW")
  ;
  
  //JOG FORWARD BUTTON
  //Send jog forward signal to all selected motors
  cP5.addBang("jog_forward_ff")
  .setPosition(700, 50)
  .setSize(95, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("FF")
  ;

  //JOG BACKWARD BUTTON
  //Send jog backward signal to all selected motors
  cP5.addBang("jog_backward_ff")
  .setPosition(700, 100)
  .setSize(95, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("FRW")
  ;

  //MOTOR ENABLE/DISABLE
  //---------------------------------------------------------------------------
  //DISABLE BUTTON
  //Send disengage signal to all selected motors
  cP5.addBang("step_f")
  .setPosition(600, 200)
  .setSize(98, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("STEP+")
  ;

  //ENABLE BUTTON
  //Send engage signal to all selected motors
  cP5.addBang("step_b")
  .setPosition(702, 200)
  .setSize(98, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("STEP-")
  ;

  //SPRAYER ENABLE/DISABLE
  //---------------------------------------------------------------------------
  //DISABLE BUTTON
  //Turns off blast
  cP5.addBang("blast_off")
  .setPosition(600, 275)
  .setSize(98, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("BLAST OFF")
  ;

  //ENABLE BUTTON
  //Turns on sprayer
  cP5.addBang("blast_on")
  .setPosition(702, 275)
  .setSize(98, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("BLAST ON")
  ;
  //DISABLE BUTTON
  //Turns off sprayer
  cP5.addBang("air_off")
  .setPosition(600, 330)
  .setSize(98, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("AIR OFF")
  ;

  //ENABLE BUTTON
  //Turns on sprayer
  cP5.addBang("air_on")
  .setPosition(702, 330)
  .setSize(98, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("AIR ON")
  ;

  //INITIAL SPOOL UP
  //---------------------------------------------------------------------------

  //Send teleport signal
  cP5.addToggle("fast_mode")
  .setPosition(600, 400)
  .setSize(200, 45)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(0)
  .setFont(fontM)
  .setText("FAST MODE")
  ;

  //TELEPORT
  //---------------------------------------------------------------------------

  //Send teleport signal
  cP5.addBang("teleport")
  .setPosition(600, 450)
  .setSize(200, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("SET ORIGIN (0,0)")
  ;
  
  //TEST PATTERN
  //---------------------------------------------------------------------------

  //Send test pattern signal
  cP5.addBang("test_pattern")
  .setPosition(600, 500)
  .setSize(200, 45)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontM)
  .setText("RUN TEST PATTERN")
  ;

  //AXIAL MOVE COMMANDS
  //---------------------------------------------------------------------------

  //GO HOME
  cP5.addBang("go_home")
  .setPosition(250,250)
  .setSize(100,100)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("GO HOME")
  ;
  
  //X +100 BUTTON
  cP5.addBang("x_100")
  .setPosition(500, 275)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("X +100")
  ;

  //X +10 BUTTON
  cP5.addBang("x_10")
  .setPosition(445, 275)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("X +10")
  ;

  //X -100 BUTTON
  cP5.addBang("x_-100")
  .setPosition(50, 275)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("X -100")
  ;

  //X -10 BUTTON
  cP5.addBang("x_-10")
  .setPosition(105, 275)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("X -10")
  ;

  //X +100 BUTTON
  cP5.addBang("y_100")
  .setPosition(275, 50)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("Y +100")
  ;

  //Y +10 BUTTON
  cP5.addBang("y_10")
  .setPosition(275, 105)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("Y +10")
  ;

  //Y -100 BUTTON
  cP5.addBang("y_-100")
  .setPosition(275,500)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("Y -100")
  ;

  //Y -10 BUTTON
  cP5.addBang("y_-10")
  .setPosition(275, 445)
  .setSize(50, 50)
  .setTriggerEvent(Bang.RELEASE)
  //caption settings
  .getCaptionLabel()
  .align(ControlP5.CENTER, ControlP5.CENTER)
  .setColor(255)
  .setFont(fontS)
  .setText("Y -10")
  ;
}