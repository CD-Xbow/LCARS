;LCARS replica using 
; - 
; - An LCARS Font
; - A graphic 
XIncludeFile "CustomButtons.pbi"
;--------------------------------------------------------------------------
Global Window_0

Global Image_0, Text_0, Image_1, Text_1, OpenGL_0
;Image_0 = LoadImage(#PB_Any,"topleft.jpg")
;Img_Window_0_1 = LoadImage(#PB_Any,"midleft.jpg")

  UsePNGImageDecoder()
  UseJPEGImageDecoder()

Procedure.i MyButton_Flat(Gadget, X, Y, Width, Height, Text.s)
        ; flat button square no radius no gradient
        MyButton::SetTemplate(MyButton::#Prop_Align, 0)
        MyButton::SetTemplate(MyButton::#Prop_Gradient, 0)
        MyButton::SetTemplate(MyButton::#Prop_Radius, 0)
        MyButton::SetTemplate(MyButton::#Prop_Type, MyButton::#Type_Normal)
        
        ProcedureReturn MyButton::New(Gadget, X, Y, Width, Height,Text)
        
 EndProcedure
    
    Enumeration ;Gadgets
  #Image_0
    EndEnumeration
;     Enumeration    
;         #MenuItem_1
;         #MenuItem_2
;         #MenuItem_3
;     EndEnumeration
    
    Define Btn1, Btn2, Btn3, Btn4, Btn5, Btn6, Btn7, mnu, gdt,img
    
    Procedure   OnClick_Btn6()
        MessageRequester("USS Firestar - System Warning","EJECT WARP CORE!", #PB_MessageRequester_Warning | #PB_MessageRequester_YesNo)
      EndProcedure
      
      ;Font - LCAES.ttf is local
      RegisterFontFile("LCARS.ttf")
      LoadFont(0, "LCARS", 16)
      SetGadgetFont(0, FontID(0))

    
    If OpenWindow(Window_0, 0, 0, 600, 480, "TOS LCARS", #PB_Window_SystemMenu | #PB_Window_ScreenCentered | #PB_Window_MinimizeGadget)
        SetWindowColor(0,$000000)
        ;Load the top graphic
        Image_0 = LoadImage(0,"topleft.jpg")
        ImageGadget(0,  10, 10, 100, 83, ImageID(0))  
        ;Use a text gadget to form the line to complete graphic
        Text_0 = TextGadget(#PB_Any, 130, 123, 460, 12, "")
        SetGadgetColor(Text_0, #PB_Gadget_FrontColor,RGB(128,128,255))
        SetGadgetColor(Text_0, #PB_Gadget_BackColor,RGB(153,153,255))
        ; top text box
        Text1 = TextGadget(#PB_Any, 150, 20, 490, 90, "Initialising LCARS interface")
        SetGadgetColor(Text1, #PB_Gadget_FrontColor,RGB(255,128,0))
        SetGadgetColor(Text1, #PB_Gadget_BackColor,RGB(0,0,0))
       SetGadgetFont(Text1, FontID(0)) 
       ; SetGadgetFont
        
        ;Set up the buttons 
        
        Btn1 = MyButton::New(#PB_Any, 13, 410, 104, 30,"Help", "normal button")
        Btn2 = MyButton::New(#PB_Any, 13, 144, 104, 30,"New", "normal button")
          
        Btn3 = MyButton::New(#PB_Any, 13, 178, 104, 30,"Open", "normal button")
        Btn4 = MyButton::New(#PB_Any, 13, 212, 104, 30,"Save", "normal button")
        Btn5 = MyButton::New(#PB_Any, 13, 246, 104, 30, "Initiate Warp", "normal button")
        Btn6 = MyButton::New(#PB_Any, 13, 280, 104, 30,"Eject Core?", "normal button")
        Btn7 = MyButton::New(#PB_Any, 520, 10, 104, 30,"Exit Warp", "normal button")
                MyButton::SetProperty(Btn7, MyButton::#Prop_Font, 0)
      ;         
        MyButton::SetProperty(Btn1, MyButton::#Prop_Radius,20) 
        MyButton::SetProperty(Btn1, MyButton::#Prop_BackColor, $CD944F)
        MyButton::SetProperty(Btn1, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn1, MyButton:: #Prop_BorderColor, $000000)
        MyButton::SetProperty(Btn1, MyButton::#Prop_Font, 0)
         
        MyButton::SetProperty(Btn2, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn2, MyButton::#Prop_BackColor, $507FFF)
        MyButton::SetProperty(Btn2, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn2, MyButton:: #Prop_BorderColor, $000000)
        MyButton::SetProperty(Btn2, MyButton::#Prop_Font, 0)
        
        MyButton::SetProperty(Btn3, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn3, MyButton::#Prop_BackColor, $ED9564) 
        MyButton::SetProperty(Btn3, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn3, MyButton:: #Prop_BorderColor, $000000)
        MyButton::SetProperty(Btn3, MyButton::#Prop_Font, 0)
        
        MyButton::SetProperty(Btn4, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn4, MyButton::#Prop_BackColor, $9370DB)
        MyButton::SetProperty(Btn4, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn4, MyButton:: #Prop_BorderColor, $000000)
        MyButton::SetProperty(Btn4, MyButton::#Prop_Font, 0)
        
        
        MyButton::SetProperty(Btn5, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn5, MyButton::#Prop_BackColor, $D355BA)
        MyButton::SetProperty(Btn5, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn5, MyButton:: #Prop_BorderColor, $000000)
        MyButton::SetProperty(Btn5, MyButton::#Prop_Font, 0)
        
        MyButton::SetProperty(Btn6, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn6, MyButton::#Prop_BackColor, $0FB9FF)
        MyButton::SetProperty(Btn6, MyButton::#Prop_OutColor, $000000)
        MyButton::SetProperty(Btn6, MyButton::#Prop_BorderColor, $000000)
        MyButton::SetProperty(Btn6, MyButton::#Prop_Font, 0)
        
        
        MyButton::SetProperty(Btn7, MyButton::#Prop_Radius,12)  ;SetGadgetFont(Text1, FontID(0))

        MyButton::SetProperty(Btn7, MyButton::#Prop_TextColor, $FFFFFF)
        MyButton::SetProperty(Btn7, MyButton::#Prop_BackColor, RGB(224, 60, 60))
        MyButton::SetProperty(Btn7, MyButton::#Prop_OutColor, $000000)
        MyButton::SetProperty(Btn7, MyButton::#Prop_BorderColor, $000000)
        
        ; attaching a pocedure to OnClick event
        
        MyButton::SetProperty(Btn6, MyButton::#Prop_OnClick, @OnClick_Btn6())
;         
 Repeat 
            Select WaitWindowEvent()
                Case #PB_Event_SizeWindow
                ;    MyButton::Resize(btn2, #PB_Ignore,#PB_Ignore, WindowWidth(0) - 220, #PB_Ignore)
                 ;   MyButton::Resize(btn4, #PB_Ignore,#PB_Ignore, WindowWidth(0) - 220, #PB_Ignore)
                ;    MyButton::Resize(btn7, #PB_Ignore,#PB_Ignore, WindowWidth(0) - 220, #PB_Ignore)
                Case #PB_Event_Menu
                    Select EventMenu()
                 ;       Case #MenuItem_1 : Debug " menuitem 1"
                  ;      Case #MenuItem_2 : Debug " menuitem 2"
                  ;      Case #MenuItem_3 : Debug " menuitem 3"
                    EndSelect
                    
                Case #PB_Event_CloseWindow
                    End
            EndSelect
 ForEver
        
    EndIf
    


; IDE Options = PureBasic 6.10 LTS beta 9 (Windows - x64)
; CursorPosition = 47
; FirstLine = 40
; Folding = -
; Optimizer
; EnableThread
; EnableXP
; DPIAware
; UseIcon = TOS-dd.ico
; Executable = TOS-test1.exe