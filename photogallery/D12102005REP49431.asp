<html>
<head>
<title>PAKISTAN: Powerful quake rocks northeast - Photo slide show</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr><td>
<font face="arial" color="#486DB4" style="font-size:12pt"><b>PAKISTAN: Powerful quake rocks northeast</b></font></td>
<td><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a> | <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td></tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="500" cellspacing="3" cellpadding="3" align="left" style="border-right:1 dotted #CCCCCC"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table><img id="_Ath_Slide" onload="OnImgLoad()" width="450"></div><font size="1" face="arial"> 
<p align="center"><b></b> <SPAN id="_Ath_FileName"> </SPAN> <br> <b>Photo: <SPAN id="_Ath_Img_X"></SPAN> 
&nbsp;of <SPAN id="_Ath_Img_N"></SPAN></b></p></font> <p align="center">

<script language="JavaScript">
<!--
////////////////////////////////////////////////////////////// more info
function toggleDetails(num) 
	{
		if(document.getElementById)
			{ 
				objRef = document.getElementById("descriptionTxt" + num);
				expanderRef = document.getElementById("expander" + num);
	
				if (objRef.style.display=="none")
					{
						objRef.style.display = "block";
						expanderRef.setAttribute("src", "../images/design/minus.gif");
						expanderRef.setAttribute("alt", "Hide links");
					}
				else if (objRef.style.display=="block" || objRef.style.display=="")
					{
						objRef.style.display = "none";
						expanderRef.setAttribute("src", "../images/design/plus.gif");
						expanderRef.setAttribute("alt", "Display links");
					}
			}
	}

// -->
</script>

<script language="JavaScript1.2">

/*
Interactive Image slideshow with text description
By Christian Carlessi Salvadó (cocolinks@c.net.gt). Keep this notice intact.
Visit http://www.dynamicdrive.com for script
*/


g_fPlayMode = 0;
g_iimg = -1;
g_imax = 0;
g_ImageTable = new Array();

function ChangeImage(fFwd)
{
if (fFwd)
{
if (++g_iimg==g_imax)
g_iimg=0;
}
else
{
if (g_iimg==0)
g_iimg=g_imax;
g_iimg--;
}
Update();
}

function getobject(obj){
if (document.getElementById)
return document.getElementById(obj)
else if (document.all)
return document.all[obj]
}

function Update(){
getobject("_Ath_Slide").src = g_ImageTable[g_iimg][0];
getobject("_Ath_FileName").innerHTML = g_ImageTable[g_iimg][1];
getobject("_Ath_Img_X").innerHTML = g_iimg + 1;
getobject("_Ath_Img_N").innerHTML = g_imax;
}


function Play()
{
g_fPlayMode = !g_fPlayMode;
if (g_fPlayMode)
{
getobject("btnPrev").disabled = getobject("btnNext").disabled = true;
Next();
}
else 
{
getobject("btnPrev").disabled = getobject("btnNext").disabled = false;

}
}
function OnImgLoad()
{
if (g_fPlayMode)
window.setTimeout("Tick()", g_dwTimeOutSec*1000);
}
function Tick() 
{
if (g_fPlayMode)
Next();
}
function Prev()
{
ChangeImage(false);
}
function Next()
{
ChangeImage(true);
}


////configure below variables/////////////////////////////

//configure the below images and description to your own. 



g_ImageTable[g_imax++] = new Array ("../images/originals/200510150.jpg", "Muzaffarabad, Pakistan, A father carries his injured son from a German SAR helicopter after they where taken from their devastated village. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510151.jpg", "Muzaffarabad, Pakistan, An injured woman lays on the ground after being unloaded by a German SARS helicopter. The woman had been evacuated from her devastated village. During continued rescue missions in the wake of the devastating earthquake. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20051017.jpg", "Muzaffarabad, Pakistan, Pakistani troops unload supplies from a US Chinook helicopter in one of the worst hit areas. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20051015.jpg", "Muzaffarabad, Pakistan, A Pakistani soldier carries a frightened, injured child from a helicopter after the child was evacuated from his devastated village. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510147.jpg", "Over Muzaffarabad, Pakistan, An American crew chief looks out over a Pakistani city while sitting on the back ramp of his Chinook helicopter on a relief flight to earthquake effected regions. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510152.jpg", "Muzaffarabad, Pakistan, An English search crew continues its search for those trapped by the quake late into the night. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510153.jpg", "Muzaffarabad, Pakistan, A British search team spends another long day search the rubble for those trapped by the earthquake. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510148.jpg", "Muzaffarabad, Pakistan, OCHA high commissioner Jan Egeland steps off a UN helicopter to survey damage and see relief efforts going in quake ravaged regions of Pakistan. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510154.jpg", "Muzaffarabad, Pakistan, The grim recovery efforts continue, as doctors armed with sprayers of disinfectant and insecticide spray bodies and the area's they are found in, in hopes of heading off disease. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510155.jpg", "Muzaffarabad, Pakistan, A Spanish K-9 search team combs through a school when the dog signals a hit. Digging revealed 10 children dead where they had huddled for shelter, the concrete building pan caking in on them. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510156.jpg", "Muzaffarabad, Pakistan, A child begging for water is hidden beneath the outstretched hands of adults at a makeshift refugee camp. The earthquake has orphaned hundreds of children, some fending for themselves. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510158.jpg", "Muzaffarabad, Pakistan, 5-year-old Zaid Iqbal tries to dig a hold for a tent so he and his grandmother have a place to sleep. His parents and siblings died in the earthquake leaving him and his elderly grandmother sheltering in a makeshift refugee camp. Although they have no tent and space is lacking so have slept outside on several occasions. Some of their salvaged possessions lay on the ground around him. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101518.jpg", "Muzaffarabad, Pakistan young Omar now lives in a makeshift refugee camp with the rest of his surviving family. Many residents now wear masks constantly for fear of disease. Their fears are well founded with many medical experts suggesting the disease is almost inevitable with the question being when. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510159.jpg", "Muzaffarabad, Pakistan, 5 year old Zaid Iqbal. His parents and siblings died in the earthquake leaving him and his elderly grandmother sheltering in a makeshift refugee camp. Although they have no tent and space is lacking so have slept outside on several occasions. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101510.jpg", "Muzaffarabad, Pakistan, Pakistan Military people off load injured from an ICRC helicopter. The victims where evacuated from villages still unreachable by road. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101511.jpg", "Muzaffarabad, Pakistan A US Army Blackhawk crew chief oversees the unloading of supplies, in an effort to speed up relief the helicopter pilots do not shut down, but keep the rotors spinning lifting off seconds after the last box of supplies is out. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101512.jpg", "Muzaffarabad, Pakistan, British fire-fighters with a search and rescue crew at the scene of a collapsed university. The team from West Midlands has been at the center of coordinating search and rescue efforts along with medical evacuation. UN members have stated that many lives have been saved due to their round the clock efforts. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101513.jpg", "Muzaffarabad, Pakistan, An elderly woman sits among the rubble, she received donated blankets and a jacket. She still has no place to go, her home completely destroyed. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101514.jpg", "Muzaffarabad, Pakistan, A young boy stands in line, sandwiched in a group of men waiting for handouts of clothing and food. With the death and injury of so many adults children are left with caring for families. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101515.jpg", "Muzaffarabad, Pakistan, People line up for hours to tell their story to a Pakistani military officer. If their situation was bad enough the officer signed a small card and they received a small amount of food and so donated clothing. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101519.jpg", "Muzaffarabad, Pakistan, The grizzly form of bodies starts to take shape through a hole dug by locals. a 20 year old male and his 8 and 12 year olds sisters where found where they huddled together before the 4 story building collapsed. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101516.jpg", "Muzaffarabad, Pakistan, In a classic pancake collapse three floors of a hotel dropped straight down on the helpless victim on the bottom. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101517.jpg", "Muzaffarabad, Pakistan, Body recovery has taken on new urgency with the rainstorms that have shaken the area. Disease is becoming an increasing concern, as thousands of bodies remain trapped beneath the rubble. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510170.jpg", "Saheed Gali, Pakistan, Badly injured quake victims are loaded into a UN IRIN vehicle as the UN journalist team evacuated victims on a day that helicopters where unable to fly. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510171.jpg", "Muzaffarabad, Pakistan, Quake victims evacuated by UN members by way of road on a day where helicopters where grounded, wait outside a German Military emergency hospital. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510172.jpg", "Muzaffarabad, Pakistan, A German military surgeon (R) and another medical person bandage and splint a victims broken legs in preparation of evacuation. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510173.jpg", "Command Center, Muzaffarabad, Pakistan. The tasking board summed up a frustrating day for rescue crews in Pakistan. One helicopter on an aid mission crashed killing all aboard while all other badly needed medical evacuation flight where cancelled. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20051018.jpg", "Balakot, Pakistan, Two children sit on the rubble of a destroyed home in Balakot. The suffered total devastation with one official stating Balakot has ceased to exist. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510180.jpg", "Balakot, Pakistan, Earthquake victims dig through donated clothing dumped at the roadside. Though clothing is plentiful, shelter, food and medical facilities are in short supply. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510181.jpg", "Balakot, Pakistan, Two boys sit on a collapsed roof amid the destruction that led one official to state that ''Balakot has ceased to exist.'' &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510182.jpg", "Balakot, Pakistan, The city of Balakot has been erased from the map by the earthquake. The destruction led one official to say ''Balakot has ceased to exist''. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510183.jpg", "Balakot, Pakistan, A man left homeless since the earthquake sits among the jumbled pieces of a highway. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510187.jpg", "Balakot, Pakistan, An injured man carried for many hours from his mountain village enters Balakot. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510189.jpg", "Balakot, Pakistan, A father holds his injured child as he surveys the damage to the devastated city of Balakot. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510185.jpg", "Balakot, Pakistan, Two distraught women sit quietly at a food distribution after they found that women would not be given food as the bags where to heavy for them. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510190.jpg", "Balakot, Pakistan, A food truck caught in the earthquake. As it tipped one way, a hotel fell on it from the other direction. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510192.jpg", "Muzaffarabad, Pakistan, An injured child clings to his father outside a field hospital. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510193.jpg", "Muzaffarabad, Pakistan, President Musharef arrived in Muzaffarabad, his helicopter landed and sat for several minutes before taking off again. The president did not emerge from the helicopter. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510194.jpg", "Muzaffarabad, Pakistan, A Pakistani helicopter flies past a cliff wall as landslides cascade down the cliff walls. Landslides continue to close roads and hamper relief efforts. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510195.jpg", "Muzaffarabad, Pakistan, Pedestrians step of a crevasse in the pavement. The quake has left roads destroyed and impassable and often blocked by landslides making relief efforts difficult. Of the nearly 1000 villages affected by the quake international relief has reached about 40. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510196.jpg", "Muzaffarabad, Pakistan, Villagers coming down from their mountain villages make their way past destroyed roads. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510197.jpg", "Muzaffarabad, Pakistan, two people coming down from a devastated village stop to look at a row of destroyed homes. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510198.jpg", "Muzaffarabad, Pakistan, A ticket sold to raise money for Tsunami relief lies among the rubble left behind from the Pakistan earthquake. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510199.jpg", "Muzaffarabad, Pakistan, A family makes its way over a rubble pile at a women only school. According to the principal of the institution over 400 people are still entombed beneath the rubble. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20051020.jpg", "Garhi Dobatta, Pakistan, Bodies are still being brought down from the mountain villages. The villagers tell similar stories, all their homes are destroyed and they are sleeping outside in near freezing temperatures. Relief agencies are facing a shortfall of nearly 150,000 tents in the Muzaffarabad region alone and up to a third of a million in all regions. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510200.jpg", "Karoll, Pakistan, A bridge lies in ruins, as does a truck unlucky enough to be caught on it when the quake hit. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510201.jpg", "Majhoi, Pakistan, Pedestrians make their way across a damaged and twisted suspension bridge over the Jhelum River. Transportation links lay in disarray all over the affected region. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510202.jpg", "Kumhar Bandi Forest, Pakistan, Desperate victims of the earthquake climb the sides of a truck carrying supplies to toss the cargo over to waiting people. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510203.jpg", "Gujo, Pakistan, Supplies are hurled off a cargo truck to waiting villagers. Desperation has started to set in and UN relief vehicles are now accompanied by military escorts. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510205.jpg", "Doppata, Pakistan, Villagers trek over a landslide blocked road carrying precious supplies up to their devastated villages. Some walking up to 60 km back and forth. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510204.jpg", "Doppata, Pakistan, A 76 year old man tell how he lost his 4 sons and 1 daughter and 3 grand children when his house collapsed. Only he and his wife survived, he walked 38 km to try and find food and a tent for he and his wife. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510206.jpg", "Muzaffarabad Region, Pakistan, Pakistani soldiers work to open a road destroyed by the earthquake here containing a small river that shifted course over a road. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510207.jpg", "Muzaffarabad Region, Pakistan, Two figures stand and watch a landslide thunder down the opposite valley wall as a series of after shocks rocked the region. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510208.jpg", "Muzaffarabad Region, Pakistan, A land cruiser that was converted to a bus was caught in a landslide. The blood soaked front seats a silent testament to the havoc caused. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510209.jpg", "OSOCC Command center Muzaffarabad Pakistan, OSOCC commander Rob Holden who led relief efforts from the start of the Pakistan earthquake briefs UK Sec. State for International Development Hillery Bunn on the state of Relief efforts. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20051021.jpg", "OSOCC Command center Muzaffarabad, Pakistan, OSOCC commander Rob Holden who led relief efforts from the start of the Pakistan earthquake briefs UK Sec. State for International Development Hillery Bunn on the state of Relief efforts. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510210.jpg", "OSOCC Command center Muzaffarabad, Pakistan, OSOCC commander Rob Holden who led relief efforts from the start of the Pakistan earthquake briefs UK Sec. State for International Development Hillery Bunn on the state of Relief efforts. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510211.jpg", "OSOCC Command center Muzaffarabad, Pakistan, UK Sec. State for International Development Hillery Bunn is briefed on the state of Relief efforts. &copy Edward Parsons/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510212.jpg", "OSOCC Command center Muzaffarabad, Pakistan, OSOCC commander Rob Holden who led relief efforts from the start of the Pakistan earthquake briefs UK Sec. State for International Development Hillery Bunn on the state of Relief efforts. &copy Edward Parsons/IRIN");


g_ImageTable[g_imax++] = new Array ("../images/originals/200510145.jpg", "Survivors receiving medicines and treatment at the camp in Muzaffarabad's stadium. &copy Tahira Sarwar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510144.jpg", "A day in an emergency camp set in Muzaffarabad's stadium. &copy Tahira Sarwar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510142.jpg", "Earthquake damage in north. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510141.jpg", "Local residents trying to find survivors under rubble in Muzaffarabad. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510140.jpg", "Earthquake survivors in Muzaffarabad rushing to get relief items. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20051014.jpg", "Bags and books recovered from a quake-hit school in north. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2005101310.jpg", "Earthquake survivor - Balkot. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510139.jpg", "Earthquake survivor - Battagram. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510138.jpg", "Earthquake relief - Balkot. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510137.jpg", "Removing the dead - Muzaffarabad. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510136.jpg", "Earthquake devastation - Muzaffarabad. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510135.jpg", "Earthquake devastation - Muzaffarabad. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510134.jpg", "Evacuating an injured child -Muzaffarabad. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510133.jpg", "Pakistani army helicopters arrive with relief supplies at a cricket pitch in the city of Muzaffarabad - close to the epicentre of Saturday's regional earthquake. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510131.jpg", "'Injured await help' - Battagram/Battal area, close to the epicentre of Saturday's regional earthquake. &copy Kamila Hyat/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200510130.jpg", "'Devastated buildings' - Battagram/Battal area, close to the epicentre of Saturday's regional earthquake. &copy Kamila Hyat/IRIN");

//extend the above list as desired
g_dwTimeOutSec=5

////End configuration/////////////////////////////

if (document.getElementById||document.all)
window.onload=Play

</script> </p>

</td>
</tr>
</table>
<br> 

<table width="496" cellspacing="3" cellpadding="3">
<td align="center">
<table width="100%" cellspacing="1" cellpadding="2" style="border: 1px solid #CCCCCC; border-top: 2px solid #BBBBBB"> 
<tr>
<td bgcolor="#EEEEEE">
	<font face="arial" style="font-size:9pt"><b><em>&nbsp;Earthquake coverage</em></b></font></td></tr>
<tr><td style="font-size:8pt">

<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52698" target="_blank" style="font-size:8pt">House-to-house survey kicks off in quake zone</a>, 07 Apr/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52658" target="_blank" style="font-size:8pt">Interview with UN Humanitarian Coordinator six months after South Asian quake</a>, 06 Apr/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52638" target="_blank" style="font-size:8pt">Land policy for earthquake displaced coming soon</a>, 05 Apr/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52585" target="_blank" style="font-size:8pt">Earthquake returns gather momentum</a>, 03 Apr/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52540" target="_blank" style="font-size:8pt">Returns of earthquake displaced occurring at "an unseemly rate"</a>, 31 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52329" target="_blank" style="font-size:8pt">IOM offers free transport to quake returnees</a>, 20 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52328" target="_blank" style="font-size:8pt">Clean water critical to quake returns</a>, 20 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52223" target="_blank" style="font-size:8pt">IOM starts debris removal in quake area</a>, 15 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52199" target="_blank" style="font-size:8pt">Bad weather disrupts relief and returns</a>, 14 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52182" target="_blank" style="font-size:8pt">Displaced from Allai return from quake camps</a>, 13 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52180" target="_blank" style="font-size:8pt">Revitalising quake schools in Pakistani-administered Kashmir</a>, 13 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52133" target="_blank" style="font-size:8pt">Quake survivors start the journey home</a>, 10 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52113" target="_blank" style="font-size:8pt">WFP welcomes US $2 million quake contribution from Saudi Arabia</a>, 09 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52112" target="_blank" style="font-size:8pt">Landless quake survivors reluctant to return</a>, 09 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52097" target="_blank" style="font-size:8pt">Marking International Women’s Day in the earthquake zone</a>, 08 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52095" target="_blank" style="font-size:8pt">Five months on, quake relief moves to reconstruction</a>, 08 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=52034" target="_blank" style="font-size:8pt">Afghan quake survivors missing out on aid</a>, 06 Mar/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51956" target="_blank" style="font-size:8pt">Water a major challenge for earthquake survivors</a>, 28 Feb/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51926" target="_blank" style="font-size:8pt">UN presents post-quake recovery plan</a>, 27 Feb/06


<br><a href="javascript:toggleDetails('19to25');"><img id="expander19to25" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">19 Feb - 25 Feb 2006</b></span></a>
<div id="descriptionTxt19to25" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51897" target="_blank" style="font-size:8pt">Assessment report reveals far reaching damage to livelihoods</a>, 24 Feb/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51885" target="_blank" style="font-size:8pt">Quake-affected Allai Valley receives livestock support</a>, 23 Feb/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51867" target="_blank" style="font-size:8pt">Pessimism reigns as quake families struggle to rebuild lives</a>, 23 Feb/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51849" target="_blank" style="font-size:8pt">Education key priority in quake region - Save the Children</a>, 22 Feb/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51827" target="_blank" style="font-size:8pt">Women's committee highlights problems facing women in quake camps</a>, 21 Feb/06

</ul>
</div>

<br><a href="javascript:toggleDetails('12to18');"><img id="expander12to18" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">12 Feb - 18 Feb 2006</b></span></a>
<div id="descriptionTxt12to18" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51716" target="_blank" style="font-size:8pt">IOM promoting income generation for quake reconstruction</a>, 15 Feb/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51691" target="_blank" style="font-size:8pt">Improving weather facilitating quake relief</a>, 13 Feb/06

</ul>
</div>

<br><a href="javascript:toggleDetails('05to11');"><img id="expander05to11" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">05 Feb - 11 Feb 2006</b></span></a>
<div id="descriptionTxt05to11" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51587" target="_blank" style="font-size:8pt">IOM assessing smaller quake camps</a>, 07 Feb/06 
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51591" target="_blank" style="font-size:8pt">Young quake survivors turning to child labour</a>, 07 Feb/06 

</ul>
</div>

<br><a href="javascript:toggleDetails('29to04');"><img id="expander29to04" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">29 Jan - 04 Feb 2006</b></span></a>
<div id="descriptionTxt29to04" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51507" target="_blank" style="font-size:8pt">Free transport scheme popular among quake survivors</a>, 02 Feb/06 
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51423" target="_blank" style="font-size:8pt">Single-headed quake households face uncertain future</a>, 30 Jan/06

</ul>
</div>

<br><a href="javascript:toggleDetails('22to28');"><img id="expander22to28" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">22 - 28 Jan 2006</b></span></a>
<div id="descriptionTxt22to28" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51316" target="_blank" style="font-size:8pt">Abandoned cinema becomes rehab centre for female quake victims</a>, 25 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51307" target="_blank" style="font-size:8pt">USAID to build 60 schools in quake area</a>, 24 Jan/06

</ul>
</div>

<br><a href="javascript:toggleDetails('15to21');"><img id="expander15to21" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">15 - 21 Jan 2006</b></span></a>
<div id="descriptionTxt15to21" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51147" target="_blank" style="font-size:8pt">NRC conducts winter skills programme for quake relief workers</a>, 17 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51160" target="_blank" style="font-size:8pt">UN special envoy concludes trip</a>, 17 Jan/06

</ul>
</div>

<br><a href="javascript:toggleDetails('8to14');"><img id="expander8to14" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">08 - 14 Jan 2006</b></span></a>
<div id="descriptionTxt8to14" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51115" target="_blank" style="font-size:8pt">Battling the weather in quake zone</a>, 13 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51042" target="_blank" style="font-size:8pt">Focus on shelter in mountain earthquake communities</a>, 11 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=51026" target="_blank" style="font-size:8pt">Enduring freezing temperatures in the quake zone</a>, 10 Jan/06

</ul>
</div>

<br><a href="javascript:toggleDetails('1to7');"><img id="expander1to7" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">01 - 07 Jan 2006</b></span></a>
<div id="descriptionTxt1to7" style="display:none;">

<ul><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50950" target="_blank" style="font-size:8pt">Quake relief operation resumes after three-day suspension</a>, 04 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50949" target="_blank" style="font-size:8pt">Relief tents collapsing in quake zone</a>, 04 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50925" target="_blank" style="font-size:8pt">Female quake survivors losing property</a>, 03 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50929" target="_blank" style="font-size:8pt">Quake relief all but impossible at higher altitudes</a>, 03 Jan/06
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50913" target="_blank" style="font-size:8pt">Winter weather hampering quake aid</a>, 02 Jan/06

</ul>
</div>

<br><a href="javascript:toggleDetails('25to31');"><img id="expander25to31" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">25 - 31 Dec 2005</b></span></a>
<div id="descriptionTxt25to31" style="display:none;">

<ul><a href="javascript:toggleDetails('55');"><img id="expander55" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">29 Dec 2005</b></span></a>
<div id="descriptionTxt55" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50893" target="_blank" style="font-size:8pt">PIMS receives Hollywood star’s donation</a></div>

<br><a href="javascript:toggleDetails('56');"><img id="expander56" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">28 Dec 2005</b></span></a>
<div id="descriptionTxt56" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50872" target="_blank" style="font-size:8pt">Thousands of children back at school</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50862" target="_blank" style="font-size:8pt">Registration of quake-affected people to start</a></div>

<br><a href="javascript:toggleDetails('57');"><img id="expander57" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">27 Dec 2005</b></span></a>
<div id="descriptionTxt57" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50861" target="_blank" style="font-size:8pt">Quake kids smile once more</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50860" target="_blank" style="font-size:8pt">Relief assistance needed in Khatker</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('18to24');"><img id="expander18to24" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">18 - 24 Dec 2005</b></span></a>
<div id="descriptionTxt18to24" style="display:none;">

<ul><a href="javascript:toggleDetails('58');"><img id="expander58" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">23 Dec 2005</b></span></a>
<div id="descriptionTxt58" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50841" target="_blank" style="font-size:8pt">Focus on UNHCR efforts to keep quake survivors warm</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50842" target="_blank" style="font-size:8pt">Many mountain quake villages still without health care</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50830" target="_blank" style="font-size:8pt">Frustration at quake camps</a></div>

<br><a href="javascript:toggleDetails('59');"><img id="expander59" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">22 Dec 2005</b></span></a>
<div id="descriptionTxt59" style="display:none;"><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50803" target="_blank" style="font-size:8pt">Widows in quake area battle to survive</a></div>

<br><a href="javascript:toggleDetails('60');"><img id="expander60" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">21 Dec 2005</b></span></a>
<div id="descriptionTxt60" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50809" target="_blank" style="font-size:8pt">Environmental concerns in quake-hit region</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50805" target="_blank" style="font-size:8pt">Cuban field hospital works to make a difference</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50800" target="_blank" style="font-size:8pt">UN Foundation establishes earthquake responses fund</a></div>

<br><a href="javascript:toggleDetails('61');"><img id="expander61" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">20 Dec 2005</b></span></a>
<div id="descriptionTxt61" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50790" target="_blank" style="font-size:8pt">Rape allegation highlights vulnerability of quake survivors</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50788" target="_blank" style="font-size:8pt">Shelter the priority as quake zone temperatures plummet</a></div>

<br><a href="javascript:toggleDetails('62');"><img id="expander62" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">19 Dec 2005</b></span></a>
<div id="descriptionTxt62" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50770" target="_blank" style="font-size:8pt">Earthquake victims and drug dependency</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('11to17');"><img id="expander11to17" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">11 - 17 Dec 2005</b></span></a>
<div id="descriptionTxt11to17" style="display:none;">

<ul>
<a href="javascript:toggleDetails('63');"><img id="expander63" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">16 Dec 2005</b></span></a>
<div id="descriptionTxt63" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50716" target="_blank" style="font-size:8pt">Acute respiratory infections increasing among quake survivors</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50722" target="_blank" style="font-size:8pt">World Bank approves US $400 million for earthquake recovery</a></div>

<br><a href="javascript:toggleDetails('64');"><img id="expander64" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">15 Dec 2005</b></span></a>
<div id="descriptionTxt64" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50707" target="_blank" style="font-size:8pt">Special refuge for vulnerable quake victims</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50708" target="_blank" style="font-size:8pt">UNHCR sets up new camps for quake survivors</a></div>

<br><a href="javascript:toggleDetails('65');"><img id="expander65" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">14 Dec 2005</b></span></a>
<div id="descriptionTxt65" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50675" target="_blank" style="font-size:8pt">Survivors outside official quake camps need winterised tents</a></div>

<br><a href="javascript:toggleDetails('66');"><img id="expander66" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">12 Dec 2005</b></span></a>
<div id="descriptionTxt66" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50633" target="_blank" style="font-size:8pt">Tenant quake survivors angry at lack of compensation</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('4to10');"><img id="expander4to10" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">04 - 10 Dec 2005</b></span></a>
<div id="descriptionTxt4to10" style="display:none;">

<ul>
<a href="javascript:toggleDetails('67');"><img id="expander67" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">09 Dec 2005</b></span></a>
<div id="descriptionTxt67" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50594" target="_blank" style="font-size:8pt">Thousands still without basic shelter two months after quake</a></div>

<br><a href="javascript:toggleDetails('68');"><img id="expander68" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">08 Dec 2005</b></span></a>
<div id="descriptionTxt68" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50582" target="_blank" style="font-size:8pt">Poor health conditions at emergency quake camps</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50572" target="_blank" style="font-size:8pt">Dire need for clean water in many quake villages</a></div>

<br><a href="javascript:toggleDetails('69');"><img id="expander69" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">07 Dec 2005</b></span></a>
<div id="descriptionTxt69" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50544" target="_blank" style="font-size:8pt">Radio to raise health awareness among quake survivors</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50545" target="_blank" style="font-size:8pt">Mountain experts deliver food to remote communities</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('27to03');"><img id="expander27to03" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">27 Nov - 03 Dec 2005</b></span></a>
<div id="descriptionTxt27to03" style="display:none;">

<ul>
<a href="javascript:toggleDetails('70');"><img id="expander70" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">01 Dec 2005</b></span></a>
<div id="descriptionTxt70" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50452" target="_blank" style="font-size:8pt">Quake survivors keep dreams alive despite winter closing in</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50457" target="_blank" style="font-size:8pt">Big Afghan refugee camp to close</a></div>

<br><a href="javascript:toggleDetails('71');"><img id="expander71" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">30 Nov 2005</b></span></a>
<div id="descriptionTxt71" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50422" target="_blank" style="font-size:8pt">New quake patients pour into hospitals</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50433" target="_blank" style="font-size:8pt">More winterised shelter needed urgently in quake zone</a></div>

<br><a href="javascript:toggleDetails('72');"><img id="expander72" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">29 Nov 2005</b></span></a>
<div id="descriptionTxt72" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50391" target="_blank" style="font-size:8pt">Loss of livelihoods in quake zone severe</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50376" target="_blank" style="font-size:8pt">Kagan communities at landslide and flood risk</a></div>

<br><a href="javascript:toggleDetails('73');"><img id="expander73" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">28 Nov 2005</b></span></a>
<div id="descriptionTxt73" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50361" target="_blank" style="font-size:8pt">Relief operation slowed by poor weather</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50374" target="_blank" style="font-size:8pt">Quake villagers brave snow to stay put</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('20to26');"><img id="expander20to26" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">20 - 26 Nov 2005</b></span></a>
<div id="descriptionTxt20to26" style="display:none;">

<ul><a href="javascript:toggleDetails('74');"><img id="expander74" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">25 Nov 2005</b></span></a>
<div id="descriptionTxt74" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50305" target="_blank" style="font-size:8pt">'Adopt a village' programme in quake zone</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50321" target="_blank" style="font-size:8pt">UNHCR head expresses solidarity with quake victims</a></div>

<br><a href="javascript:toggleDetails('75');"><img id="expander75" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">24 Nov 2005</b></span></a>
<div id="descriptionTxt75" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50295" target="_blank" style="font-size:8pt">Allai survivors determined to brave winter in mountains</a></div>

<br><a href="javascript:toggleDetails('76');"><img id="expander76" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">23 Nov 2005</b></span></a>
<div id="descriptionTxt76" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50262" target="_blank" style="font-size:8pt">Winterised tents still in very short supply in quake zone</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50263" target="_blank" style="font-size:8pt">Funding shortfall hampers humanitarian response</a></div>

<br><a href="javascript:toggleDetails('77');"><img id="expander77" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">22 Nov 2005</b></span></a>
<div id="descriptionTxt77" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50247" target="_blank" style="font-size:8pt">Quake survivors face long winter in tent villages</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50229" target="_blank" style="font-size:8pt">Quake town determined to rebuild</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50222" target="_blank" style="font-size:8pt">UK helicopters complete major aid drop</a></div>

<br><a href="javascript:toggleDetails('78');"><img id="expander78" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">21 Nov 2005</b></span></a>
<div id="descriptionTxt78" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50209" target="_blank" style="font-size:8pt">Thousands of quake survivors still trapped in remote valleys</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50204" target="_blank" style="font-size:8pt">UN-Habitat launches quake shelter programme</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('13to19');"><img id="expander13to19" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">13 - 19 Nov 2005</b></span></a>
<div id="descriptionTxt13to19" style="display:none;">

<ul>
<a href="javascript:toggleDetails('79');"><img id="expander79" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">19 Nov 2005</b></span></a>
<div id="descriptionTxt79" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50195" target="_blank" style="font-size:8pt">More than US $5.8 billion pledged for quake victims</a></div>

<br><a href="javascript:toggleDetails('80');"><img id="expander80" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">18 Nov 2005</b></span></a>
<div id="descriptionTxt80" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50175" target="_blank" style="font-size:8pt">Quake survivors descend as weather closes in</a></div>

<br><a href="javascript:toggleDetails('81');"><img id="expander81" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">17 Nov 2005</b></span></a>
<div id="descriptionTxt81" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50168" target="_blank" style="font-size:8pt">New humanitarian route across divided Kashmir</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50156" target="_blank" style="font-size:8pt">UN Secretary-General issues fresh quake appeal</a></div>

<br><a href="javascript:toggleDetails('82');"><img id="expander82" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">16 Nov 2005</b></span></a>
<div id="descriptionTxt82" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50130" target="_blank" style="font-size:8pt">Women face violence, harassment at camps</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50126" target="_blank" style="font-size:8pt">Humanitarian agencies struggle to reach quake-affected communities</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50125" target="_blank" style="font-size:8pt">WFP to increase food rations</a></div>

<br><a href="javascript:toggleDetails('83');"><img id="expander83" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">15 Nov 2005</b></span></a>
<div id="descriptionTxt83" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50117" target="_blank" style="font-size:8pt">Data standardisation to improve quake relief coordination</a></div>

<br><a href="javascript:toggleDetails('84');"><img id="expander84" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">14 Nov 2005</b></span></a>
<div id="descriptionTxt84" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50073" target="_blank" style="font-size:8pt">UNICEF launches measles vaccination campaign in quake zone</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('6to12');"><img id="expander6to12" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">06 - 12 Nov 2005</b></span></a>
<div id="descriptionTxt6to12" style="display:none;">

<ul>
<a href="javascript:toggleDetails('85');"><img id="expander85" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">11 Nov 2005</b></span></a>
<div id="descriptionTxt85" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50066" target="_blank" style="font-size:8pt">More than 400 cases of watery diarrhoea in quake camp</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50053" target="_blank" style="font-size:8pt">Temporary school emerges from quake rubble</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50051" target="_blank" style="font-size:8pt">Sick quake survivors stream into city</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50044" target="_blank" style="font-size:8pt">Military launch emergency shelter programme for high altitude quake survivors</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50042" target="_blank" style="font-size:8pt">Huge number of toilets urgently needed in quake-hit north</a></div>

<br><a href="javascript:toggleDetails('86');"><img id="expander86" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">10 Nov 2005</b></span></a>
<div id="descriptionTxt86" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50036" target="_blank" style="font-size:8pt">Netherlands military hospital operational</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50022" target="_blank" style="font-size:8pt">Charities offer helping hand to quake survivors</a></div>

<br><a href="javascript:toggleDetails('87');"><img id="expander87" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">09 Nov 2005</b></span></a>
<div id="descriptionTxt87" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50025" target="_blank" style="font-size:8pt">Interview with UNICEF country representative, Dr Omar Abdi</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=50020" target="_blank" style="font-size:8pt">Second border crossing-point opens to allow relief from India</a></div>

<br><a href="javascript:toggleDetails('88');"><img id="expander88" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">08 Nov 2005</b></span></a>
<div id="descriptionTxt88" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49965" target="_blank" style="font-size:8pt">One month after earthquake and 500,000 still without shelter</a></div>

<br><a href="javascript:toggleDetails('89');"><img id="expander89" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">07 Nov 2005</b></span></a>
<div id="descriptionTxt89" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49965" target="_blank" style="font-size:8pt">Oxfam installs emergency water and sanitation</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49966" target="_blank" style="font-size:8pt">Relief workers battle as winter descends</a></div>

</ul>
</div>


<br><a href="javascript:toggleDetails('30to5');"><img id="expander30to5" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">30 Oct - 05 Nov 2005</b></span></a>
<div id="descriptionTxt30to5" style="display:none;">

<ul>
<a href="javascript:toggleDetails('90');"><img id="expander90" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">05 Nov 2005</b></span></a>
<div id="descriptionTxt90" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49967" target="_blank" style="font-size:8pt">Festive holiday brings little joy for quake victims</a></div>

<br><a href="javascript:toggleDetails('91');"><img id="expander91" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">04 Nov 2005</b></span></a>
<div id="descriptionTxt91" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49932" target="_blank" style="font-size:8pt">Cold brings quake victims south</a></div>

<br><a href="javascript:toggleDetails('92');"><img id="expander92" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">03 Nov 2005</b></span></a>
<div id="descriptionTxt92" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49924" target="_blank" style="font-size:8pt">Closed or destroyed roads hamper relief effort</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49922" target="_blank" style="font-size:8pt">Number of tented camps to increase</a></div>

<br><a href="javascript:toggleDetails('93');"><img id="expander93" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">02 Nov 2005</b></span></a>
<div id="descriptionTxt93" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49897" target="_blank" style="font-size:8pt">Increase in respiratory infections</a></div>

<br><a href="javascript:toggleDetails('94');"><img id="expander94" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">01 Nov 2005</b></span></a>
<div id="descriptionTxt94" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49885" target="_blank" style="font-size:8pt">Health care under pressure in Muzaffarabad</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49883" target="_blank" style="font-size:8pt">UNICEF and government start child registration</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49881" target="_blank" style="font-size:8pt">Helicopter lifeline under threat in earthquake zone</a></div>

<br><a href="javascript:toggleDetails('95');"><img id="expander95" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">31 Oct 2005</b></span></a>
<div id="descriptionTxt95" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49863" target="_blank" style="font-size:8pt">Appropriate reconstruction vital to prevent future disaster - planners</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49851" target="_blank" style="font-size:8pt">Interview with UN Humanitarian Area Coordinator, Rashid Khalikov</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49852" target="_blank" style="font-size:8pt">Muzaffarabad and the struggle to survive</a></div>

<br><a href="javascript:toggleDetails('96');"><img id="expander96" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">30 Oct 2005</b></span></a>
<div id="descriptionTxt96" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49840" target="_blank" style="font-size:8pt">UNICEF head visits quake-ravaged north</a></div>

</ul>
</div>


<br><a href="javascript:toggleDetails('23to29');"><img id="expander23to29" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">23 - 29 Oct 2005</b></span></a>
<div id="descriptionTxt23to29" style="display:none;">

<ul>
<a href="javascript:toggleDetails('97');"><img id="expander97" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">28 Oct 2005</b></span></a>
<div id="descriptionTxt97" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49811" target="_blank" style="font-size:8pt">Food assistance vital to quake survivors</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49810" target="_blank" style="font-size:8pt">Impact of local media reporting the earthquake</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49809" target="_blank" style="font-size:8pt">Interview with WHO country head, Khalif Bile Mohamud</a></div>

<br><a href="javascript:toggleDetails('98');"><img id="expander98" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">27 Oct 2005</b></span></a>
<div id="descriptionTxt98" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49796" target="_blank" style="font-size:8pt">Waiting for quake aid nearly three weeks on</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49792" target="_blank" style="font-size:8pt">Thousands trapped in tourist resort</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49791" target="_blank" style="font-size:8pt">Urgent need for shelter as aid slowly reaches sick and injured</a></div>

<br><a href="javascript:toggleDetails('99');"><img id="expander99" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">26 Oct 2005</b></span></a>
<div id="descriptionTxt99" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49759" target="_blank" style="font-size:8pt">Massive and urgent increase in quake support needed - UN</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49759" target="_blank" style="font-size:8pt">Interview with Andrew MacLeod, head of UN Emergency Coordination Centre</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49759" target="_blank" style="font-size:8pt">School reopens amid the dead</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49755" target="_blank" style="font-size:8pt">Urgent need for emergency radio for quake survivors</a></div>

<br><a href="javascript:toggleDetails('100');"><img id="expander100" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">25 Oct 2005</b></span></a>
<div id="descriptionTxt100" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49733" target="_blank" style="font-size:8pt">Interview with UN Humanitarian Coordinator, Jan Vandemoortele</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49732" target="_blank" style="font-size:8pt">Parents retrieve quake children from hospitals</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49729" target="_blank" style="font-size:8pt">Disease warning network established</a></div>

<br><a href="javascript:toggleDetails('101');"><img id="expander101" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">24 Oct 2005</b></span></a>
<div id="descriptionTxt101" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49718" target="_blank" style="font-size:8pt">Village of the dead</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49715" target="_blank" style="font-size:8pt">Earthquake kills five in south</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49708" target="_blank" style="font-size:8pt">Fresh tremors bring new challenges</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49703" target="_blank" style="font-size:8pt">Amputees need crutches, wheelchairs, prostheses</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49701" target="_blank" style="font-size:8pt">Child beggars line roadsides</a></div>

<br><a href="javascript:toggleDetails('102');"><img id="expander102" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">23 Oct 2005</b></span></a>
<div id="descriptionTxt102" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49699" target="_blank" style="font-size:8pt">Relief still missing in many villages</a></div>

</ul>
</div>

<br><a href="javascript:toggleDetails('16to22');"><img id="expander16to22" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">16 - 22 Oct 2005</b></span></a>
<div id="descriptionTxt16to22" style="display:none;">

<ul>
<a href="javascript:toggleDetails('103');"><img id="expander103" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">22 Oct 2005</b></span></a>
<div id="descriptionTxt103" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49698" target="_blank" style="font-size:8pt">Tetanus claiming lives daily</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49697" target="_blank" style="font-size:8pt">Further consolidation of quake relief effort</a></div>

<br><a href="javascript:toggleDetails('104');"><img id="expander104" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">21 Oct 2005</b></span></a>
<div id="descriptionTxt104" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49684" target="_blank" style="font-size:8pt">Coordination of quake assistance coming together</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49677" target="_blank" style="font-size:8pt">Quake patients without homes refuse to leave hospitals</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49671" target="_blank" style="font-size:8pt">Aftershocks may scar children forever</a></div>

<br><a href="javascript:toggleDetails('105');"><img id="expander105" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">20 Oct 2005</b></span></a>
<div id="descriptionTxt105" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49662" target="_blank" style="font-size:8pt">Chopper relief drops not reaching victims</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49658" target="_blank" style="font-size:8pt">Rapid village assessment under way for quake-hit north</a></div>

<br><a href="javascript:toggleDetails('106');"><img id="expander106" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">19 Oct 2005</b></span></a>
<div id="descriptionTxt106" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49653" target="_blank" style="font-size:8pt">Quake victims want tin sheets and tools</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49646" target="_blank" style="font-size:8pt">Quake victims want new schools for children</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49642" target="_blank" style="font-size:8pt">Children in the mountains at risk warns UNICEF</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49636" target="_blank" style="font-size:8pt">Winter tents needed now</a></div>

<br><a href="javascript:toggleDetails('107');"><img id="expander107" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">18 Oct 2005</b></span></a>
<div id="descriptionTxt107" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49628" target="_blank" style="font-size:8pt">Urgent aid needed now for quake-hit north</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49627" target="_blank" style="font-size:8pt">UNICEF immunises quake victims</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49616" target="_blank" style="font-size:8pt">Quake relief workers suffering emotional trauma</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49613" target="_blank" style="font-size:8pt">Quake-hit women still await medical treatment</a></div>

<br><a href="javascript:toggleDetails('108');"><img id="expander108" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">17 Oct 2005</b></span></a>
<div id="descriptionTxt108" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49608" target="_blank" style="font-size:8pt">AFGHANISTAN: UN-Afghan aid to Pakistan underway</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49591" target="_blank" style="font-size:8pt">UNICEF concerned over potential exploitation of child quake survivors</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49590" target="_blank" style="font-size:8pt">Water and sanitation dire in quake-stricken north</a></div>

<br><a href="javascript:toggleDetails('109');"><img id="expander109" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">16 Oct 2005</b></span></a>
<div id="descriptionTxt109" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49582" target="_blank" style="font-size:8pt">Shortage of tents causes suffering</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49584" target="_blank" style="font-size:8pt">Only half of survivors in dire need receive food aid</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49585" target="_blank" style="font-size:8pt">Health concerns in outlying villages - WHO</a></div>

</ul>

</div>

<br><a href="javascript:toggleDetails('9to15');"><img id="expander9to15" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">09 - 15 Oct 2005</b></span></a>
<div id="descriptionTxt9to15" style="display:none;">

<ul>
<a href="javascript:toggleDetails('110');"><img id="expander110" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">15 Oct 2005</b></span></a>
<div id="descriptionTxt110" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49578" target="_blank" style="font-size:8pt">UN relief chief concerned about colossal ‘disaster within disaster’</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49579" target="_blank" style="font-size:8pt">Health risks grow in emergency camp</a></div>

<br><a href="javascript:toggleDetails('111');"><img id="expander111" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">14 Oct 2005</b></span></a>
<div id="descriptionTxt111" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49564" target="_blank" style="font-size:8pt">WHO believes earthquake disaster worse than December’s tsunami</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49570" target="_blank" style="font-size:8pt">Skies over Shangla still silent</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49552" target="_blank" style="font-size:8pt">Supplies for relief run short in major cities</a></div>

<br><a href="javascript:toggleDetails('112');"><img id="expander112" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">13 Oct 2005</b></span></a>
<div id="descriptionTxt112" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49528" target="_blank" style="font-size:8pt">Race against time to save lives</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49535" target="_blank" style="font-size:8pt">UN Relief Coordinator calls for more helicopters</a></div>

<br><a href="javascript:toggleDetails('113');"><img id="expander113" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">12 Oct 2005</b></span></a>
<div id="descriptionTxt113" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49496" target="_blank" style="font-size:8pt">Battling against the weather to keep earthquake survivors alive</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49500" target="_blank" style="font-size:8pt">Trying to stay alive in post-quake rubble</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49507" target="_blank" style="font-size:8pt">Relief effort hampered by logistics as weather improves</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49514" target="_blank" style="font-size:8pt">Dire need for shelter as earthquake survivors endure fifth night</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49515" target="_blank" style="font-size:8pt">World boosts quake response</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49516" target="_blank" style="font-size:8pt">Thousands of earthquake children require urgent medical care - UNICEF</a></div>

<br><a href="javascript:toggleDetails('114');"><img id="expander114" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">11 Oct 2005</b></span></a>
<div id="descriptionTxt114" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49464" target="_blank" style="font-size:8pt">Three days after earthquake, health risks grow</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49467" target="_blank" style="font-size:8pt">Efforts shift to relief as quake death toll leaps</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49482" target="_blank" style="font-size:8pt">UN launches flash appeal for quake survivors</a></div>

<br><a href="javascript:toggleDetails('115');"><img id="expander115" src="../images/design/plus.gif" width="11" height="11" border="0" align="absmiddle"/> <span><b style="font-size:8pt">10 Oct 2005</b></span></a>
<div id="descriptionTxt115" style="display:none;">
<b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49440" target="_blank" style="font-size:8pt">Helicopters top priority 48 hours after huge earthquake</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49452" target="_blank" style="font-size:8pt">International aid pours in</a>
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49460" target="_blank" style="font-size:8pt">Earthquake death toll likely to rise significantly</a></div>

<br><br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49433" target="_blank" style="font-size:8pt">More than 18,000 dead following regional earthquake</a>, 9/Oct/05
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49436" target="_blank" style="font-size:8pt">Earthquake leaves 20,000 dead and huge numbers in need</a>, 9/Oct/05
<br><b style="font-size:5pt">&#8226;</b>&nbsp;<a href="http://www.irinnews.org/report.asp?ReportID=49431" target="_blank" style="font-size:8pt">Powerful quake rocks northeast</a>, 8/Oct/05

</ul>

</div>

</td></tr>

</table>

</td></tr>
</table></td></tr> 
</table>

<hr color="#000000" size="1"> 
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script></body>
</html>