from pcbnew import * 
import math
board=GetBoard()
circle_center=wxPointMM(50,50)
ledpos=wxPointMM(100,50)
cappos=wxPointMM(100,50)
viapos=wxPointMM(100,50)
doutpos=wxPointMM(100,50)
angle=360/30
radius=100
radius_cap=5.03
angle_cap=63.4
radius_via=6.36
angle_via=45
for i in range(0,60):
    LED=board.FindModuleByReference("D"+str(i+1))
    ledpos.x=circle_center.x+FromMM(radius*math.cos(math.radians(angle*i))) #calculate coordinates on a circle
    ledpos.y=circle_center.y-FromMM(radius*math.sin(math.radians(angle*i))) #minus because of coordinate system
    LED.SetPosition(ledpos)
    LED.SetOrientationDegrees(270+angle*i)
    #place the cap with some ofset to the LED
    CAP=board.FindModuleByReference("C"+str(i+1))
    cappos.x=ledpos.x+FromMM(radius_cap*math.cos(math.radians(angle*i+angle_cap))) 
    cappos.y=ledpos.y-FromMM(radius_cap*math.sin(math.radians(angle*i+angle_cap))) 
    CAP.SetPosition(cappos) 
    CAP.SetOrientationDegrees(angle*i)
    #create a via close to the gnd of the cap
    viapos.x=ledpos.x+FromMM(radius_via*math.cos(math.radians(angle*i+angle_via))) 
    viapos.y=ledpos.y-FromMM(radius_via*math.sin(math.radians(angle*i+angle_via))) 
    via=VIA(board) #create new via
    board.Add(via) #add via to board
    gndpad=CAP.FindPadByName("2")
    vianet=gndpad.GetNet()
    via.SetNet(vianet) #set net of via
    via.SetWidth(vianet.GetNetClass().GetViaDiameter()) #set the net of the via
    via.SetPosition(viapos) #set the postion of the via through a point
    via.SetViaType(VIA_THROUGH) #set viatype 
    via.SetLayerPair(0,31)#set layerpair by layerid 0=top and 31=bottom GetLayerID() can also be used
    #create a track from via to gnd pin of the cap
    viatrack=TRACK(board) #create a trackobject
    board.Add(viatrack) #add the track to our board
    viatrack.SetNet(vianet) #set which net the track is
    viatrack.SetStart(gndpad.GetCenter()) #set startpoint
    viatrack.SetEnd(viapos) #set endpoint
    viatrack.SetWidth(vianet.GetNetClass().GetTrackWidth()) #set the trackwidth from our netclas
    viatrack.SetLayer(board.GetLayerID("F.Cu")) #set the layer from the layerid
    #creat a track from +5V pin of LED to cap pin  
    powerpad=LED.FindPadByName("1")
    powernet=powerpad.GetNet()
    captrack=TRACK(board) #create a trackobject
    board.Add(captrack) #add the track to our board
    captrack.SetNet(powernet) #set which net the track is
    captrack.SetStart(powerpad.GetCenter()) #set startpoint
    captrack.SetEnd(CAP.FindPadByName("1").GetCenter()) #set endpoint
    captrack.SetWidth(powernet.GetNetClass().GetTrackWidth()) #set the trackwidth from our netclas
    captrack.SetLayer(board.GetLayerID("F.Cu")) #set the layer from the layerid
    #create a trace connecting DIN and DOUT of the leds
    if(i==0):
        doutpos=LED.FindPadByName("2").GetCenter()#save the positon of the dout pin of the first led
    else:
        datatrack=TRACK(board) #create a trackobject
        board.Add(datatrack) #add the track to our board
        datatrack.SetNet(LED.FindPadByName("4").GetNet()) #set which net the track is
        datatrack.SetStart(doutpos) #set startpoint
        datatrack.SetEnd(LED.FindPadByName("4").GetCenter()) #set endpoint
        datatrack.SetWidth(LED.FindPadByName("4").GetNet().GetNetClass().GetTrackWidth()) #set the trackwidth from our netclas
        datatrack.SetLayer(board.GetLayerID("F.Cu")) #set the layer from the layerid
        doutpos=LED.FindPadByName("2").GetCenter()#save the positon of the dout pin of the first led
Refresh()

