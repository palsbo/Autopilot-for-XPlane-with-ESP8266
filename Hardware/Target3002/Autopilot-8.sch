<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<!--Created by TARGET 3001! Version: 18.4.0.86-->
<!--DateTime: 2016-08-11 11:03:16-->
<eagle version="7.3.0">
	<drawing>
		<settings>
			<setting alwaysvectorfont="no"/>
			<setting verticaltext="up"/>
		</settings>
		<grid distance="0.635" unitdist="mm" unit="mm" style="dots" multiple="2" display="yes" altdistance="0.635" altunitdist="mm" altunit="mm"/>
		<layers>
			<layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
			<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes"/>
			<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/>
			<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/>
			<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes"/>
			<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="yes"/>
			<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="yes"/>
			<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="yes"/>
			<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="27" name="tValues" color="7" fill="1" visible="no" active="yes"/>
			<layer number="28" name="bValues" color="7" fill="1" visible="no" active="yes"/>
			<layer number="29" name="tStop" color="7" fill="3" visible="yes" active="yes"/>
			<layer number="30" name="bStop" color="7" fill="6" visible="yes" active="yes"/>
			<layer number="31" name="tCream" color="7" fill="4" visible="no" active="yes"/>
			<layer number="32" name="bCream" color="7" fill="5" visible="yes" active="yes"/>
			<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="yes"/>
			<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="yes"/>
			<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="yes"/>
			<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="yes"/>
			<layer number="37" name="tTest" color="7" fill="1" visible="no" active="yes"/>
			<layer number="38" name="bTest" color="7" fill="1" visible="no" active="yes"/>
			<layer number="39" name="tKeepout" color="4" fill="11" visible="yes" active="yes"/>
			<layer number="40" name="bKeepout" color="1" fill="11" visible="yes" active="yes"/>
			<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="yes"/>
			<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="yes"/>
			<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="yes"/>
			<layer number="44" name="Drills" color="7" fill="1" visible="no" active="yes"/>
			<layer number="45" name="Holes" color="7" fill="1" visible="no" active="yes"/>
			<layer number="46" name="Milling" color="3" fill="1" visible="no" active="yes"/>
			<layer number="47" name="Measures" color="7" fill="1" visible="no" active="yes"/>
			<layer number="48" name="Document" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
			<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
			<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
			<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
			<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
			<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
		</layers>
		<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
			<libraries>
				<library name="TARGET3001!_V18.4.0.86">
					<packages>
						<package name="STEC12E08_0">
							<pad name="VIA_0" x="0" y="-6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="VIA_1" x="0" y="6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="1" x="7.5" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="2" x="7.5" y="0" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="3" x="7.5" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="5" x="-7" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="4" x="-7" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<circle x="0" y="0" radius="3.4" width="0.3" layer="21"/>
							<wire x1="-2.02517" y1="-1.90509" x2="-2.02517" y2="1.90509" width="0.3" layer="21" curve="273.5" cap="round"/>
							<wire x1="-2.02" y1="-1.905" x2="-2.02" y2="1.905" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="-6.2" x2="5.1" y2="-6.2" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="5.1" y2="6.2" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="6.6" y1="-4.9" x2="6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-5.8" y2="-5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.8" y1="5.7" x2="-6.6" y2="4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="6.6" y1="4.9" x2="5.8" y2="5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="5.8" y1="-5.7" x2="6.6" y2="-4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.1" y1="-6.2" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-6.2" x2="5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="6.2" x2="5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="5.7" x2="5.8" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="5.7" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="-5.7" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-5.7" x2="5.8" y2="-5.7" width="0.3" layer="21"/>
							<text x="8.89" y="3.81" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="-13.505" y="-1.365" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="STEC12E08_1">
							<pad name="VIA_2" x="0" y="-6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="VIA_3" x="0" y="6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="1" x="7.5" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="2" x="7.5" y="0" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="3" x="7.5" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="5" x="-7" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="4" x="-7" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<circle x="0" y="0" radius="3.4" width="0.3" layer="21"/>
							<wire x1="-2.02517" y1="-1.90509" x2="-2.02517" y2="1.90509" width="0.3" layer="21" curve="273.5" cap="round"/>
							<wire x1="-2.02" y1="-1.905" x2="-2.02" y2="1.905" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="-6.2" x2="5.1" y2="-6.2" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="5.1" y2="6.2" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="6.6" y1="-4.9" x2="6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-5.8" y2="-5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.8" y1="5.7" x2="-6.6" y2="4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="6.6" y1="4.9" x2="5.8" y2="5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="5.8" y1="-5.7" x2="6.6" y2="-4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.1" y1="-6.2" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-6.2" x2="5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="6.2" x2="5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="5.7" x2="5.8" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="5.7" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="-5.7" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-5.7" x2="5.8" y2="-5.7" width="0.3" layer="21"/>
							<text x="8.89" y="3.81" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="-13.865" y="-1.365" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="STEC12E08_2">
							<pad name="VIA_4" x="0" y="-6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="VIA_5" x="0" y="6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="1" x="7.5" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="2" x="7.5" y="0" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="3" x="7.5" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="5" x="-7" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="4" x="-7" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<circle x="0" y="0" radius="3.4" width="0.3" layer="21"/>
							<wire x1="-2.02517" y1="-1.90509" x2="-2.02517" y2="1.90509" width="0.3" layer="21" curve="273.5" cap="round"/>
							<wire x1="-2.02" y1="-1.905" x2="-2.02" y2="1.905" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="-6.2" x2="5.1" y2="-6.2" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="5.1" y2="6.2" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="6.6" y1="-4.9" x2="6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-5.8" y2="-5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.8" y1="5.7" x2="-6.6" y2="4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="6.6" y1="4.9" x2="5.8" y2="5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="5.8" y1="-5.7" x2="6.6" y2="-4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.1" y1="-6.2" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-6.2" x2="5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="6.2" x2="5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="5.7" x2="5.8" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="5.7" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="-5.7" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-5.7" x2="5.8" y2="-5.7" width="0.3" layer="21"/>
							<text x="8.89" y="3.81" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="-12.335" y="-1.365" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="STEC12E08_3">
							<pad name="VIA_6" x="0" y="-6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="VIA_7" x="0" y="6" drill="2.1" shape="square" diameter="2.5" rot="R90"/>
							<pad name="1" x="7.5" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="2" x="7.5" y="0" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="3" x="7.5" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="5" x="-7" y="-2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="4" x="-7" y="2.5" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<circle x="0" y="0" radius="3.4" width="0.3" layer="21"/>
							<wire x1="-2.02517" y1="-1.90509" x2="-2.02517" y2="1.90509" width="0.3" layer="21" curve="273.5" cap="round"/>
							<wire x1="-2.02" y1="-1.905" x2="-2.02" y2="1.905" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="-6.2" x2="5.1" y2="-6.2" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="5.1" y2="6.2" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="6.6" y1="-4.9" x2="6.6" y2="4.9" width="0.3" layer="21"/>
							<wire x1="-6.6" y1="-4.9" x2="-5.8" y2="-5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.8" y1="5.7" x2="-6.6" y2="4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="6.6" y1="4.9" x2="5.8" y2="5.7" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="5.8" y1="-5.7" x2="6.6" y2="-4.9" width="0.3" layer="21" curve="90" cap="round"/>
							<wire x1="-5.1" y1="-6.2" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-6.2" x2="5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="-5.1" y1="6.2" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="6.2" x2="5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="5.7" x2="5.8" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="5.7" x2="-5.1" y2="5.7" width="0.3" layer="21"/>
							<wire x1="-5.8" y1="-5.7" x2="-5.1" y2="-5.7" width="0.3" layer="21"/>
							<wire x1="5.1" y1="-5.7" x2="5.8" y2="-5.7" width="0.3" layer="21"/>
							<text x="8.89" y="3.81" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="-11.795" y="-1.365" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="PortExpander_Gehäuse:PDIP-28_4">
							<pad name="21" x="3.81" y="1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="22" x="3.81" y="-1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="23" x="3.81" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="24" x="3.81" y="-6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="25" x="3.81" y="-8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="26" x="3.81" y="-11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="27" x="3.81" y="-13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="28" x="3.81" y="-16.51" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="17" x="3.81" y="11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="18" x="3.81" y="8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="19" x="3.81" y="6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="20" x="3.81" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<wire x1="0.635" y1="-17.5" x2="-0.635" y2="-17.5" width="0.3" layer="22" curve="180" cap="round"/>
							<wire x1="-3.6" y1="-17.5" x2="3.6" y2="-17.5" width="0.3" layer="22"/>
							<circle x="-1.905" y="-16.51" radius="0.5" width="0" layer="22"/>
							<pad name="1" x="-3.81" y="-16.51" drill="0.8" shape="square" diameter="1.74" rot="R90"/>
							<pad name="2" x="-3.81" y="-13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="3" x="-3.81" y="-11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="4" x="-3.81" y="-8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="5" x="-3.81" y="-6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="6" x="-3.81" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="7" x="-3.81" y="-1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="8" x="-3.81" y="1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="9" x="-3.81" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="10" x="-3.81" y="6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="11" x="-3.81" y="8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="12" x="-3.81" y="11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="13" x="-3.81" y="13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="14" x="-3.81" y="16.51" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="15" x="3.81" y="16.51" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<pad name="16" x="3.81" y="13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R90"/>
							<wire x1="-3.6" y1="17.5" x2="-3.6" y2="-17.5" width="0.3" layer="22"/>
							<wire x1="-3.6" y1="17.5" x2="3.6" y2="17.5" width="0.3" layer="22"/>
							<wire x1="3.6" y1="17.5" x2="3.6" y2="-17.5" width="0.3" layer="22"/>
							<text x="-0.889" y="-16.26125" size="2" layer="26" rot="MR270" align="top-right">&gt;NAME</text>
						</package>
						<package name="PortExpander_Gehäuse:PDIP-28_5">
							<pad name="21" x="-3.81" y="-1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="22" x="-3.81" y="1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="23" x="-3.81" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="24" x="-3.81" y="6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="25" x="-3.81" y="8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="26" x="-3.81" y="11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="27" x="-3.81" y="13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="28" x="-3.81" y="16.51" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="17" x="-3.81" y="-11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="18" x="-3.81" y="-8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="19" x="-3.81" y="-6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="20" x="-3.81" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<wire x1="-0.635" y1="17.5" x2="0.635" y2="17.5" width="0.3" layer="22" curve="180" cap="round"/>
							<wire x1="3.6" y1="17.5" x2="-3.6" y2="17.5" width="0.3" layer="22"/>
							<circle x="1.905" y="16.51" radius="0.5" width="0" layer="22"/>
							<pad name="1" x="3.81" y="16.51" drill="0.8" shape="square" diameter="1.74" rot="R270"/>
							<pad name="2" x="3.81" y="13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="3" x="3.81" y="11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="4" x="3.81" y="8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="5" x="3.81" y="6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="6" x="3.81" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="7" x="3.81" y="1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="8" x="3.81" y="-1.27" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="9" x="3.81" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="10" x="3.81" y="-6.35" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="11" x="3.81" y="-8.89" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="12" x="3.81" y="-11.43" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="13" x="3.81" y="-13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="14" x="3.81" y="-16.51" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="15" x="-3.81" y="-16.51" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<pad name="16" x="-3.81" y="-13.97" drill="0.8" shape="octagon" diameter="1.74" rot="R270"/>
							<wire x1="3.6" y1="-17.5" x2="3.6" y2="17.5" width="0.3" layer="22"/>
							<wire x1="3.6" y1="-17.5" x2="-3.6" y2="-17.5" width="0.3" layer="22"/>
							<wire x1="-3.6" y1="-17.5" x2="-3.6" y2="17.5" width="0.3" layer="22"/>
							<text x="-1.111" y="12.36125" size="2" layer="26" rot="MR270" align="top-right">&gt;NAME</text>
						</package>
						<package name="ESP01_6">
							<wire x1="-7.62" y1="-12.7" x2="7.62" y2="-12.7" width="0.3" layer="22"/>
							<wire x1="7.62" y1="-12.7" x2="7.62" y2="12.7" width="0.3" layer="22"/>
							<wire x1="7.62" y1="12.7" x2="-7.62" y2="12.7" width="0.3" layer="22"/>
							<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-12.7" width="0.3" layer="22"/>
							<pad name="1" x="-3.81" y="-10.795" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
							<pad name="2" x="-1.27" y="-10.795" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
							<pad name="3" x="1.27" y="-10.795" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
							<pad name="4" x="3.81" y="-10.795" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
							<pad name="5" x="-3.81" y="-8.255" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
							<pad name="6" x="-1.27" y="-8.255" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
							<pad name="7" x="1.27" y="-8.255" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
							<pad name="8" x="3.81" y="-8.255" drill="0.9" shape="octagon" diameter="1.9" rot="R90"/>
						</package>
						<package name="0207_7">
							<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="-3.81" x2="1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.3" layer="22"/>
							<pad name="1" x="0" y="-5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<pad name="2" x="0" y="5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="0" y1="3.81" x2="0" y2="5.08" width="0.3" layer="22"/>
							<text x="0.91" y="-3.905" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<text x="-1.27" y="0" size="2" layer="28" rot="MR270" align="top-right">&gt;VALUE</text>
						</package>
						<package name="0207_8">
							<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="-3.81" x2="1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.3" layer="22"/>
							<pad name="1" x="0" y="-5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<pad name="2" x="0" y="5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="0" y1="3.81" x2="0" y2="5.08" width="0.3" layer="22"/>
							<text x="1.27" y="-3.81" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<text x="-1.27" y="0" size="2" layer="28" rot="MR270" align="top-right">&gt;VALUE</text>
						</package>
						<package name="SIL8_9">
							<wire x1="-1.275" y1="7.62" x2="1.525" y2="7.62" width="0.3" layer="22"/>
							<pad name="3" x="0" y="3.81" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="4" x="0" y="1.27" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="5" x="0" y="-1.27" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="6" x="0" y="-3.81" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="7" x="0" y="-6.35" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="8" x="0" y="-8.89" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<wire x1="-1.275" y1="10.16" x2="1.525" y2="10.16" width="0.3" layer="22"/>
							<pad name="1" x="0" y="8.89" drill="0.8" shape="square" diameter="1.27" rot="R270"/>
							<pad name="2" x="0" y="6.35" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<wire x1="1.525" y1="-10.16" x2="1.525" y2="10.16" width="0.3" layer="22"/>
							<wire x1="-1.275" y1="-10.16" x2="1.525" y2="-10.16" width="0.3" layer="22"/>
							<wire x1="-1.275" y1="-10.16" x2="-1.275" y2="10.16" width="0.3" layer="22"/>
							<text x="-3.651" y="7.16" size="2" layer="26" rot="MR270" align="top-right">&gt;NAME</text>
							<text x="1.81" y="0.92" size="2" layer="28" rot="MR270" align="top-right">&gt;VALUE</text>
						</package>
						<package name="SIL8_10">
							<wire x1="7.62" y1="1.275" x2="7.62" y2="-1.525" width="0.3" layer="22"/>
							<pad name="3" x="3.81" y="0" drill="0.8" shape="long" diameter="0.235" rot="R270"/>
							<pad name="4" x="1.27" y="0" drill="0.8" shape="long" diameter="0.235" rot="R270"/>
							<pad name="5" x="-1.27" y="0" drill="0.8" shape="long" diameter="0.235" rot="R270"/>
							<pad name="6" x="-3.81" y="0" drill="0.8" shape="long" diameter="0.235" rot="R270"/>
							<pad name="7" x="-6.35" y="0" drill="0.8" shape="long" diameter="0.235" rot="R270"/>
							<pad name="8" x="-8.89" y="0" drill="0.8" shape="long" diameter="0.235" rot="R270"/>
							<wire x1="10.16" y1="1.275" x2="10.16" y2="-1.525" width="0.3" layer="22"/>
							<pad name="1" x="8.89" y="0" drill="0.8" shape="square" diameter="1.27" rot="R180"/>
							<pad name="2" x="6.35" y="0" drill="0.8" shape="long" diameter="0.235" rot="R270"/>
							<wire x1="-10.16" y1="-1.525" x2="10.16" y2="-1.525" width="0.3" layer="22"/>
							<wire x1="-10.16" y1="1.275" x2="-10.16" y2="-1.525" width="0.3" layer="22"/>
							<wire x1="-10.16" y1="1.275" x2="10.16" y2="1.275" width="0.3" layer="22"/>
							<text x="10.16" y="1.651" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<text x="10.16" y="-3.81" size="2" layer="28" rot="MR0">&gt;VALUE</text>
						</package>
						<package name="4X13R10,16_11">
							<wire x1="1.5" y1="-6.5" x2="-1.5" y2="-6.5" width="0.3" layer="22"/>
							<wire x1="-1.5" y1="-6.5" x2="-1.5" y2="6.5" width="0.3" layer="22"/>
							<wire x1="-1.5" y1="6.5" x2="1.5" y2="6.5" width="0.3" layer="22"/>
							<wire x1="1.5" y1="6.5" x2="1.5" y2="-6.5" width="0.3" layer="22"/>
							<pad name="1" x="0" y="-5.08" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<pad name="2" x="0" y="5.08" drill="1" shape="octagon" diameter="2" rot="R90"/>
							<text x="1.905" y="-6.35" size="2" layer="26" rot="MR270" align="top-right">&gt;NAME</text>
						</package>
						<package name="4X13R10,16_12">
							<wire x1="-6.5" y1="-1.5" x2="-6.5" y2="1.5" width="0.3" layer="22"/>
							<wire x1="-6.5" y1="1.5" x2="6.5" y2="1.5" width="0.3" layer="22"/>
							<wire x1="6.5" y1="1.5" x2="6.5" y2="-1.5" width="0.3" layer="22"/>
							<wire x1="6.5" y1="-1.5" x2="-6.5" y2="-1.5" width="0.3" layer="22"/>
							<pad name="1" x="-5.08" y="0" drill="1" shape="octagon" diameter="2"/>
							<pad name="2" x="5.08" y="0" drill="1" shape="octagon" diameter="2"/>
							<text x="-3.81" y="-3.905" size="2" layer="26" rot="MR0">&gt;NAME</text>
						</package>
						<package name="LCD2004_13">
							<wire x1="-48.8696" y1="29.7942" x2="-48.8696" y2="-30.2768" width="0.3" layer="21"/>
							<wire x1="49.022" y1="29.7942" x2="-48.8696" y2="29.7942" width="0.3" layer="21"/>
							<wire x1="49.022" y1="29.7942" x2="49.022" y2="-30.2768" width="0.3" layer="21"/>
							<wire x1="49.022" y1="-30.2768" x2="-48.8696" y2="-30.2768" width="0.3" layer="21"/>
							<pad name="17" x="-46.4566" y="-27.7876" drill="3.2" shape="round" diameter="5"/>
							<pad name="18" x="46.5074" y="-27.7876" drill="3.2" shape="round" diameter="5" rot="R90"/>
							<pad name="19" x="46.5074" y="27.2288" drill="3.2" shape="round" diameter="5" rot="R90"/>
							<pad name="20" x="-46.5074" y="27.2288" drill="3.2" shape="round" diameter="5"/>
							<wire x1="-48.8442" y1="19.7612" x2="-48.8442" y2="-20.2946" width="0.3" layer="21"/>
							<wire x1="-48.8442" y1="19.7612" x2="49.022" y2="19.7612" width="0.3" layer="21"/>
							<wire x1="49.022" y1="19.7612" x2="49.022" y2="-20.2946" width="0.3" layer="21"/>
							<wire x1="-48.8442" y1="-20.2946" x2="49.022" y2="-20.2946" width="0.3" layer="21"/>
							<wire x1="-38.0238" y1="12.319" x2="-38.0238" y2="-12.8778" width="0.3" layer="21"/>
							<wire x1="-38.0238" y1="12.319" x2="37.9984" y2="12.319" width="0.3" layer="21"/>
							<wire x1="37.9984" y1="12.319" x2="37.9984" y2="-12.8778" width="0.3" layer="21"/>
							<wire x1="-38.0238" y1="-12.8778" x2="37.9984" y2="-12.8778" width="0.3" layer="21"/>
							<pad name="1" x="-39" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="2" x="-36.46" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<wire x1="-34.9758" y1="10.1092" x2="-34.9758" y2="-10.668" width="0.3" layer="21"/>
							<wire x1="35.052" y1="10.1092" x2="-34.9758" y2="10.1092" width="0.3" layer="21"/>
							<wire x1="35.052" y1="10.1092" x2="35.052" y2="-10.668" width="0.3" layer="21"/>
							<wire x1="35.052" y1="-10.668" x2="-34.9758" y2="-10.668" width="0.3" layer="21"/>
							<pad name="3" x="-33.92" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="4" x="-31.38" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="5" x="-28.84" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="6" x="-26.3" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="7" x="-23.76" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="8" x="-21.22" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="9" x="-18.68" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="10" x="-16.14" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="11" x="-13.6" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="12" x="-11.06" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="13" x="-8.52" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R270"/>
							<pad name="14" x="-5.98" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="15" x="-3.44" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<pad name="16" x="-0.9" y="26.7206" drill="0.8" shape="octagon" diameter="2" rot="R90"/>
							<text x="4.32088" y="25.43415" size="2" layer="25">&gt;NAME</text>
							<text x="-40.2336" y="-25.9334" size="2" layer="27">&gt;VALUE</text>
							<text x="-38.1922" y="18.1478" size="1" layer="21" rot="R90">Vss-GND</text>
							<text x="-35.7632" y="21.9202" size="1" layer="21" rot="R90">Vdd</text>
							<text x="-33.3248" y="22.8346" size="1" layer="21" rot="R90">Vo</text>
							<text x="-30.6832" y="22.86" size="1" layer="21" rot="R90">RS</text>
							<text x="-28.1178" y="21.3106" size="1" layer="21" rot="R90">R/W</text>
							<text x="-25.6032" y="23.749" size="1" layer="21" rot="R90">E</text>
							<text x="-23.0886" y="22.225" size="1" layer="21" rot="R90">DB0</text>
							<text x="-20.6248" y="22.2758" size="1" layer="21" rot="R90">DB1</text>
							<text x="-18.034" y="22.1488" size="1" layer="21" rot="R90">DB2</text>
							<text x="-15.5194" y="22.098" size="1" layer="21" rot="R90">DB3</text>
							<text x="-12.8524" y="22.1488" size="1" layer="21" rot="R90">DB4</text>
							<text x="-10.3378" y="22.1996" size="1" layer="21" rot="R90">DB5</text>
							<text x="-7.874" y="22.1996" size="1" layer="21" rot="R90">DB6</text>
							<text x="-5.207" y="22.225" size="1" layer="21" rot="R90">DB7</text>
							<text x="-2.794" y="18.7452" size="1" layer="21" rot="R90">Led+(A)</text>
							<text x="-0.2794" y="19.0246" size="1" layer="21" rot="R90">Led-(K)</text>
						</package>
						<package name="PortExpander_Gehäuse:PDIP-28_14">
							<pad name="21" x="-1.27" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="22" x="1.27" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="23" x="3.81" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="24" x="6.35" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="25" x="8.89" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="26" x="11.43" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="27" x="13.97" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="28" x="16.51" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="17" x="-11.43" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="18" x="-8.89" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="19" x="-6.35" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="20" x="-3.81" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<wire x1="17.5" y1="0.635" x2="17.5" y2="-0.635" width="0.3" layer="22" curve="180" cap="round"/>
							<wire x1="17.5" y1="-3.6" x2="17.5" y2="3.6" width="0.3" layer="22"/>
							<circle x="16.51" y="-1.905" radius="0.5" width="0" layer="22"/>
							<pad name="1" x="16.51" y="-3.81" drill="0.8" shape="square" diameter="1.74" rot="R180"/>
							<pad name="2" x="13.97" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="3" x="11.43" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="4" x="8.89" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="5" x="6.35" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="6" x="3.81" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="7" x="1.27" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="8" x="-1.27" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="9" x="-3.81" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="10" x="-6.35" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="11" x="-8.89" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="12" x="-11.43" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="13" x="-13.97" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="14" x="-16.51" y="-3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="15" x="-16.51" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<pad name="16" x="-13.97" y="3.81" drill="0.8" shape="octagon" diameter="1.74" rot="R180"/>
							<wire x1="-17.5" y1="-3.6" x2="17.5" y2="-3.6" width="0.3" layer="22"/>
							<wire x1="-17.5" y1="-3.6" x2="-17.5" y2="3.6" width="0.3" layer="22"/>
							<wire x1="-17.5" y1="3.6" x2="17.5" y2="3.6" width="0.3" layer="22"/>
						</package>
						<package name="4X13R10,16_15">
							<wire x1="-1.5" y1="6.5" x2="1.5" y2="6.5" width="0.3" layer="22"/>
							<wire x1="1.5" y1="6.5" x2="1.5" y2="-6.5" width="0.3" layer="22"/>
							<wire x1="1.5" y1="-6.5" x2="-1.5" y2="-6.5" width="0.3" layer="22"/>
							<wire x1="-1.5" y1="-6.5" x2="-1.5" y2="6.5" width="0.3" layer="22"/>
							<pad name="1" x="0" y="5.08" drill="1" shape="octagon" diameter="2" rot="R270"/>
							<pad name="2" x="0" y="-5.08" drill="1" shape="octagon" diameter="2" rot="R270"/>
							<text x="-3.905" y="3.81" size="2" layer="26" rot="MR270" align="top-right">&gt;NAME</text>
						</package>
						<package name="SIL8_16">
							<wire x1="-1.275" y1="7.62" x2="1.525" y2="7.62" width="0.3" layer="22"/>
							<pad name="3" x="0" y="3.81" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="4" x="0" y="1.27" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="5" x="0" y="-1.27" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="6" x="0" y="-3.81" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="7" x="0" y="-6.35" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<pad name="8" x="0" y="-8.89" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<wire x1="-1.275" y1="10.16" x2="1.525" y2="10.16" width="0.3" layer="22"/>
							<pad name="1" x="0" y="8.89" drill="0.8" shape="square" diameter="1.27" rot="R270"/>
							<pad name="2" x="0" y="6.35" drill="0.8" shape="long" diameter="0.235" rot="R360"/>
							<wire x1="1.525" y1="-10.16" x2="1.525" y2="10.16" width="0.3" layer="22"/>
							<wire x1="-1.275" y1="-10.16" x2="1.525" y2="-10.16" width="0.3" layer="22"/>
							<wire x1="-1.275" y1="-10.16" x2="-1.275" y2="10.16" width="0.3" layer="22"/>
							<text x="-3.651" y="6.8" size="2" layer="26" rot="MR270" align="top-right">&gt;NAME</text>
							<text x="1.81" y="0.92" size="2" layer="28" rot="MR270" align="top-right">&gt;VALUE</text>
						</package>
						<package name="0207_17">
							<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.3" layer="22"/>
							<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.3" layer="22"/>
							<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.3" layer="22"/>
							<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.3" layer="22"/>
							<pad name="1" x="-5.08" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="5.08" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.3" layer="22"/>
							<wire x1="3.81" y1="0" x2="5.08" y2="0" width="0.3" layer="22"/>
							<text x="3.7954" y="-1.017722" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<text x="0.651308" y="-1.026624" size="2" layer="28" rot="MR0">&gt;VALUE</text>
						</package>
						<package name="0207_18">
							<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="-3.81" x2="1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.3" layer="22"/>
							<pad name="1" x="0" y="-5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<pad name="2" x="0" y="5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="0" y1="3.81" x2="0" y2="5.08" width="0.3" layer="22"/>
							<text x="1.27" y="-3.81" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<text x="-1.27" y="-0.635" size="2" layer="28" rot="MR270" align="top-right">&gt;VALUE</text>
						</package>
						<package name="0207_19">
							<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="-3.81" x2="1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.3" layer="22"/>
							<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.3" layer="22"/>
							<pad name="1" x="0" y="-5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<pad name="2" x="0" y="5.08" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-3.81" width="0.3" layer="22"/>
							<wire x1="0" y1="3.81" x2="0" y2="5.08" width="0.3" layer="22"/>
							<text x="0.635" y="-3.81" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<text x="-1.27" y="-0.635" size="2" layer="28" rot="MR270" align="top-right">&gt;VALUE</text>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_20">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_21">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_22">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_23">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_24">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_25">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_26">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_27">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_28">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_29">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_30">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="TASTER_DIGITAST_STD(#1)(#1)_31">
							<pad name="5" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="4" x="3.81" y="5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<wire x1="-6.25" y1="8.75" x2="-6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="-8.75" x2="6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="6.25" y1="8.75" x2="-6.25" y2="8.75" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="2.25" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-6.25" y1="-8.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="-7.25" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="-7.25" x2="6.25" y2="-8.75" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="4.75" y2="-7.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="4.75" y1="0.75" x2="-4.75" y2="0.75" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-6.25" y2="2.25" width="0.18" layer="21"/>
							<wire x1="-4.75" y1="0.75" x2="-4.75" y2="-7.25" width="0.18" layer="21"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
							<pad name="3" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="1.1875" rot="R90"/>
						</package>
						<package name="1X06-90_32">
							<pad name="1" x="0" y="0" drill="1" shape="square" diameter="1.6" rot="R90"/>
							<pad name="2" x="0" y="2.54" drill="1" shape="octagon" diameter="1.6" rot="R90"/>
							<wire x1="5.1" y1="13.97" x2="5.1" y2="-1.27" width="0.3" layer="22"/>
							<wire x1="5.1" y1="-1.27" x2="2.6" y2="-1.27" width="0.3" layer="22"/>
							<wire x1="10.54" y1="0" x2="0" y2="0" width="0.6" layer="22"/>
							<text x="2.54" y="-3.905" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<wire x1="2.6" y1="13.97" x2="2.6" y2="-1.27" width="0.3" layer="22"/>
							<wire x1="2.6" y1="13.97" x2="5.1" y2="13.97" width="0.3" layer="22"/>
							<wire x1="10.54" y1="2.54" x2="0" y2="2.54" width="0.6" layer="22"/>
							<wire x1="10.54" y1="5.08" x2="0" y2="5.08" width="0.6" layer="22"/>
							<pad name="3" x="0" y="5.08" drill="1" shape="octagon" diameter="1.6" rot="R90"/>
							<wire x1="10.54" y1="7.62" x2="0" y2="7.62" width="0.6" layer="22"/>
							<wire x1="10.54" y1="10.16" x2="0" y2="10.16" width="0.6" layer="22"/>
							<wire x1="10.54" y1="12.7" x2="0" y2="12.7" width="0.6" layer="22"/>
							<pad name="4" x="0" y="7.62" drill="1" shape="octagon" diameter="1.6" rot="R90"/>
							<pad name="5" x="0" y="10.16" drill="1" shape="octagon" diameter="1.6" rot="R90"/>
							<pad name="6" x="0" y="12.7" drill="1" shape="octagon" diameter="1.6" rot="R90"/>
						</package>
						<package name="KURZHUBTASTER_DURCHSTECKMONT._33">
							<wire x1="1.75" y1="-3" x2="-1.75" y2="-3" width="0.3" layer="22"/>
							<wire x1="-1.75" y1="-3" x2="-1.75" y2="3" width="0.3" layer="22"/>
							<wire x1="-1.75" y1="3" x2="1.75" y2="3" width="0.3" layer="22"/>
							<wire x1="1.75" y1="3" x2="1.75" y2="-3" width="0.3" layer="22"/>
							<pad name="2" x="0" y="-3.25" drill="1.25" shape="octagon" diameter="2.25" rot="R90"/>
							<pad name="1" x="0" y="3.25" drill="1.25" shape="octagon" diameter="2.25" rot="R90"/>
							<text x="-1.63" y="-1.365" size="2" layer="26" rot="MR0">&gt;NAME</text>
						</package>
						<package name="KURZHUBTASTER_DURCHSTECKMONT._34">
							<wire x1="-1.75" y1="3" x2="1.75" y2="3" width="0.3" layer="22"/>
							<wire x1="1.75" y1="3" x2="1.75" y2="-3" width="0.3" layer="22"/>
							<wire x1="1.75" y1="-3" x2="-1.75" y2="-3" width="0.3" layer="22"/>
							<wire x1="-1.75" y1="-3" x2="-1.75" y2="3" width="0.3" layer="22"/>
							<pad name="2" x="0" y="3.25" drill="1.25" shape="octagon" diameter="2.25" rot="R270"/>
							<pad name="1" x="0" y="-3.25" drill="1.25" shape="octagon" diameter="2.25" rot="R270"/>
							<text x="-1.905" y="0.54" size="2" layer="26" rot="MR0">&gt;NAME</text>
						</package>
						<package name="POTI_PD84_35">
							<circle x="0" y="0" radius="4.2" width="0.3" layer="21"/>
							<pad name="1" x="2.54" y="1.27" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="2" x="0" y="-1.27" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="3" x="-2.54" y="1.27" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<wire x1="0" y1="0" x2="-0.898026" y2="-0.898026" width="0.3" layer="21"/>
							<polygon width="0" layer="21">
								<vertex x="0.898026" y="0.898026"/>
								<vertex x="0.449013" y="-0.449013"/>
								<vertex x="-0.449013" y="0.449013"/>
							</polygon>
							<text x="1.905" y="-6.445" size="2" layer="25">&gt;NAME</text>
						</package>
						<package name="EINLÖT-DC-BUCHSE_2.5MM_36">
							<wire x1="-7.25" y1="1.5" x2="-7.25" y2="4.5" width="0.3" layer="22"/>
							<wire x1="-7.25" y1="-4.5" x2="-7.25" y2="-1.5" width="0.3" layer="22"/>
							<wire x1="-6.75" y1="-4.5" x2="-6.75" y2="-1.5" width="0.3" layer="22"/>
							<wire x1="-7.25" y1="1.5" x2="-6.75" y2="1.5" width="0.3" layer="22"/>
							<wire x1="-7.25" y1="-1.5" x2="-6.75" y2="-1.5" width="0.3" layer="22"/>
							<wire x1="-6.75" y1="1.5" x2="-6.75" y2="4.5" width="0.3" layer="22"/>
							<wire x1="3.75" y1="4.5" x2="3.75" y2="-4.5" width="0.3" layer="22"/>
							<wire x1="7.25" y1="4.5" x2="7.25" y2="-4.5" width="0.3" layer="22"/>
							<wire x1="7.25" y1="-4.5" x2="-7.25" y2="-4.5" width="0.3" layer="22"/>
							<wire x1="-7.25" y1="-1.5" x2="-7.25" y2="1.5" width="0.3" layer="22"/>
							<wire x1="-7.25" y1="4.5" x2="7.25" y2="4.5" width="0.3" layer="22"/>
							<pad name="1" x="-6.65" y="0" drill="3.1" shape="octagon" diameter="3.7" rot="R180"/>
							<pad name="3" x="-0.45" y="0" drill="2.6" shape="octagon" diameter="3.1" rot="R180"/>
							<pad name="2" x="-3.45" y="-4.7" drill="2.5" shape="octagon" diameter="3.1" rot="R180"/>
							<text x="2.54" y="5.08" size="2" layer="26" rot="MR0">&gt;NAME</text>
							<text x="8.255" y="-6.985" size="2" layer="28" rot="MR0">&gt;VALUE</text>
						</package>
						<package name="TO220_37">
							<pad name="1" x="-2.54" y="0" drill="1" shape="square" diameter="1.651"/>
							<pad name="2" x="0" y="0" drill="1" shape="long" diameter="0.3255" rot="R90"/>
							<pad name="3" x="2.54" y="0" drill="1" shape="long" diameter="0.3255" rot="R90"/>
							<wire x1="-5.1435" y1="-3.1115" x2="-5.1435" y2="1.7145" width="0.3" layer="22"/>
							<wire x1="-5.1435" y1="1.7145" x2="5.1435" y2="1.7145" width="0.3" layer="22"/>
							<wire x1="5.1435" y1="1.7145" x2="5.1435" y2="-3.1115" width="0.3" layer="22"/>
							<wire x1="5.1435" y1="-3.1115" x2="-5.1435" y2="-3.1115" width="0.3" layer="22"/>
							<wire x1="-5.1435" y1="-1.7145" x2="5.1435" y2="-1.7145" width="0.3" layer="22"/>
							<text x="-2.9" y="-5.81" size="2" layer="26" rot="MR0">&gt;NAME</text>
						</package>
					</packages>
					<symbols>
						<symbol name="STEC12E08_0">
							<wire x1="6.35" y1="-6.35" x2="-6.35" y2="-6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="-6.35" x2="6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<pin name="A" x="-3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="C" x="0" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="B" x="3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="D" x="1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<pin name="E" x="-1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<circle x="0" y="0" radius="3.592102" width="0.3" layer="94"/>
							<text x="8.89" y="-5.715" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<text x="-6.985" y="-6.35" size="2" layer="95" rot="R90">&gt;NAME</text>
						</symbol>
						<symbol name="STEC12E08_1">
							<wire x1="6.35" y1="-6.35" x2="-6.35" y2="-6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="-6.35" x2="6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<pin name="A" x="-3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="C" x="0" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="B" x="3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="D" x="1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<pin name="E" x="-1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<circle x="0" y="0" radius="3.592102" width="0.3" layer="94"/>
							<text x="8.89" y="-5.715" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<text x="-6.985" y="-6.35" size="2" layer="95" rot="R90">&gt;NAME</text>
						</symbol>
						<symbol name="STEC12E08_2">
							<wire x1="6.35" y1="-6.35" x2="-6.35" y2="-6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="-6.35" x2="6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<pin name="A" x="-3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="C" x="0" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="B" x="3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="D" x="1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<pin name="E" x="-1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<circle x="0" y="0" radius="3.592102" width="0.3" layer="94"/>
							<text x="8.89" y="-5.715" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<text x="-6.985" y="-6.35" size="2" layer="95" rot="R90">&gt;NAME</text>
						</symbol>
						<symbol name="STEC12E08_3">
							<wire x1="6.35" y1="-6.35" x2="-6.35" y2="-6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="-6.35" x2="6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-6.35" x2="-6.35" y2="6.35" width="0.3" layer="94"/>
							<pin name="A" x="-3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="C" x="0" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="B" x="3.81" y="-8.89" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="D" x="1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<pin name="E" x="-1.905" y="8.89" visible="both" length="short" direction="pas" rot="R270"/>
							<circle x="0" y="0" radius="3.592102" width="0.3" layer="94"/>
							<text x="8.89" y="-5.715" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<text x="-6.985" y="-6.35" size="2" layer="95" rot="R90">&gt;NAME</text>
						</symbol>
						<symbol name="PORTEXPANDER_MCP23017_4">
							<pin name="PE2A7" x="13.97" y="16.51" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A6" x="13.97" y="13.97" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A5" x="13.97" y="11.43" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A4" x="13.97" y="8.89" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A3" x="13.97" y="6.35" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A2" x="13.97" y="3.81" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A1" x="13.97" y="1.27" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A0" x="13.97" y="-1.27" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="INTPE2A" x="13.97" y="-3.81" visible="both" length="short" direction="nc" rot="R180"/>
							<pin name="INTPE2B" x="13.97" y="-6.35" visible="both" length="short" direction="nc" rot="R180"/>
							<pin name="RESET" x="13.97" y="-8.89" visible="both" length="short" direction="in" function="dot" rot="R180"/>
							<pin name="APE2.2" x="13.97" y="-11.43" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="APE2.1" x="13.97" y="-13.97" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="APE2.0" x="13.97" y="-16.51" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="PE2B0" x="-11.43" y="16.51" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B1" x="-11.43" y="13.97" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B2" x="-11.43" y="11.43" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B3" x="-11.43" y="8.89" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B4" x="-11.43" y="6.35" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B5" x="-11.43" y="3.81" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B6" x="-11.43" y="1.27" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B7" x="-11.43" y="-1.27" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="VDD" x="-11.43" y="-3.81" visible="both" length="short" direction="pwr" rot="R0"/>
							<pin name="VSS" x="-11.43" y="-6.35" visible="both" length="short" direction="pwr" rot="R0"/>
							<pin name="NC@1" x="-11.43" y="-8.89" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="SCL" x="-11.43" y="-11.43" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="SDA" x="-11.43" y="-13.97" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="NC@2" x="-11.43" y="-16.51" visible="both" length="short" direction="nc" rot="R0"/>
							<wire x1="-8.89" y1="19.05" x2="11.43" y2="19.05" width="0.3" layer="94"/>
							<wire x1="11.43" y1="19.05" x2="11.43" y2="-19.05" width="0.3" layer="94"/>
							<wire x1="11.43" y1="-19.05" x2="-8.89" y2="-19.05" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-19.05" x2="-8.89" y2="19.05" width="0.3" layer="94"/>
							<text x="-8.89" y="19.55" size="2" layer="95">&gt;NAME</text>
						</symbol>
						<symbol name="PORTEXPANDER_MCP23017_5">
							<pin name="PE2A7" x="13.97" y="16.51" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A6" x="13.97" y="13.97" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A5" x="13.97" y="11.43" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A4" x="13.97" y="8.89" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A3" x="13.97" y="6.35" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A2" x="13.97" y="3.81" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A1" x="13.97" y="1.27" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2A0" x="13.97" y="-1.27" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="INTPE2A" x="13.97" y="-3.81" visible="both" length="short" direction="nc" rot="R180"/>
							<pin name="INTPE2B" x="13.97" y="-6.35" visible="both" length="short" direction="nc" rot="R180"/>
							<pin name="RESET" x="13.97" y="-8.89" visible="both" length="short" direction="in" function="dot" rot="R180"/>
							<pin name="APE2.2" x="13.97" y="-11.43" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="APE2.1" x="13.97" y="-13.97" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="APE2.0" x="13.97" y="-16.51" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="PE2B0" x="-11.43" y="16.51" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B1" x="-11.43" y="13.97" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B2" x="-11.43" y="11.43" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B3" x="-11.43" y="8.89" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B4" x="-11.43" y="6.35" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B5" x="-11.43" y="3.81" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B6" x="-11.43" y="1.27" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2B7" x="-11.43" y="-1.27" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="VDD" x="-11.43" y="-3.81" visible="both" length="short" direction="pwr" rot="R0"/>
							<pin name="VSS" x="-11.43" y="-6.35" visible="both" length="short" direction="pwr" rot="R0"/>
							<pin name="NC@1" x="-11.43" y="-8.89" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="SCL" x="-11.43" y="-11.43" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="SDA" x="-11.43" y="-13.97" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="NC@2" x="-11.43" y="-16.51" visible="both" length="short" direction="nc" rot="R0"/>
							<wire x1="-8.89" y1="19.05" x2="11.43" y2="19.05" width="0.3" layer="94"/>
							<wire x1="11.43" y1="19.05" x2="11.43" y2="-19.05" width="0.3" layer="94"/>
							<wire x1="11.43" y1="-19.05" x2="-8.89" y2="-19.05" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-19.05" x2="-8.89" y2="19.05" width="0.3" layer="94"/>
							<text x="-8.89" y="19.55" size="2" layer="95">&gt;NAME</text>
						</symbol>
						<symbol name="ESP8266_ESP01_6">
							<text x="-6.985" y="1.905" size="2" layer="95">&gt;NAME</text>
							<pin name="Vcc_3.3" x="6.985" y="-24.13" visible="both" length="short" direction="pwr" rot="R90"/>
							<pin name="Rst" x="1.905" y="-24.13" visible="both" length="short" direction="in" rot="R90"/>
							<pin name="Ch-Pd" x="-3.175" y="-24.13" visible="both" length="short" direction="pas" rot="R90"/>
							<pin name="TxD" x="-8.255" y="-24.13" visible="both" length="short" direction="out" rot="R90"/>
							<pin name="RxD" x="6.985" y="-7.62" visible="both" length="short" direction="in" rot="R270"/>
							<pin name="GPIO0/Prog" x="1.905" y="-7.62" visible="both" length="short" direction="pas" rot="R270"/>
							<pin name="GPIO2" x="-3.175" y="-7.62" visible="both" length="short" direction="pas" rot="R270"/>
							<pin name="GND" x="-8.255" y="-7.62" visible="both" length="short" direction="pwr" rot="R270"/>
							<wire x1="-13.97" y1="-22.86" x2="-13.97" y2="8.89" width="0.3" layer="94"/>
							<wire x1="-13.97" y1="8.89" x2="12.7" y2="8.89" width="0.3" layer="94"/>
							<wire x1="12.7" y1="8.89" x2="12.7" y2="-22.86" width="0.3" layer="94"/>
							<wire x1="12.7" y1="-22.86" x2="-13.97" y2="-22.86" width="0.3" layer="94"/>
							<text x="-12.065" y="11.43" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_carbon_330-Ohm_0207_7">
							<pin name="1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
							<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.3" layer="94"/>
							<text x="-1.905" y="-2.54" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="3.81" y="-2.54" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="R_carbon_3,3K_0207_8">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-0.35" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="8PIN-NW_9">
							<wire x1="2.54" y1="10.16" x2="-2.54" y2="10.16" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="10.16" x2="-2.54" y2="12.7" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="12.7" x2="2.54" y2="12.7" width="0.3" layer="94"/>
							<pin name="1" x="-7.62" y="11.43" visible="pad" length="middle" direction="pas" rot="R0"/>
							<pin name="2" x="7.62" y="11.43" visible="pad" length="middle" direction="pas" rot="R180"/>
							<pin name="3" x="7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="4" x="7.62" y="3.81" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="5" x="7.62" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="6" x="7.62" y="-3.81" visible="pad" length="short" direction="pas" rot="R180"/>
							<text x="2.635" y="3.473333" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="-1.175" y="-1.923333" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<wire x1="2.54" y1="12.7" x2="2.54" y2="10.16" width="0.3" layer="94"/>
							<pin name="7" x="7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="8" x="7.62" y="-11.43" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="5.08" y1="13.97" x2="5.08" y2="-13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-5.08" y1="13.97" x2="-5.08" y2="-13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-5.08" y1="-13.97" x2="5.08" y2="-13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-5.08" y1="13.97" x2="5.08" y2="13.97" width="0.3" layer="94" style="shortdash"/>
						</symbol>
						<symbol name="8PIN-NW_10">
							<wire x1="-2.54" y1="-10.16" x2="2.54" y2="-10.16" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-10.16" x2="2.54" y2="-12.7" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-12.7" x2="-2.54" y2="-12.7" width="0.3" layer="94"/>
							<pin name="1" x="7.62" y="-11.43" visible="pad" length="middle" direction="pas" rot="R180"/>
							<pin name="2" x="-7.62" y="-11.43" visible="pad" length="middle" direction="pas" rot="R0"/>
							<pin name="3" x="-7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="4" x="-7.62" y="-3.81" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="5" x="-7.62" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="6" x="-7.62" y="3.81" visible="pad" length="short" direction="pas" rot="R0"/>
							<text x="-0.635" y="-7.62" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="3.175" y="-7.62" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<wire x1="-2.54" y1="-12.7" x2="-2.54" y2="-10.16" width="0.3" layer="94"/>
							<pin name="7" x="-7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="8" x="-7.62" y="11.43" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="-5.08" y1="-13.97" x2="-5.08" y2="13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="5.08" y1="-13.97" x2="5.08" y2="13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="5.08" y1="13.97" x2="-5.08" y2="13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="5.08" y1="-13.97" x2="-5.08" y2="-13.97" width="0.3" layer="94" style="shortdash"/>
						</symbol>
						<symbol name="B32521-C1104-K_11">
							<pin name="1" x="0" y="-3.81" visible="pad" length="middle" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="3.81" visible="pad" length="middle" direction="pas" rot="R270"/>
							<rectangle x1="-0.317" y1="-2.54" x2="0.317" y2="1.27" layer="94" rot="R90"/>
							<rectangle x1="-0.317" y1="-1.27" x2="0.317" y2="2.54" layer="94" rot="R90"/>
							<text x="-3.175" y="-4.128" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="5.08" y="-3.493" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="B32521-C1104-K_12">
							<pin name="1" x="0" y="-3.81" visible="pad" length="middle" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="3.81" visible="pad" length="middle" direction="pas" rot="R270"/>
							<rectangle x1="-0.317" y1="-2.54" x2="0.317" y2="1.27" layer="94" rot="R90"/>
							<rectangle x1="-0.317" y1="-1.27" x2="0.317" y2="2.54" layer="94" rot="R90"/>
							<text x="-3.175" y="-4.128" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="5.08" y="-3.493" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="LCD_2004_13">
							<pin name="GND" x="-2.54" y="-3.175" visible="both" length="short" direction="pwr" rot="R0"/>
							<pin name="Vdd" x="-2.54" y="-5.715" visible="both" length="short" direction="pwr" rot="R0"/>
							<pin name="Vo" x="-2.54" y="-8.255" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="RS" x="-2.54" y="-10.795" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="R/W" x="-2.54" y="-13.335" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="E" x="-2.54" y="-15.875" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="D0" x="-2.54" y="-18.415" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="D1" x="-2.54" y="-20.955" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="D2" x="-2.54" y="-23.495" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="D3" x="-2.54" y="-26.035" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="D4" x="-2.54" y="-28.575" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="D5" x="-2.54" y="-31.115" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="D6" x="-2.54" y="-33.655" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="D7" x="-2.54" y="-36.195" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="LED+" x="-2.54" y="-38.735" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="LED-" x="-2.54" y="-41.275" visible="both" length="short" direction="pas" rot="R0"/>
							<wire x1="0" y1="0" x2="15.24" y2="0" width="0.3" layer="94"/>
							<wire x1="15.24" y1="0" x2="15.24" y2="-45.085" width="0.3" layer="94"/>
							<wire x1="15.24" y1="-45.085" x2="0" y2="-45.085" width="0.3" layer="94"/>
							<wire x1="0" y1="-45.085" x2="0" y2="0" width="0.3" layer="94"/>
							<wire x1="12.7" y1="-2.54" x2="5.715" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="5.715" y1="-2.54" x2="5.715" y2="-41.91" width="0.3" layer="94"/>
							<wire x1="5.715" y1="-41.91" x2="12.7" y2="-41.91" width="0.3" layer="94"/>
							<wire x1="12.7" y1="-41.91" x2="12.7" y2="-2.54" width="0.3" layer="94"/>
							<text x="10.255" y="-26.051667" size="2" layer="97" rot="R90">HD 44780</text>
							<text x="17.875" y="-13.115" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="17.875" y="-38.746667" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="PORTEXPANDER_MCP23017_14">
							<pin name="PE2A7" x="-13.97" y="-16.51" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="PE2A6" x="-13.97" y="-13.97" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2A5" x="-13.97" y="-11.43" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="PE2A4" x="-13.97" y="-8.89" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="PE2A3" x="-13.97" y="-6.35" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2A2" x="-13.97" y="-3.81" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2A1" x="-13.97" y="-1.27" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="PE2A0" x="-13.97" y="1.27" visible="both" length="short" direction="io" rot="R0"/>
							<pin name="INTPE2A" x="-13.97" y="3.81" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="INTPE2B" x="-13.97" y="6.35" visible="both" length="short" direction="nc" rot="R0"/>
							<pin name="RESET" x="-13.97" y="8.89" visible="both" length="short" direction="in" function="dot" rot="R0"/>
							<pin name="APE2.2" x="-13.97" y="11.43" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="APE2.1" x="-13.97" y="13.97" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="APE2.0" x="-13.97" y="16.51" visible="both" length="short" direction="in" rot="R0"/>
							<pin name="PE2B0" x="11.43" y="-16.51" visible="both" length="short" direction="nc" rot="R180"/>
							<pin name="PE2B1" x="11.43" y="-13.97" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2B2" x="11.43" y="-11.43" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2B3" x="11.43" y="-8.89" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2B4" x="11.43" y="-6.35" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2B5" x="11.43" y="-3.81" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2B6" x="11.43" y="-1.27" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="PE2B7" x="11.43" y="1.27" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="VDD" x="11.43" y="3.81" visible="both" length="short" direction="pwr" rot="R180"/>
							<pin name="VSS" x="11.43" y="6.35" visible="both" length="short" direction="pwr" rot="R180"/>
							<pin name="NC@1" x="11.43" y="8.89" visible="both" length="short" direction="nc" rot="R180"/>
							<pin name="SCL" x="11.43" y="11.43" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="SDA" x="11.43" y="13.97" visible="both" length="short" direction="io" rot="R180"/>
							<pin name="NC@2" x="11.43" y="16.51" visible="both" length="short" direction="nc" rot="R180"/>
							<wire x1="8.89" y1="-19.05" x2="-11.43" y2="-19.05" width="0.3" layer="94"/>
							<wire x1="-11.43" y1="-19.05" x2="-11.43" y2="19.05" width="0.3" layer="94"/>
							<wire x1="-11.43" y1="19.05" x2="8.89" y2="19.05" width="0.3" layer="94"/>
							<wire x1="8.89" y1="19.05" x2="8.89" y2="-19.05" width="0.3" layer="94"/>
							<text x="4.62" y="-21.55" size="2" layer="95">&gt;NAME</text>
						</symbol>
						<symbol name="B32521-C1104-K_15">
							<pin name="1" x="3.81" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
							<pin name="2" x="-3.81" y="0" visible="pad" length="middle" direction="pas" rot="R0"/>
							<rectangle x1="0.318" y1="-1.905" x2="0.952" y2="1.905" layer="94" rot="R180"/>
							<rectangle x1="-0.952" y1="-1.905" x2="-0.318" y2="1.905" layer="94" rot="R180"/>
							<text x="1.238" y="-5.175" size="2" layer="95">&gt;NAME</text>
							<text x="-2.913667" y="3.08" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="8PIN-NW_16">
							<wire x1="2.54" y1="10.16" x2="-2.54" y2="10.16" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="10.16" x2="-2.54" y2="12.7" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="12.7" x2="2.54" y2="12.7" width="0.3" layer="94"/>
							<pin name="1" x="-7.62" y="11.43" visible="pad" length="middle" direction="pas" rot="R0"/>
							<pin name="2" x="7.62" y="11.43" visible="pad" length="middle" direction="nc" rot="R180"/>
							<pin name="3" x="7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="4" x="7.62" y="3.81" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="5" x="7.62" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="6" x="7.62" y="-3.81" visible="pad" length="short" direction="pas" rot="R180"/>
							<text x="2.635" y="3.473333" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="-1.175" y="-1.923333" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<wire x1="2.54" y1="12.7" x2="2.54" y2="10.16" width="0.3" layer="94"/>
							<pin name="7" x="7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="8" x="7.62" y="-11.43" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="5.08" y1="13.97" x2="5.08" y2="-13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-5.08" y1="13.97" x2="-5.08" y2="-13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-5.08" y1="-13.97" x2="5.08" y2="-13.97" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-5.08" y1="13.97" x2="5.08" y2="13.97" width="0.3" layer="94" style="shortdash"/>
						</symbol>
						<symbol name="R_carbon_3,3K_0207_17">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-0.35" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.106667" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_carbon_3,3K_0207_18">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-0.35" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.106667" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_carbon_3,3K_0207_19">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-0.35" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.106667" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_20">
							<wire x1="-1.644943" y1="-0.325774" x2="3.427048" y2="-2.171828" width="0.5" layer="94"/>
							<pin name="3" x="2.54" y="3.81" visible="both" length="short" direction="pas" rot="R270"/>
							<wire x1="0.635" y1="-5.08" x2="0.635" y2="-1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="0.3175" y="-4.1275"/>
								<vertex x="-0.635" y="-2.8575"/>
								<vertex x="1.27" y="-2.8575"/>
							</polygon>
							<wire x1="1.27" y1="-5.08" x2="-0.635" y2="-5.08" width="0.35" layer="94"/>
							<circle x="-2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="-3.81" y="0" visible="pin" length="short" direction="pas" rot="R0"/>
							<text x="-6.975833" y="-6.985" size="2" layer="95">&gt;NAME</text>
							<text x="-16.088333" y="-4.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<pin name="5" x="7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<wire x1="7.62" y1="-1.27" x2="8.89" y2="1.27" width="0.3" layer="94"/>
							<wire x1="6.35" y1="1.27" x2="7.62" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="1.27" x2="6.35" y2="1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="-1.27" x2="6.35" y2="-1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_21">
							<wire x1="-1.644943" y1="-0.325774" x2="3.427048" y2="-2.171828" width="0.5" layer="94"/>
							<pin name="3" x="2.54" y="3.81" visible="both" length="short" direction="pas" rot="R270"/>
							<wire x1="0.635" y1="-5.08" x2="0.635" y2="-1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="0.3175" y="-4.1275"/>
								<vertex x="-0.635" y="-2.8575"/>
								<vertex x="1.27" y="-2.8575"/>
							</polygon>
							<wire x1="1.27" y1="-5.08" x2="-0.635" y2="-5.08" width="0.35" layer="94"/>
							<circle x="-2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="-3.81" y="0" visible="pin" length="short" direction="pas" rot="R0"/>
							<text x="-6.975833" y="-6.985" size="2" layer="95">&gt;NAME</text>
							<text x="-16.088333" y="-4.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<pin name="5" x="7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<wire x1="7.62" y1="-1.27" x2="8.89" y2="1.27" width="0.3" layer="94"/>
							<wire x1="6.35" y1="1.27" x2="7.62" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="1.27" x2="6.35" y2="1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="-1.27" x2="6.35" y2="-1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_22">
							<wire x1="-1.644943" y1="-0.325774" x2="3.427048" y2="-2.171828" width="0.5" layer="94"/>
							<pin name="3" x="2.54" y="3.81" visible="both" length="short" direction="pas" rot="R270"/>
							<wire x1="0.635" y1="-5.08" x2="0.635" y2="-1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="0.3175" y="-4.1275"/>
								<vertex x="-0.635" y="-2.8575"/>
								<vertex x="1.27" y="-2.8575"/>
							</polygon>
							<wire x1="1.27" y1="-5.08" x2="-0.635" y2="-5.08" width="0.35" layer="94"/>
							<circle x="-2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="-3.81" y="0" visible="pin" length="short" direction="pas" rot="R0"/>
							<text x="-6.975833" y="-6.985" size="2" layer="95">&gt;NAME</text>
							<text x="-16.088333" y="-4.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<pin name="5" x="7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<wire x1="7.62" y1="-1.27" x2="8.89" y2="1.27" width="0.3" layer="94"/>
							<wire x1="6.35" y1="1.27" x2="7.62" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="1.27" x2="6.35" y2="1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="-1.27" x2="6.35" y2="-1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_23">
							<wire x1="-1.644943" y1="-0.325774" x2="3.427048" y2="-2.171828" width="0.5" layer="94"/>
							<pin name="3" x="2.54" y="3.81" visible="both" length="short" direction="pas" rot="R270"/>
							<wire x1="0.635" y1="-5.08" x2="0.635" y2="-1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="0.3175" y="-4.1275"/>
								<vertex x="-0.635" y="-2.8575"/>
								<vertex x="1.27" y="-2.8575"/>
							</polygon>
							<wire x1="1.27" y1="-5.08" x2="-0.635" y2="-5.08" width="0.35" layer="94"/>
							<circle x="-2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="-3.81" y="0" visible="pin" length="short" direction="pas" rot="R0"/>
							<text x="-6.975833" y="-6.985" size="2" layer="95">&gt;NAME</text>
							<text x="-16.088333" y="-4.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<pin name="5" x="7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<wire x1="7.62" y1="-1.27" x2="8.89" y2="1.27" width="0.3" layer="94"/>
							<wire x1="6.35" y1="1.27" x2="7.62" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="1.27" x2="6.35" y2="1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="-1.27" x2="6.35" y2="-1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_24">
							<wire x1="-1.644943" y1="-0.325774" x2="3.427048" y2="-2.171828" width="0.5" layer="94"/>
							<pin name="3" x="2.54" y="3.81" visible="both" length="short" direction="pas" rot="R270"/>
							<wire x1="0.635" y1="-5.08" x2="0.635" y2="-1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="0.3175" y="-4.1275"/>
								<vertex x="-0.635" y="-2.8575"/>
								<vertex x="1.27" y="-2.8575"/>
							</polygon>
							<wire x1="1.27" y1="-5.08" x2="-0.635" y2="-5.08" width="0.35" layer="94"/>
							<circle x="-2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="-3.81" y="0" visible="pin" length="short" direction="pas" rot="R0"/>
							<text x="-6.975833" y="-6.985" size="2" layer="95">&gt;NAME</text>
							<text x="-16.088333" y="-4.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<pin name="5" x="7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<wire x1="7.62" y1="-1.27" x2="8.89" y2="1.27" width="0.3" layer="94"/>
							<wire x1="6.35" y1="1.27" x2="7.62" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="1.27" x2="6.35" y2="1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="-1.27" x2="6.35" y2="-1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_25">
							<wire x1="-1.644943" y1="-0.325774" x2="3.427048" y2="-2.171828" width="0.5" layer="94"/>
							<pin name="3" x="2.54" y="3.81" visible="both" length="short" direction="pas" rot="R270"/>
							<wire x1="0.635" y1="-5.08" x2="0.635" y2="-1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="-5.08" x2="0" y2="-0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="0.3175" y="-4.1275"/>
								<vertex x="-0.635" y="-2.8575"/>
								<vertex x="1.27" y="-2.8575"/>
							</polygon>
							<wire x1="1.27" y1="-5.08" x2="-0.635" y2="-5.08" width="0.35" layer="94"/>
							<circle x="-2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="-3.81" y="0" visible="pin" length="short" direction="pas" rot="R0"/>
							<text x="-6.975833" y="-6.985" size="2" layer="95">&gt;NAME</text>
							<text x="-16.088333" y="-4.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<pin name="5" x="7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<wire x1="7.62" y1="-1.27" x2="8.89" y2="1.27" width="0.3" layer="94"/>
							<wire x1="6.35" y1="1.27" x2="7.62" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="1.27" x2="6.35" y2="1.27" width="0.3" layer="94"/>
							<wire x1="8.89" y1="-1.27" x2="6.35" y2="-1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_26">
							<wire x1="1.644943" y1="0.325774" x2="-3.427048" y2="2.171828" width="0.5" layer="94"/>
							<pin name="3" x="-2.54" y="-3.81" visible="both" length="short" direction="pas" rot="R90"/>
							<wire x1="-0.635" y1="5.08" x2="-0.635" y2="1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="5.08" x2="0" y2="0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-0.3175" y="4.1275"/>
								<vertex x="0.635" y="2.8575"/>
								<vertex x="-1.27" y="2.8575"/>
							</polygon>
							<wire x1="-1.27" y1="5.08" x2="0.635" y2="5.08" width="0.35" layer="94"/>
							<circle x="2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="3.81" y="0" visible="pin" length="short" direction="pas" rot="R180"/>
							<text x="1.905" y="4.985" size="2" layer="95">&gt;NAME</text>
							<text x="1.905" y="2.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="-7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<pin name="5" x="-7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<wire x1="-7.62" y1="1.27" x2="-8.89" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-1.27" x2="-7.62" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-1.27" x2="-6.35" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="1.27" x2="-6.35" y2="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_27">
							<wire x1="1.644943" y1="0.325774" x2="-3.427048" y2="2.171828" width="0.5" layer="94"/>
							<pin name="3" x="-2.54" y="-3.81" visible="both" length="short" direction="pas" rot="R90"/>
							<wire x1="-0.635" y1="5.08" x2="-0.635" y2="1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="5.08" x2="0" y2="0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-0.3175" y="4.1275"/>
								<vertex x="0.635" y="2.8575"/>
								<vertex x="-1.27" y="2.8575"/>
							</polygon>
							<wire x1="-1.27" y1="5.08" x2="0.635" y2="5.08" width="0.35" layer="94"/>
							<circle x="2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="3.81" y="0" visible="pin" length="short" direction="pas" rot="R180"/>
							<text x="1.905" y="4.985" size="2" layer="95">&gt;NAME</text>
							<text x="1.905" y="2.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="-7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<pin name="5" x="-7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<wire x1="-7.62" y1="1.27" x2="-8.89" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-1.27" x2="-7.62" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-1.27" x2="-6.35" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="1.27" x2="-6.35" y2="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_28">
							<wire x1="1.644943" y1="0.325774" x2="-3.427048" y2="2.171828" width="0.5" layer="94"/>
							<pin name="3" x="-2.54" y="-3.81" visible="both" length="short" direction="pas" rot="R90"/>
							<wire x1="-0.635" y1="5.08" x2="-0.635" y2="1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="5.08" x2="0" y2="0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-0.3175" y="4.1275"/>
								<vertex x="0.635" y="2.8575"/>
								<vertex x="-1.27" y="2.8575"/>
							</polygon>
							<wire x1="-1.27" y1="5.08" x2="0.635" y2="5.08" width="0.35" layer="94"/>
							<circle x="2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="3.81" y="0" visible="pin" length="short" direction="pas" rot="R180"/>
							<text x="1.905" y="4.985" size="2" layer="95">&gt;NAME</text>
							<text x="1.905" y="2.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="-7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<pin name="5" x="-7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<wire x1="-7.62" y1="1.27" x2="-8.89" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-1.27" x2="-7.62" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-1.27" x2="-6.35" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="1.27" x2="-6.35" y2="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_29">
							<wire x1="1.644943" y1="0.325774" x2="-3.427048" y2="2.171828" width="0.5" layer="94"/>
							<pin name="3" x="-2.54" y="-3.81" visible="both" length="short" direction="pas" rot="R90"/>
							<wire x1="-0.635" y1="5.08" x2="-0.635" y2="1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="5.08" x2="0" y2="0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-0.3175" y="4.1275"/>
								<vertex x="0.635" y="2.8575"/>
								<vertex x="-1.27" y="2.8575"/>
							</polygon>
							<wire x1="-1.27" y1="5.08" x2="0.635" y2="5.08" width="0.35" layer="94"/>
							<circle x="2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="3.81" y="0" visible="pin" length="short" direction="pas" rot="R180"/>
							<text x="1.905" y="4.985" size="2" layer="95">&gt;NAME</text>
							<text x="1.905" y="2.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="-7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<pin name="5" x="-7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<wire x1="-7.62" y1="1.27" x2="-8.89" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-1.27" x2="-7.62" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-1.27" x2="-6.35" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="1.27" x2="-6.35" y2="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_30">
							<wire x1="1.644943" y1="0.325774" x2="-3.427048" y2="2.171828" width="0.5" layer="94"/>
							<pin name="3" x="-2.54" y="-3.81" visible="both" length="short" direction="pas" rot="R90"/>
							<wire x1="-0.635" y1="5.08" x2="-0.635" y2="1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="5.08" x2="0" y2="0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-0.3175" y="4.1275"/>
								<vertex x="0.635" y="2.8575"/>
								<vertex x="-1.27" y="2.8575"/>
							</polygon>
							<wire x1="-1.27" y1="5.08" x2="0.635" y2="5.08" width="0.35" layer="94"/>
							<circle x="2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="3.81" y="0" visible="pin" length="short" direction="pas" rot="R180"/>
							<text x="1.905" y="4.985" size="2" layer="95">&gt;NAME</text>
							<text x="1.905" y="2.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="-7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<pin name="5" x="-7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<wire x1="-7.62" y1="1.27" x2="-8.89" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-1.27" x2="-7.62" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-1.27" x2="-6.35" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="1.27" x2="-6.35" y2="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="TASTER_DIGITAST_STD-LED-SJS_31">
							<wire x1="1.644943" y1="0.325774" x2="-3.427048" y2="2.171828" width="0.5" layer="94"/>
							<pin name="3" x="-2.54" y="-3.81" visible="both" length="short" direction="pas" rot="R90"/>
							<wire x1="-0.635" y1="5.08" x2="-0.635" y2="1.27" width="0.18" layer="94"/>
							<wire x1="0" y1="5.08" x2="0" y2="0.9525" width="0.18" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-0.3175" y="4.1275"/>
								<vertex x="0.635" y="2.8575"/>
								<vertex x="-1.27" y="2.8575"/>
							</polygon>
							<wire x1="-1.27" y1="5.08" x2="0.635" y2="5.08" width="0.35" layer="94"/>
							<circle x="2.54" y="0" radius="0.762" width="0.5" layer="94"/>
							<pin name="2" x="3.81" y="0" visible="pin" length="short" direction="pas" rot="R180"/>
							<text x="1.905" y="4.985" size="2" layer="95">&gt;NAME</text>
							<text x="1.905" y="2.445" size="2" layer="97">?Funktion?</text>
							<pin name="4" x="-7.62" y="3.81" visible="pin" length="short" direction="pas" rot="R270"/>
							<pin name="5" x="-7.62" y="-3.81" visible="pin" length="short" direction="pas" rot="R90"/>
							<wire x1="-7.62" y1="1.27" x2="-8.89" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-1.27" x2="-7.62" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="-1.27" x2="-6.35" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-8.89" y1="1.27" x2="-6.35" y2="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="PinHeader_1x06_W_2,54_32">
							<pin name="1" x="3.81" y="-6.35" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="3.81" y="-3.81" visible="pad" length="short" direction="nc" rot="R180"/>
							<pin name="3" x="3.81" y="-1.27" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="4" x="3.81" y="1.27" visible="pad" length="short" direction="pas" rot="R180"/>
							<text x="-1.116667" y="-10.255" size="2" layer="95">&gt;NAME</text>
							<wire x1="1.27" y1="-7.62" x2="1.27" y2="7.62" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="7.62" x2="1.27" y2="7.62" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="-7.62" x2="-1.27" y2="7.62" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="-7.62" x2="1.27" y2="-7.62" width="0.3" layer="94"/>
							<pin name="5" x="3.81" y="3.81" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="6" x="3.81" y="6.35" visible="pad" length="short" direction="nc" rot="R180"/>
						</symbol>
						<symbol name="PHAP3362A_33">
							<wire x1="-1.27" y1="5.08" x2="-1.27" y2="0.635" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-1.905" y1="5.08" x2="-0.635" y2="5.08" width="0.3" layer="94"/>
							<wire x1="1.27" y1="0.635" x2="1.27" y2="0" width="0.3" layer="94"/>
							<wire x1="1.27" y1="0" x2="3.175" y2="0" width="0.3" layer="94"/>
							<wire x1="-3.175" y1="0" x2="1.905" y2="1.905" width="0.3" layer="94"/>
							<text x="-5.08" y="5.715" size="2" layer="95">&gt;NAME</text>
							<pin name="1" x="-5.715" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.715" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
						</symbol>
						<symbol name="PHAP3362A_34">
							<wire x1="-1.27" y1="5.08" x2="-1.27" y2="0.635" width="0.3" layer="94" style="shortdash"/>
							<wire x1="-1.905" y1="5.08" x2="-0.635" y2="5.08" width="0.3" layer="94"/>
							<wire x1="1.27" y1="0.635" x2="1.27" y2="0" width="0.3" layer="94"/>
							<wire x1="1.27" y1="0" x2="3.175" y2="0" width="0.3" layer="94"/>
							<wire x1="-3.175" y1="0" x2="1.905" y2="1.905" width="0.3" layer="94"/>
							<text x="-5.08" y="5.715" size="2" layer="97">S2</text>
							<pin name="1" x="-5.715" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.715" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
						</symbol>
						<symbol name="PD84_10K_35">
							<wire x1="-0.02" y1="-4.445" x2="-2.54" y2="-4.445" width="0.3" layer="94"/>
							<wire x1="-2.543" y1="-1.27" x2="-2.543" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.543" y1="1.27" x2="2.537" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.537" y1="1.27" x2="2.537" y2="-1.27" width="0.3" layer="94"/>
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.537" y1="-1.27" x2="-2.543" y2="-1.27" width="0.3" layer="94"/>
							<text x="2.822" y="-7.715" size="2" layer="95">&gt;NAME</text>
							<text x="1.692" y="2.445" size="2" layer="96">&gt;VALUE</text>
							<polygon width="0" layer="94">
								<vertex x="0" y="-1.25"/>
								<vertex x="0.624" y="-3.75"/>
								<vertex x="-0.626" y="-3.75"/>
							</polygon>
							<wire x1="-0.02" y1="-3.55" x2="-0.02" y2="-4.445" width="0.3" layer="94"/>
							<pin name="2" x="-5.08" y="-4.445" visible="pad" length="short" direction="pas" rot="R0"/>
						</symbol>
						<symbol name="Einlöt-DC-Buchse_2.5_36">
							<wire x1="0" y1="1.905" x2="6.35" y2="1.905" width="0.3" layer="94"/>
							<wire x1="7.62" y1="3.175" x2="6.35" y2="1.905" width="0.3" layer="94"/>
							<wire x1="7.62" y1="3.175" x2="8.89" y2="1.905" width="0.3" layer="94"/>
							<wire x1="0" y1="4.445" x2="4.445" y2="4.445" width="0.3" layer="94"/>
							<wire x1="4.445" y1="4.445" x2="4.445" y2="1.905" width="0.3" layer="94"/>
							<wire x1="0" y1="6.985" x2="2.54" y2="6.985" width="0.3" layer="94"/>
							<wire x1="2.54" y1="5.715" x2="2.54" y2="8.255" width="0.3" layer="94"/>
							<wire x1="2.54" y1="6.35" x2="8.255" y2="6.35" width="0.3" layer="94"/>
							<wire x1="2.54" y1="7.62" x2="8.255" y2="7.62" width="0.3" layer="94"/>
							<wire x1="8.255" y1="6.35" x2="8.255" y2="7.62" width="0.3" layer="94" curve="180" cap="round"/>
							<wire x1="10.795" y1="8.89" x2="10.795" y2="0" width="0.3" layer="94"/>
							<wire x1="10.795" y1="0" x2="0" y2="0" width="0.3" layer="94"/>
							<wire x1="0" y1="0" x2="0" y2="8.89" width="0.3" layer="94"/>
							<wire x1="0" y1="8.89" x2="10.795" y2="8.89" width="0.3" layer="94"/>
							<pin name="T" x="-2.54" y="1.905" visible="pad" length="short" direction="pwr" rot="R0"/>
							<pin name="TS" x="-2.54" y="4.445" visible="pad" length="short" direction="nc" rot="R0"/>
							<pin name="S" x="-2.54" y="6.985" visible="pad" length="short" direction="pwr" rot="R0"/>
							<text x="0.17" y="10.065" size="2" layer="95">&gt;NAME</text>
							<text x="0.39" y="-3.27" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="LM1085IT-3.3_37">
							<pin name="GND" x="0" y="-7.62" visible="both" length="short" direction="sup" rot="R90"/>
							<pin name="OUT" x="8.89" y="0" visible="both" length="short" direction="sup" rot="R180"/>
							<pin name="IN" x="-8.89" y="0" visible="both" length="short" direction="sup" rot="R0"/>
							<wire x1="6.35" y1="5.08" x2="-6.35" y2="5.08" width="0.3" layer="94"/>
							<wire x1="6.35" y1="-5.08" x2="6.35" y2="5.08" width="0.3" layer="94"/>
							<wire x1="6.35" y1="-5.08" x2="-6.35" y2="-5.08" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="-5.08" x2="-6.35" y2="5.08" width="0.3" layer="94"/>
							<text x="-6.35" y="5.58" size="2" layer="95">&gt;NAME</text>
							<text x="-6.35" y="-10.755" size="2" layer="96">&gt;VALUE</text>
						</symbol>
					</symbols>
					<devicesets>
						<deviceset name="STEC12E08_0" prefix="RE">
							<description/>
							<gates>
								<gate name="G$1" symbol="STEC12E08_0" x="-121.92" y="-83.82"/>
							</gates>
							<devices>
								<device name="" package="STEC12E08_0">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="C" pad="2"/>
										<connect gate="G$1" pin="B" pad="3"/>
										<connect gate="G$1" pin="D" pad="4"/>
										<connect gate="G$1" pin="E" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="STEC12E08_1" prefix="RE">
							<description/>
							<gates>
								<gate name="G$1" symbol="STEC12E08_1" x="-143.51" y="-83.82"/>
							</gates>
							<devices>
								<device name="" package="STEC12E08_1">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="C" pad="2"/>
										<connect gate="G$1" pin="B" pad="3"/>
										<connect gate="G$1" pin="D" pad="4"/>
										<connect gate="G$1" pin="E" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="STEC12E08_2" prefix="RE">
							<description/>
							<gates>
								<gate name="G$1" symbol="STEC12E08_2" x="-167.64" y="-83.82"/>
							</gates>
							<devices>
								<device name="" package="STEC12E08_2">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="C" pad="2"/>
										<connect gate="G$1" pin="B" pad="3"/>
										<connect gate="G$1" pin="D" pad="4"/>
										<connect gate="G$1" pin="E" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="STEC12E08_3" prefix="RE">
							<description/>
							<gates>
								<gate name="G$1" symbol="STEC12E08_3" x="-192.405" y="-83.82"/>
							</gates>
							<devices>
								<device name="" package="STEC12E08_3">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="C" pad="2"/>
										<connect gate="G$1" pin="B" pad="3"/>
										<connect gate="G$1" pin="D" pad="4"/>
										<connect gate="G$1" pin="E" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="PORTEXPANDER_MCP23017_4" prefix="PE">
							<description/>
							<gates>
								<gate name="G$1" symbol="PORTEXPANDER_MCP23017_4" x="-160.02" y="-38.1"/>
							</gates>
							<devices>
								<device name="" package="PortExpander_Gehäuse:PDIP-28_4">
									<connects>
										<connect gate="G$1" pin="PE2A7" pad="28"/>
										<connect gate="G$1" pin="PE2A6" pad="27"/>
										<connect gate="G$1" pin="PE2A5" pad="26"/>
										<connect gate="G$1" pin="PE2A4" pad="25"/>
										<connect gate="G$1" pin="PE2A3" pad="24"/>
										<connect gate="G$1" pin="PE2A2" pad="23"/>
										<connect gate="G$1" pin="PE2A1" pad="22"/>
										<connect gate="G$1" pin="PE2A0" pad="21"/>
										<connect gate="G$1" pin="INTPE2A" pad="20"/>
										<connect gate="G$1" pin="INTPE2B" pad="19"/>
										<connect gate="G$1" pin="RESET" pad="18"/>
										<connect gate="G$1" pin="APE2.2" pad="17"/>
										<connect gate="G$1" pin="APE2.1" pad="16"/>
										<connect gate="G$1" pin="APE2.0" pad="15"/>
										<connect gate="G$1" pin="PE2B0" pad="1"/>
										<connect gate="G$1" pin="PE2B1" pad="2"/>
										<connect gate="G$1" pin="PE2B2" pad="3"/>
										<connect gate="G$1" pin="PE2B3" pad="4"/>
										<connect gate="G$1" pin="PE2B4" pad="5"/>
										<connect gate="G$1" pin="PE2B5" pad="6"/>
										<connect gate="G$1" pin="PE2B6" pad="7"/>
										<connect gate="G$1" pin="PE2B7" pad="8"/>
										<connect gate="G$1" pin="VDD" pad="9"/>
										<connect gate="G$1" pin="VSS" pad="10"/>
										<connect gate="G$1" pin="NC@1" pad="11"/>
										<connect gate="G$1" pin="SCL" pad="12"/>
										<connect gate="G$1" pin="SDA" pad="13"/>
										<connect gate="G$1" pin="NC@2" pad="14"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="PORTEXPANDER_MCP23017_5" prefix="PE">
							<description/>
							<gates>
								<gate name="G$1" symbol="PORTEXPANDER_MCP23017_5" x="-160.02" y="12.7"/>
							</gates>
							<devices>
								<device name="" package="PortExpander_Gehäuse:PDIP-28_5">
									<connects>
										<connect gate="G$1" pin="PE2A7" pad="28"/>
										<connect gate="G$1" pin="PE2A6" pad="27"/>
										<connect gate="G$1" pin="PE2A5" pad="26"/>
										<connect gate="G$1" pin="PE2A4" pad="25"/>
										<connect gate="G$1" pin="PE2A3" pad="24"/>
										<connect gate="G$1" pin="PE2A2" pad="23"/>
										<connect gate="G$1" pin="PE2A1" pad="22"/>
										<connect gate="G$1" pin="PE2A0" pad="21"/>
										<connect gate="G$1" pin="INTPE2A" pad="20"/>
										<connect gate="G$1" pin="INTPE2B" pad="19"/>
										<connect gate="G$1" pin="RESET" pad="18"/>
										<connect gate="G$1" pin="APE2.2" pad="17"/>
										<connect gate="G$1" pin="APE2.1" pad="16"/>
										<connect gate="G$1" pin="APE2.0" pad="15"/>
										<connect gate="G$1" pin="PE2B0" pad="1"/>
										<connect gate="G$1" pin="PE2B1" pad="2"/>
										<connect gate="G$1" pin="PE2B2" pad="3"/>
										<connect gate="G$1" pin="PE2B3" pad="4"/>
										<connect gate="G$1" pin="PE2B4" pad="5"/>
										<connect gate="G$1" pin="PE2B5" pad="6"/>
										<connect gate="G$1" pin="PE2B6" pad="7"/>
										<connect gate="G$1" pin="PE2B7" pad="8"/>
										<connect gate="G$1" pin="VDD" pad="9"/>
										<connect gate="G$1" pin="VSS" pad="10"/>
										<connect gate="G$1" pin="NC@1" pad="11"/>
										<connect gate="G$1" pin="SCL" pad="12"/>
										<connect gate="G$1" pin="SDA" pad="13"/>
										<connect gate="G$1" pin="NC@2" pad="14"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="ESP8266_ESP01_6" prefix="IC">
							<description/>
							<gates>
								<gate name="G$1" symbol="ESP8266_ESP01_6" x="-182.245" y="82.55"/>
							</gates>
							<devices>
								<device name="" package="ESP01_6">
									<connects>
										<connect gate="G$1" pin="Vcc_3.3" pad="1"/>
										<connect gate="G$1" pin="Rst" pad="2"/>
										<connect gate="G$1" pin="Ch-Pd" pad="3"/>
										<connect gate="G$1" pin="TxD" pad="4"/>
										<connect gate="G$1" pin="RxD" pad="5"/>
										<connect gate="G$1" pin="GPIO0/Prog" pad="6"/>
										<connect gate="G$1" pin="GPIO2" pad="7"/>
										<connect gate="G$1" pin="GND" pad="8"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_carbon_330-Ohm_0207_7" prefix="R">
							<description>Carbon film resistor 330-Ohm, 0,25W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_carbon_330-Ohm_0207_7" x="-206.375" y="81.915"/>
							</gates>
							<devices>
								<device name="" package="0207_7">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_carbon_3,3K_0207_8" prefix="R">
							<description>Carbon film resistor 3,3K-Ohm, 0,25W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_carbon_3,3K_0207_8" x="-193.04" y="44.45"/>
							</gates>
							<devices>
								<device name="" package="0207_8">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="8PIN-NW_9" prefix="R">
							<description>Network, 7 resistors - a Common</description>
							<gates>
								<gate name="G$1" symbol="8PIN-NW_9" x="-277.495" y="-12.065"/>
							</gates>
							<devices>
								<device name="" package="SIL8_9">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
										<connect gate="G$1" pin="6" pad="6"/>
										<connect gate="G$1" pin="7" pad="7"/>
										<connect gate="G$1" pin="8" pad="8"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="8PIN-NW_10" prefix="R">
							<description>Network, 7 resistors - a Common</description>
							<gates>
								<gate name="G$1" symbol="8PIN-NW_10" x="-15.875" y="-6.35"/>
							</gates>
							<devices>
								<device name="" package="SIL8_10">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
										<connect gate="G$1" pin="6" pad="6"/>
										<connect gate="G$1" pin="7" pad="7"/>
										<connect gate="G$1" pin="8" pad="8"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="B32521-C1104-K_11" prefix="C">
							<description/>
							<gates>
								<gate name="G$1" symbol="B32521-C1104-K_11" x="-182.88" y="5.08"/>
							</gates>
							<devices>
								<device name="" package="4X13R10,16_11">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="B32521-C1104-K_12" prefix="C">
							<description/>
							<gates>
								<gate name="G$1" symbol="B32521-C1104-K_12" x="-182.88" y="-45.72"/>
							</gates>
							<devices>
								<device name="" package="4X13R10,16_12">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="LCD_2004_13" prefix="Display">
							<description/>
							<gates>
								<gate name="G$1" symbol="LCD_2004_13" x="-60.96" y="103.505"/>
							</gates>
							<devices>
								<device name="" package="LCD2004_13">
									<connects>
										<connect gate="G$1" pin="GND" pad="1"/>
										<connect gate="G$1" pin="Vdd" pad="2"/>
										<connect gate="G$1" pin="Vo" pad="3"/>
										<connect gate="G$1" pin="RS" pad="4"/>
										<connect gate="G$1" pin="R/W" pad="5"/>
										<connect gate="G$1" pin="E" pad="6"/>
										<connect gate="G$1" pin="D0" pad="7"/>
										<connect gate="G$1" pin="D1" pad="8"/>
										<connect gate="G$1" pin="D2" pad="9"/>
										<connect gate="G$1" pin="D3" pad="10"/>
										<connect gate="G$1" pin="D4" pad="11"/>
										<connect gate="G$1" pin="D5" pad="12"/>
										<connect gate="G$1" pin="D6" pad="13"/>
										<connect gate="G$1" pin="D7" pad="14"/>
										<connect gate="G$1" pin="LED+" pad="15"/>
										<connect gate="G$1" pin="LED-" pad="16"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="PORTEXPANDER_MCP23017_14" prefix="PE">
							<description/>
							<gates>
								<gate name="G$1" symbol="PORTEXPANDER_MCP23017_14" x="-114.935" y="83.82"/>
							</gates>
							<devices>
								<device name="" package="PortExpander_Gehäuse:PDIP-28_14">
									<connects>
										<connect gate="G$1" pin="PE2A7" pad="28"/>
										<connect gate="G$1" pin="PE2A6" pad="27"/>
										<connect gate="G$1" pin="PE2A5" pad="26"/>
										<connect gate="G$1" pin="PE2A4" pad="25"/>
										<connect gate="G$1" pin="PE2A3" pad="24"/>
										<connect gate="G$1" pin="PE2A2" pad="23"/>
										<connect gate="G$1" pin="PE2A1" pad="22"/>
										<connect gate="G$1" pin="PE2A0" pad="21"/>
										<connect gate="G$1" pin="INTPE2A" pad="20"/>
										<connect gate="G$1" pin="INTPE2B" pad="19"/>
										<connect gate="G$1" pin="RESET" pad="18"/>
										<connect gate="G$1" pin="APE2.2" pad="17"/>
										<connect gate="G$1" pin="APE2.1" pad="16"/>
										<connect gate="G$1" pin="APE2.0" pad="15"/>
										<connect gate="G$1" pin="PE2B0" pad="1"/>
										<connect gate="G$1" pin="PE2B1" pad="2"/>
										<connect gate="G$1" pin="PE2B2" pad="3"/>
										<connect gate="G$1" pin="PE2B3" pad="4"/>
										<connect gate="G$1" pin="PE2B4" pad="5"/>
										<connect gate="G$1" pin="PE2B5" pad="6"/>
										<connect gate="G$1" pin="PE2B6" pad="7"/>
										<connect gate="G$1" pin="PE2B7" pad="8"/>
										<connect gate="G$1" pin="VDD" pad="9"/>
										<connect gate="G$1" pin="VSS" pad="10"/>
										<connect gate="G$1" pin="NC@1" pad="11"/>
										<connect gate="G$1" pin="SCL" pad="12"/>
										<connect gate="G$1" pin="SDA" pad="13"/>
										<connect gate="G$1" pin="NC@2" pad="14"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="B32521-C1104-K_15" prefix="C">
							<description/>
							<gates>
								<gate name="G$1" symbol="B32521-C1104-K_15" x="-95.885" y="96.52"/>
							</gates>
							<devices>
								<device name="" package="4X13R10,16_15">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="8PIN-NW_16" prefix="R">
							<description>Network, 7 resistors - a Common</description>
							<gates>
								<gate name="G$1" symbol="8PIN-NW_16" x="-218.44" y="67.945"/>
							</gates>
							<devices>
								<device name="" package="SIL8_16">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
										<connect gate="G$1" pin="6" pad="6"/>
										<connect gate="G$1" pin="7" pad="7"/>
										<connect gate="G$1" pin="8" pad="8"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_carbon_3,3K_0207_17" prefix="R">
							<description>Carbon film resistor 3,3K-Ohm, 0,25W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_carbon_3,3K_0207_17" x="-140.97" y="92.71"/>
							</gates>
							<devices>
								<device name="" package="0207_17">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_carbon_3,3K_0207_18" prefix="R">
							<description>Carbon film resistor 3,3K-Ohm, 0,25W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_carbon_3,3K_0207_18" x="-140.97" y="97.79"/>
							</gates>
							<devices>
								<device name="" package="0207_18">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_carbon_3,3K_0207_19" prefix="R">
							<description>Carbon film resistor 3,3K-Ohm, 0,25W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_carbon_3,3K_0207_19" x="-149.86" y="-11.43"/>
							</gates>
							<devices>
								<device name="" package="0207_19">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_20" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_20" x="-236.855" y="29.21"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_20">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_21" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_21" x="-236.855" y="13.97"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_21">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_22" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_22" x="-236.855" y="-0.635"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_22">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_23" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_23" x="-236.855" y="-15.875"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_23">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_24" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_24" x="-236.855" y="-30.48"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_24">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_25" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_25" x="-236.855" y="-45.72"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_25">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_26" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_26" x="-62.865" y="29.21"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_26">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_27" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_27" x="-62.865" y="13.97"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_27">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_28" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_28" x="-62.865" y="-0.635"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_28">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_29" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_29" x="-62.865" y="-15.875"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_29">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_30" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_30" x="-62.865" y="-30.48"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_30">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TASTER_DIGITAST_STD-LED-SJS_31" prefix="SD">
							<description>Switch w/LED</description>
							<gates>
								<gate name="G$1" symbol="TASTER_DIGITAST_STD-LED-SJS_31" x="-62.865" y="-45.72"/>
							</gates>
							<devices>
								<device name="" package="TASTER_DIGITAST_STD(#1)(#1)_31">
									<connects>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="PinHeader_1x06_W_2,54_32" prefix="J">
							<description>Pin Header</description>
							<gates>
								<gate name="G$1" symbol="PinHeader_1x06_W_2,54_32" x="-243.205" y="80.645"/>
							</gates>
							<devices>
								<device name="" package="1X06-90_32">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
										<connect gate="G$1" pin="6" pad="6"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="PHAP3362A_33" prefix="S">
							<description>Tactile keyboard switch APEM Nr. PHAP3362A ; push-button switch tuck in mounting ; dimension. (length) 5,0 m</description>
							<gates>
								<gate name="G$1" symbol="PHAP3362A_33" x="-204.47" y="99.695"/>
							</gates>
							<devices>
								<device name="" package="KURZHUBTASTER_DURCHSTECKMONT._33">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="PHAP3362A_34" prefix="S">
							<description>Tactile keyboard switch APEM Nr. PHAP3362A ; push-button switch tuck in mounting ; dimension. (length) 5,0 m</description>
							<gates>
								<gate name="G$1" symbol="PHAP3362A_34" x="-188.595" y="99.695"/>
							</gates>
							<devices>
								<device name="" package="KURZHUBTASTER_DURCHSTECKMONT._34">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="PD84_10K_35" prefix="R">
							<description>+-Wire potentiometer, rotation angle 295°</description>
							<gates>
								<gate name="G$1" symbol="PD84_10K_35" x="-76.2" y="101.6"/>
							</gates>
							<devices>
								<device name="" package="POTI_PD84_35">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="Einlöt-DC-Buchse_2.5_36" prefix="J">
							<description/>
							<gates>
								<gate name="G$1" symbol="Einlöt-DC-Buchse_2.5_36" x="-25.4" y="113.03"/>
							</gates>
							<devices>
								<device name="" package="EINLÖT-DC-BUCHSE_2.5MM_36">
									<connects>
										<connect gate="G$1" pin="T" pad="3"/>
										<connect gate="G$1" pin="TS" pad="2"/>
										<connect gate="G$1" pin="S" pad="1"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="LM1085IT-3.3_37" prefix="X">
							<description>3,3V 3A Low Dropout Positive Regulator. 3-Lead TO220 Package.</description>
							<gates>
								<gate name="G$1" symbol="LM1085IT-3.3_37" x="-97.79" y="126.365"/>
							</gates>
							<devices>
								<device name="" package="TO220_37">
									<connects>
										<connect gate="G$1" pin="GND" pad="1"/>
										<connect gate="G$1" pin="OUT" pad="2"/>
										<connect gate="G$1" pin="IN" pad="3"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
					</devicesets>
				</library>
			</libraries>
			<attributes/>
			<variantdefs/>
			<classes>
				<class number="0" name="default" width="0" drill="0"/>
			</classes>
			<parts>
				<part name="RE4" library="TARGET3001!_V18.4.0.86" deviceset="STEC12E08_0" device="" value="V/S"/>
				<part name="RE3" library="TARGET3001!_V18.4.0.86" deviceset="STEC12E08_1" device="" value="ALT"/>
				<part name="RE2" library="TARGET3001!_V18.4.0.86" deviceset="STEC12E08_2" device="" value="HDG"/>
				<part name="RE1" library="TARGET3001!_V18.4.0.86" deviceset="STEC12E08_3" device="" value="IAS"/>
				<part name="PE1" library="TARGET3001!_V18.4.0.86" deviceset="PORTEXPANDER_MCP23017_4" device="" value="PORTEXPANDER MCP23017"/>
				<part name="PE2" library="TARGET3001!_V18.4.0.86" deviceset="PORTEXPANDER_MCP23017_5" device="" value="PORTEXPANDER MCP23017"/>
				<part name="IC2" library="TARGET3001!_V18.4.0.86" deviceset="ESP8266_ESP01_6" device="" value="ESP8266_ESP01"/>
				<part name="R1" library="TARGET3001!_V18.4.0.86" deviceset="R_carbon_330-Ohm_0207_7" device="" value="330"/>
				<part name="R2" library="TARGET3001!_V18.4.0.86" deviceset="R_carbon_3,3K_0207_8" device="" value="330"/>
				<part name="R11" library="TARGET3001!_V18.4.0.86" deviceset="8PIN-NW_9" device="" value="8PIN-NW"/>
				<part name="R12" library="TARGET3001!_V18.4.0.86" deviceset="8PIN-NW_10" device="" value="8PIN-NW"/>
				<part name="C1" library="TARGET3001!_V18.4.0.86" deviceset="B32521-C1104-K_11" device="" value="100nF"/>
				<part name="C2" library="TARGET3001!_V18.4.0.86" deviceset="B32521-C1104-K_12" device="" value="100nF"/>
				<part name="Display1" library="TARGET3001!_V18.4.0.86" deviceset="LCD_2004_13" device="" value="LCD_2004"/>
				<part name="PE3" library="TARGET3001!_V18.4.0.86" deviceset="PORTEXPANDER_MCP23017_14" device="" value="PORTEXPANDER MCP23017"/>
				<part name="C3" library="TARGET3001!_V18.4.0.86" deviceset="B32521-C1104-K_15" device="" value="100nF"/>
				<part name="R10" library="TARGET3001!_V18.4.0.86" deviceset="8PIN-NW_16" device="" value="8PIN-NW"/>
				<part name="R3" library="TARGET3001!_V18.4.0.86" deviceset="R_carbon_3,3K_0207_17" device="" value="3,3K"/>
				<part name="R4" library="TARGET3001!_V18.4.0.86" deviceset="R_carbon_3,3K_0207_18" device="" value="3,3K"/>
				<part name="R5" library="TARGET3001!_V18.4.0.86" deviceset="R_carbon_3,3K_0207_19" device="" value="3,3K"/>
				<part name="SD1" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_20" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD2" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_21" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD3" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_22" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD4" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_23" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD5" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_24" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD6" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_25" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD7" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_26" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD8" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_27" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD9" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_28" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD10" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_29" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD11" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_30" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="SD12" library="TARGET3001!_V18.4.0.86" deviceset="TASTER_DIGITAST_STD-LED-SJS_31" device="" value="TASTER_DIGITAST_STD-LED-SJS"/>
				<part name="J3" library="TARGET3001!_V18.4.0.86" deviceset="PinHeader_1x06_W_2,54_32" device="" value="PinHeader_1x06_W_2,54"/>
				<part name="S1" library="TARGET3001!_V18.4.0.86" deviceset="PHAP3362A_33" device="" value="PHAP3362A"/>
				<part name="S2" library="TARGET3001!_V18.4.0.86" deviceset="PHAP3362A_34" device="" value="PHAP3362A"/>
				<part name="R6" library="TARGET3001!_V18.4.0.86" deviceset="PD84_10K_35" device="" value="10K"/>
				<part name="J1" library="TARGET3001!_V18.4.0.86" deviceset="Einlöt-DC-Buchse_2.5_36" device="" value="Einlöt-DC-Buchse_2.5"/>
				<part name="X1" library="TARGET3001!_V18.4.0.86" deviceset="LM1085IT-3.3_37" device="" value="LM1085IT-3.3"/>
			</parts>
			<sheets>
				<sheet>
					<description>&lt;unnamed&gt;</description>
					<plain/>
					<instances>
						<instance part="RE4" gate="G$1" x="-121.92" y="-83.82"/>
						<instance part="RE3" gate="G$1" x="-143.51" y="-83.82"/>
						<instance part="RE2" gate="G$1" x="-167.64" y="-83.82"/>
						<instance part="RE1" gate="G$1" x="-192.405" y="-83.82"/>
						<instance part="PE1" gate="G$1" x="-160.02" y="-38.1"/>
						<instance part="PE2" gate="G$1" x="-160.02" y="12.7"/>
						<instance part="IC2" gate="G$1" x="-182.245" y="82.55"/>
						<instance part="R1" gate="G$1" x="-206.375" y="81.915"/>
						<instance part="R2" gate="G$1" x="-193.04" y="44.45"/>
						<instance part="R11" gate="G$1" x="-277.495" y="-12.065"/>
						<instance part="R12" gate="G$1" x="-15.875" y="-6.35"/>
						<instance part="C1" gate="G$1" x="-182.88" y="5.08"/>
						<instance part="C2" gate="G$1" x="-182.88" y="-45.72"/>
						<instance part="Display1" gate="G$1" x="-60.96" y="103.505"/>
						<instance part="PE3" gate="G$1" x="-114.935" y="83.82"/>
						<instance part="C3" gate="G$1" x="-95.885" y="96.52"/>
						<instance part="R10" gate="G$1" x="-218.44" y="67.945"/>
						<instance part="R3" gate="G$1" x="-140.97" y="92.71"/>
						<instance part="R4" gate="G$1" x="-140.97" y="97.79"/>
						<instance part="R5" gate="G$1" x="-149.86" y="-11.43"/>
						<instance part="SD1" gate="G$1" x="-236.855" y="29.21"/>
						<instance part="SD2" gate="G$1" x="-236.855" y="13.97"/>
						<instance part="SD3" gate="G$1" x="-236.855" y="-0.635"/>
						<instance part="SD4" gate="G$1" x="-236.855" y="-15.875"/>
						<instance part="SD5" gate="G$1" x="-236.855" y="-30.48"/>
						<instance part="SD6" gate="G$1" x="-236.855" y="-45.72"/>
						<instance part="SD7" gate="G$1" x="-62.865" y="29.21"/>
						<instance part="SD8" gate="G$1" x="-62.865" y="13.97"/>
						<instance part="SD9" gate="G$1" x="-62.865" y="-0.635"/>
						<instance part="SD10" gate="G$1" x="-62.865" y="-15.875"/>
						<instance part="SD11" gate="G$1" x="-62.865" y="-30.48"/>
						<instance part="SD12" gate="G$1" x="-62.865" y="-45.72"/>
						<instance part="J3" gate="G$1" x="-243.205" y="80.645"/>
						<instance part="S1" gate="G$1" x="-204.47" y="99.695"/>
						<instance part="S2" gate="G$1" x="-188.595" y="99.695"/>
						<instance part="R6" gate="G$1" x="-76.2" y="101.6"/>
						<instance part="J1" gate="G$1" x="-25.4" y="113.03"/>
						<instance part="X1" gate="G$1" x="-97.79" y="126.365"/>
					</instances>
					<busses/>
					<nets>
						<net name="B" class="0">
							<segment>
								<wire x1="-118.11" y1="-92.71" x2="-118.11" y2="-95.25" width="0.3" layer="91"/>
								<pinref part="RE4" gate="G$1" pin="B"/>
								<wire x1="-118.11" y1="-95.25" x2="-111.125" y2="-95.25" width="0.3" layer="91"/>
								<wire x1="-111.125" y1="-95.25" x2="-111.125" y2="-62.865" width="0.3" layer="91"/>
								<wire x1="-140.97" y1="-62.865" x2="-111.125" y2="-62.865" width="0.3" layer="91"/>
								<wire x1="-140.97" y1="-62.865" x2="-140.97" y2="-34.29" width="0.3" layer="91"/>
								<wire x1="-140.97" y1="-34.29" x2="-146.05" y2="-34.29" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A2"/>
							</segment>
						</net>
						<net name="Sig$24" class="0">
							<segment>
								<wire x1="-139.7" y1="-92.71" x2="-139.7" y2="-93.98" width="0.3" layer="91"/>
								<pinref part="RE3" gate="G$1" pin="B"/>
								<wire x1="-139.7" y1="-93.98" x2="-133.985" y2="-93.98" width="0.3" layer="91"/>
								<wire x1="-133.985" y1="-93.98" x2="-133.985" y2="-46.355" width="0.3" layer="91"/>
								<wire x1="-135.89" y1="-46.355" x2="-133.985" y2="-46.355" width="0.3" layer="91"/>
								<wire x1="-135.89" y1="-46.355" x2="-135.89" y2="-39.37" width="0.3" layer="91"/>
								<wire x1="-135.89" y1="-39.37" x2="-146.05" y2="-39.37" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A0"/>
							</segment>
						</net>
						<net name="Sig$27" class="0">
							<segment>
								<wire x1="-171.45" y1="-92.71" x2="-171.45" y2="-93.98" width="0.3" layer="91"/>
								<pinref part="RE2" gate="G$1" pin="A"/>
								<wire x1="-171.45" y1="-93.98" x2="-174.625" y2="-93.98" width="0.3" layer="91"/>
								<wire x1="-174.625" y1="-93.98" x2="-174.625" y2="-39.37" width="0.3" layer="91"/>
								<wire x1="-174.625" y1="-39.37" x2="-171.45" y2="-39.37" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B7"/>
							</segment>
						</net>
						<net name="Sig$29" class="0">
							<segment>
								<wire x1="-196.215" y1="-92.71" x2="-196.215" y2="-95.25" width="0.3" layer="91"/>
								<pinref part="RE1" gate="G$1" pin="A"/>
								<wire x1="-196.215" y1="-95.25" x2="-202.565" y2="-95.25" width="0.3" layer="91"/>
								<wire x1="-202.565" y1="-95.25" x2="-202.565" y2="-64.77" width="0.3" layer="91"/>
								<wire x1="-186.69" y1="-64.77" x2="-202.565" y2="-64.77" width="0.3" layer="91"/>
								<wire x1="-186.69" y1="-64.77" x2="-186.69" y2="-36.83" width="0.3" layer="91"/>
								<wire x1="-186.69" y1="-36.83" x2="-183.515" y2="-36.83" width="0.3" layer="91"/>
								<wire x1="-183.515" y1="-36.83" x2="-183.515" y2="-34.29" width="0.3" layer="91"/>
								<wire x1="-183.515" y1="-34.29" x2="-171.45" y2="-34.29" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B5"/>
							</segment>
						</net>
						<net name="GND" class="0">
							<segment>
								<junction x="-130.81" y="-96.52"/>
								<wire x1="-143.51" y1="-96.52" x2="-130.81" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-130.81" y1="-96.52" x2="-121.92" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-130.81" y1="-96.52" x2="-130.81" y2="-68.58" width="0.3" layer="91"/>
								<junction x="-143.51" y="-96.52"/>
								<wire x1="-143.51" y1="-92.71" x2="-143.51" y2="-96.52" width="0.3" layer="91"/>
								<pinref part="RE3" gate="G$1" pin="C"/>
								<wire x1="-143.51" y1="-96.52" x2="-143.51" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-143.51" y1="-96.52" x2="-156.845" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-121.92" y1="-92.71" x2="-121.92" y2="-96.52" width="0.3" layer="91"/>
								<pinref part="RE4" gate="G$1" pin="C"/>
								<wire x1="-130.81" y1="-68.58" x2="-120.015" y2="-68.58" width="0.3" layer="91"/>
								<wire x1="-130.81" y1="-68.58" x2="-141.605" y2="-68.58" width="0.3" layer="91"/>
								<junction x="-130.81" y="-68.58"/>
								<wire x1="-167.64" y1="-96.52" x2="-156.845" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-156.845" y1="-96.52" x2="-156.845" y2="-96.52" width="0.3" layer="91"/>
								<junction x="-156.845" y="-96.52"/>
								<wire x1="-156.845" y1="-96.52" x2="-156.845" y2="-58.42" width="0.3" layer="91"/>
								<wire x1="-120.015" y1="-68.58" x2="-120.015" y2="-74.93" width="0.3" layer="91"/>
								<pinref part="RE4" gate="G$1" pin="D"/>
								<wire x1="-120.015" y1="-68.58" x2="-120.015" y2="-71.755" width="0.3" layer="91"/>
								<wire x1="-141.605" y1="-68.58" x2="-141.605" y2="-74.93" width="0.3" layer="91"/>
								<pinref part="RE3" gate="G$1" pin="D"/>
								<junction x="-167.64" y="-96.52"/>
								<wire x1="-167.64" y1="-92.71" x2="-167.64" y2="-96.52" width="0.3" layer="91"/>
								<pinref part="RE2" gate="G$1" pin="C"/>
								<wire x1="-167.64" y1="-96.52" x2="-167.64" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-167.64" y1="-96.52" x2="-182.88" y2="-96.52" width="0.3" layer="91"/>
								<junction x="-156.845" y="-58.42"/>
								<wire x1="-144.145" y1="-58.42" x2="-156.845" y2="-58.42" width="0.3" layer="91"/>
								<wire x1="-156.845" y1="-58.42" x2="-176.53" y2="-58.42" width="0.3" layer="91"/>
								<wire x1="-182.88" y1="-96.52" x2="-182.88" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-182.88" y1="-96.52" x2="-182.88" y2="-68.58" width="0.3" layer="91"/>
								<junction x="-182.88" y="-96.52"/>
								<wire x1="-182.88" y1="-96.52" x2="-192.405" y2="-96.52" width="0.3" layer="91"/>
								<wire x1="-144.145" y1="-54.61" x2="-144.145" y2="-58.42" width="0.3" layer="91"/>
								<wire x1="-176.53" y1="-51.435" x2="-176.53" y2="-58.42" width="0.3" layer="91"/>
								<junction x="-176.53" y="-58.42"/>
								<wire x1="-176.53" y1="-58.42" x2="-298.45" y2="-58.42" width="0.3" layer="91"/>
								<wire x1="-190.5" y1="-68.58" x2="-182.88" y2="-68.58" width="0.3" layer="91"/>
								<wire x1="-182.88" y1="-68.58" x2="-165.735" y2="-68.58" width="0.3" layer="91"/>
								<junction x="-182.88" y="-68.58"/>
								<wire x1="-192.405" y1="-96.52" x2="-192.405" y2="-92.71" width="0.3" layer="91"/>
								<pinref part="RE1" gate="G$1" pin="C"/>
								<junction x="-144.145" y="-54.61"/>
								<wire x1="-144.145" y1="-54.61" x2="-144.145" y2="-52.07" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="-54.61" x2="-144.145" y2="-54.61" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="APE2.0"/>
								<junction x="-176.53" y="-51.435"/>
								<wire x1="-182.88" y1="-51.435" x2="-176.53" y2="-51.435" width="0.3" layer="91"/>
								<wire x1="-176.53" y1="-44.45" x2="-176.53" y2="-51.435" width="0.3" layer="91"/>
								<wire x1="-298.45" y1="-42.545" x2="-298.45" y2="-58.42" width="0.3" layer="91"/>
								<wire x1="-190.5" y1="-74.93" x2="-190.5" y2="-68.58" width="0.3" layer="91"/>
								<pinref part="RE1" gate="G$1" pin="D"/>
								<wire x1="-190.5" y1="-71.755" x2="-190.5" y2="-68.58" width="0.3" layer="91"/>
								<wire x1="-165.735" y1="-68.58" x2="-165.735" y2="-74.93" width="0.3" layer="91"/>
								<pinref part="RE2" gate="G$1" pin="D"/>
								<wire x1="-165.735" y1="-68.58" x2="-165.735" y2="-71.755" width="0.3" layer="91"/>
								<junction x="-144.145" y="-52.07"/>
								<wire x1="-144.145" y1="-52.07" x2="-144.145" y2="-49.53" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="-52.07" x2="-144.145" y2="-52.07" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="APE2.1"/>
								<wire x1="-182.88" y1="-46.355" x2="-182.88" y2="-51.435" width="0.3" layer="91"/>
								<wire x1="-176.53" y1="-44.45" x2="-176.53" y2="-10.16" width="0.3" layer="91"/>
								<wire x1="-176.53" y1="-44.45" x2="-171.45" y2="-44.45" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="VSS"/>
								<junction x="-298.45" y="-42.545"/>
								<wire x1="-298.45" y1="-42.545" x2="-298.45" y2="-27.305" width="0.3" layer="91"/>
								<wire x1="-240.665" y1="-42.615" x2="-298.45" y2="-42.545" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="-49.53" x2="-144.145" y2="-49.53" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="APE2.2"/>
								<wire x1="-146.05" y1="-52.07" x2="-146.05" y2="-52.07" width="0.3" layer="91"/>
								<wire x1="-182.88" y1="-49.53" x2="-182.88" y2="-46.355" width="0.3" layer="91"/>
								<pinref part="C2" gate="G$1" pin="1"/>
								<wire x1="-176.53" y1="-0.635" x2="-176.53" y2="-10.16" width="0.3" layer="91"/>
								<junction x="-176.53" y="-10.16"/>
								<wire x1="-140.97" y1="-10.16" x2="-176.53" y2="-10.16" width="0.3" layer="91"/>
								<wire x1="-171.45" y1="-44.45" x2="-171.45" y2="-44.45" width="0.3" layer="91"/>
								<junction x="-298.45" y="-27.305"/>
								<wire x1="-298.45" y1="-27.305" x2="-298.45" y2="17.145" width="0.3" layer="91"/>
								<wire x1="-250.19" y1="-27.305" x2="-298.45" y2="-27.305" width="0.3" layer="91"/>
								<wire x1="-240.665" y1="-45.79" x2="-240.665" y2="-42.615" width="0.3" layer="91"/>
								<pinref part="SD6" gate="G$1" pin="2"/>
								<wire x1="-146.05" y1="-49.53" x2="-146.05" y2="-49.53" width="0.3" layer="91"/>
								<wire x1="-176.53" y1="2.54" x2="-176.53" y2="-0.635" width="0.3" layer="91"/>
								<junction x="-176.53" y="-0.635"/>
								<wire x1="-182.88" y1="-0.635" x2="-176.53" y2="-0.635" width="0.3" layer="91"/>
								<wire x1="-140.97" y1="1.27" x2="-140.97" y2="-10.16" width="0.3" layer="91"/>
								<junction x="-298.45" y="17.145"/>
								<wire x1="-252.73" y1="17.145" x2="-298.45" y2="17.145" width="0.3" layer="91"/>
								<wire x1="-298.45" y1="17.145" x2="-298.45" y2="32.385" width="0.3" layer="91"/>
								<junction x="-250.19" y="-27.305"/>
								<wire x1="-240.665" y1="-27.305" x2="-250.19" y2="-27.305" width="0.3" layer="91"/>
								<wire x1="-250.19" y1="-27.305" x2="-250.19" y2="-12.7" width="0.3" layer="91"/>
								<wire x1="-240.665" y1="-45.79" x2="-240.665" y2="-45.72" width="0.3" layer="91"/>
								<wire x1="-177.165" y1="2.54" x2="-176.53" y2="2.54" width="0.3" layer="91"/>
								<wire x1="-182.88" y1="4.445" x2="-182.88" y2="-0.635" width="0.3" layer="91"/>
								<wire x1="-144.78" y1="1.27" x2="-140.97" y2="1.27" width="0.3" layer="91"/>
								<junction x="-252.73" y="17.145"/>
								<wire x1="-252.73" y1="17.145" x2="-240.665" y2="17.145" width="0.3" layer="91"/>
								<wire x1="-252.73" y1="2.54" x2="-252.73" y2="17.145" width="0.3" layer="91"/>
								<wire x1="-298.45" y1="32.385" x2="-240.665" y2="32.385" width="0.3" layer="91"/>
								<wire x1="-240.665" y1="-30.48" x2="-240.665" y2="-27.305" width="0.3" layer="91"/>
								<pinref part="SD5" gate="G$1" pin="2"/>
								<wire x1="-240.665" y1="-12.7" x2="-250.19" y2="-12.7" width="0.3" layer="91"/>
								<wire x1="-177.165" y1="6.35" x2="-177.165" y2="2.54" width="0.3" layer="91"/>
								<wire x1="-182.88" y1="1.27" x2="-182.88" y2="4.445" width="0.3" layer="91"/>
								<pinref part="C1" gate="G$1" pin="1"/>
								<wire x1="-146.05" y1="1.27" x2="-144.78" y2="1.27" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="APE2.2"/>
								<wire x1="-144.78" y1="1.27" x2="-144.78" y2="-1.27" width="0.3" layer="91"/>
								<wire x1="-240.665" y1="13.97" x2="-240.665" y2="17.145" width="0.3" layer="91"/>
								<pinref part="SD2" gate="G$1" pin="2"/>
								<wire x1="-240.665" y1="2.54" x2="-252.73" y2="2.54" width="0.3" layer="91"/>
								<wire x1="-240.665" y1="29.21" x2="-240.665" y2="32.385" width="0.3" layer="91"/>
								<pinref part="SD1" gate="G$1" pin="2"/>
								<wire x1="-240.665" y1="-15.875" x2="-240.665" y2="-12.7" width="0.3" layer="91"/>
								<pinref part="SD4" gate="G$1" pin="2"/>
								<wire x1="-177.165" y1="6.35" x2="-177.165" y2="33.02" width="0.3" layer="91"/>
								<wire x1="-177.165" y1="6.35" x2="-171.45" y2="6.35" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="VSS"/>
								<junction x="-177.165" y="6.35"/>
								<wire x1="-146.05" y1="1.27" x2="-146.05" y2="1.27" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="-1.27" x2="-144.78" y2="-1.27" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="APE2.1"/>
								<wire x1="-240.665" y1="-0.635" x2="-240.665" y2="2.54" width="0.3" layer="91"/>
								<pinref part="SD3" gate="G$1" pin="2"/>
								<wire x1="-177.165" y1="33.02" x2="-167.64" y2="33.02" width="0.3" layer="91"/>
								<wire x1="-167.64" y1="54.61" x2="-167.64" y2="33.02" width="0.3" layer="91"/>
								<wire x1="-198.755" y1="54.61" x2="-167.64" y2="54.61" width="0.3" layer="91"/>
								<junction x="-167.64" y="54.61"/>
								<wire x1="-167.64" y1="54.61" x2="-150.495" y2="54.61" width="0.3" layer="91"/>
								<wire x1="-198.755" y1="54.61" x2="-230.505" y2="54.61" width="0.3" layer="91"/>
								<wire x1="-198.755" y1="78.105" x2="-198.755" y2="54.61" width="0.3" layer="91"/>
								<junction x="-150.495" y="54.61"/>
								<wire x1="-150.495" y1="54.61" x2="-86.36" y2="54.61" width="0.3" layer="91"/>
								<wire x1="-150.495" y1="103.505" x2="-150.495" y2="54.61" width="0.3" layer="91"/>
								<wire x1="-230.505" y1="74.295" x2="-230.505" y2="54.61" width="0.3" layer="91"/>
								<junction x="-198.755" y="78.105"/>
								<wire x1="-198.755" y1="99.695" x2="-198.755" y2="78.105" width="0.3" layer="91"/>
								<pinref part="S1" gate="G$1" pin="2"/>
								<wire x1="-190.5" y1="78.105" x2="-198.755" y2="78.105" width="0.3" layer="91"/>
								<junction x="-86.36" y="54.61"/>
								<wire x1="-86.36" y1="54.61" x2="1.905" y2="54.61" width="0.3" layer="91"/>
								<wire x1="-86.36" y1="90.17" x2="-86.36" y2="54.61" width="0.3" layer="91"/>
								<wire x1="-133.35" y1="103.505" x2="-150.495" y2="103.505" width="0.3" layer="91"/>
								<wire x1="-230.505" y1="74.295" x2="-239.395" y2="74.295" width="0.3" layer="91"/>
								<pinref part="J3" gate="G$1" pin="1"/>
								<wire x1="-198.755" y1="99.695" x2="-198.755" y2="99.695" width="0.3" layer="91"/>
								<wire x1="-194.31" y1="99.695" x2="-198.755" y2="99.695" width="0.3" layer="91"/>
								<pinref part="S2" gate="G$1" pin="1"/>
								<wire x1="-190.5" y1="74.93" x2="-190.5" y2="78.105" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="GND"/>
								<wire x1="1.905" y1="32.385" x2="1.905" y2="54.61" width="0.3" layer="91"/>
								<wire x1="-99.695" y1="90.17" x2="-86.36" y2="90.17" width="0.3" layer="91"/>
								<junction x="-86.36" y="90.17"/>
								<wire x1="-86.36" y1="90.17" x2="-86.36" y2="90.17" width="0.3" layer="91"/>
								<wire x1="-86.36" y1="90.17" x2="-86.36" y2="104.775" width="0.3" layer="91"/>
								<wire x1="-133.35" y1="95.25" x2="-133.35" y2="103.505" width="0.3" layer="91"/>
								<wire x1="-133.35" y1="103.505" x2="-128.905" y2="103.505" width="0.3" layer="91"/>
								<junction x="-133.35" y="103.505"/>
								<wire x1="-239.395" y1="74.295" x2="-239.395" y2="74.295" width="0.3" layer="91"/>
								<wire x1="-194.31" y1="99.695" x2="-194.31" y2="99.695" width="0.3" layer="91"/>
								<wire x1="-59.055" y1="32.385" x2="1.905" y2="32.385" width="0.3" layer="91"/>
								<wire x1="1.905" y1="17.145" x2="1.905" y2="32.385" width="0.3" layer="91"/>
								<junction x="1.905" y="32.385"/>
								<wire x1="-99.695" y1="90.17" x2="-103.505" y2="90.17" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="VSS"/>
								<junction x="-99.695" y="90.17"/>
								<wire x1="-99.695" y1="90.17" x2="-99.695" y2="96.52" width="0.3" layer="91"/>
								<pinref part="C3" gate="G$1" pin="2"/>
								<junction x="-86.36" y="104.775"/>
								<wire x1="-86.36" y1="104.775" x2="-86.36" y2="114.935" width="0.3" layer="91"/>
								<wire x1="-81.28" y1="104.775" x2="-86.36" y2="104.775" width="0.3" layer="91"/>
								<wire x1="-128.905" y1="95.25" x2="-133.35" y2="95.25" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="APE2.2"/>
								<wire x1="-128.905" y1="100.33" x2="-128.905" y2="103.505" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="APE2.0"/>
								<wire x1="-59.055" y1="29.21" x2="-59.055" y2="32.385" width="0.3" layer="91"/>
								<pinref part="SD7" gate="G$1" pin="2"/>
								<wire x1="-48.26" y1="17.145" x2="1.905" y2="17.145" width="0.3" layer="91"/>
								<wire x1="1.905" y1="17.145" x2="1.905" y2="-19.685" width="0.3" layer="91"/>
								<junction x="1.905" y="17.145"/>
								<wire x1="1.905" y1="17.145" x2="-59.055" y2="17.145" width="0.3" layer="91"/>
								<wire x1="-86.36" y1="114.935" x2="-86.36" y2="114.935" width="0.3" layer="91"/>
								<wire x1="-97.79" y1="114.935" x2="-86.36" y2="114.935" width="0.3" layer="91"/>
								<wire x1="-86.36" y1="114.935" x2="-63.5" y2="114.935" width="0.3" layer="91"/>
								<wire x1="-81.28" y1="101.6" x2="-81.28" y2="104.775" width="0.3" layer="91"/>
								<pinref part="R6" gate="G$1" pin="3"/>
								<wire x1="-128.905" y1="95.25" x2="-128.905" y2="95.25" width="0.3" layer="91"/>
								<wire x1="-48.26" y1="17.145" x2="-48.26" y2="2.54" width="0.3" layer="91"/>
								<wire x1="-41.275" y1="-19.685" x2="1.905" y2="-19.685" width="0.3" layer="91"/>
								<wire x1="1.905" y1="-19.685" x2="1.905" y2="-27.305" width="0.3" layer="91"/>
								<junction x="1.905" y="-19.685"/>
								<wire x1="-59.055" y1="13.97" x2="-59.055" y2="17.145" width="0.3" layer="91"/>
								<pinref part="SD8" gate="G$1" pin="2"/>
								<wire x1="-97.79" y1="118.745" x2="-97.79" y2="114.935" width="0.3" layer="91"/>
								<pinref part="X1" gate="G$1" pin="GND"/>
								<wire x1="-63.5" y1="100.33" x2="-63.5" y2="114.935" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="GND"/>
								<wire x1="-63.5" y1="114.935" x2="-27.94" y2="114.935" width="0.3" layer="91"/>
								<pinref part="J1" gate="G$1" pin="T"/>
								<wire x1="-59.055" y1="2.54" x2="-48.26" y2="2.54" width="0.3" layer="91"/>
								<wire x1="-41.275" y1="-17.145" x2="-41.275" y2="-19.685" width="0.3" layer="91"/>
								<wire x1="1.905" y1="-42.545" x2="1.905" y2="-27.305" width="0.3" layer="91"/>
								<wire x1="-59.055" y1="-27.305" x2="1.905" y2="-27.305" width="0.3" layer="91"/>
								<junction x="1.905" y="-27.305"/>
								<wire x1="-27.94" y1="114.935" x2="-27.94" y2="114.935" width="0.3" layer="91"/>
								<wire x1="-59.055" y1="-0.635" x2="-59.055" y2="2.54" width="0.3" layer="91"/>
								<pinref part="SD9" gate="G$1" pin="2"/>
								<wire x1="-52.07" y1="-17.145" x2="-41.275" y2="-17.145" width="0.3" layer="91"/>
								<wire x1="1.905" y1="-42.545" x2="-24.13" y2="-42.545" width="0.3" layer="91"/>
								<wire x1="-59.055" y1="-30.48" x2="-59.055" y2="-27.305" width="0.3" layer="91"/>
								<pinref part="SD11" gate="G$1" pin="2"/>
								<wire x1="-52.07" y1="-12.7" x2="-52.07" y2="-17.145" width="0.3" layer="91"/>
								<wire x1="-24.13" y1="-42.545" x2="-59.055" y2="-42.615" width="0.3" layer="91"/>
								<wire x1="-59.055" y1="-12.7" x2="-52.07" y2="-12.7" width="0.3" layer="91"/>
								<wire x1="-59.055" y1="-45.79" x2="-59.055" y2="-42.615" width="0.3" layer="91"/>
								<pinref part="SD12" gate="G$1" pin="2"/>
								<wire x1="-59.055" y1="-15.875" x2="-59.055" y2="-12.7" width="0.3" layer="91"/>
								<pinref part="SD10" gate="G$1" pin="2"/>
								<wire x1="-59.055" y1="-45.79" x2="-59.055" y2="-45.72" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-160.655" y1="-19.05" x2="-160.655" y2="-19.05" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-176.53" y1="7.62" x2="-176.53" y2="7.62" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-161.925" y1="57.15" x2="-161.925" y2="57.15" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-173.355" y1="6.35" x2="-173.355" y2="6.35" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-187.325" y1="36.195" x2="-187.325" y2="36.195" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="1.905" y1="13.97" x2="1.905" y2="13.97" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-35.56" y1="13.97" x2="-35.56" y2="13.97" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-24.13" y1="-45.72" x2="-24.13" y2="-45.72" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-246.38" y1="-30.48" x2="-246.38" y2="-30.48" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-117.475" y1="56.515" x2="-117.475" y2="56.515" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-63.5" y1="111.76" x2="-63.5" y2="111.76" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-63.5" y1="101.6" x2="-63.5" y2="101.6" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-33.02" y1="114.935" x2="-33.02" y2="114.935" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-156.845" y1="-92.075" x2="-156.845" y2="-92.075" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-156.845" y1="-92.075" x2="-156.845" y2="-92.075" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-156.845" y1="-92.075" x2="-156.845" y2="-92.075" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-198.755" y1="102.87" x2="-198.755" y2="102.87" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-146.05" y1="1.905" x2="-146.05" y2="1.905" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-198.755" y1="102.87" x2="-198.755" y2="102.87" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-96.52" y1="123.19" x2="-96.52" y2="123.19" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-123.19" y1="-96.52" x2="-123.19" y2="-96.52" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$107" class="0">
							<segment>
								<wire x1="-70.485" y1="-49.6" x2="-70.485" y2="-52.07" width="0.3" layer="91"/>
								<pinref part="SD12" gate="G$1" pin="5"/>
								<wire x1="-70.485" y1="-49.53" x2="-70.485" y2="-49.6" width="0.3" layer="91"/>
								<wire x1="-70.485" y1="-52.07" x2="-43.815" y2="-52.07" width="0.3" layer="91"/>
								<wire x1="-43.815" y1="-52.07" x2="-43.815" y2="-17.78" width="0.3" layer="91"/>
								<wire x1="-43.815" y1="-17.78" x2="-23.495" y2="-17.78" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="Sig$108" class="0">
							<segment>
								<wire x1="-70.485" y1="10.16" x2="-70.485" y2="9.525" width="0.3" layer="91"/>
								<pinref part="SD8" gate="G$1" pin="5"/>
								<wire x1="-70.485" y1="9.525" x2="-43.18" y2="9.525" width="0.3" layer="91"/>
								<wire x1="-43.18" y1="9.525" x2="-43.18" y2="1.27" width="0.3" layer="91"/>
								<wire x1="-43.18" y1="1.27" x2="-23.495" y2="1.27" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="7"/>
							</segment>
						</net>
						<net name="SCL" class="0">
							<segment>
								<wire x1="-171.45" y1="-49.53" x2="-179.07" y2="-49.53" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="SCL"/>
								<wire x1="-179.07" y1="-49.53" x2="-179.07" y2="1.27" width="0.3" layer="91"/>
								<junction x="-179.07" y="1.27"/>
								<wire x1="-179.07" y1="53.34" x2="-179.07" y2="1.27" width="0.3" layer="91"/>
								<wire x1="-179.07" y1="1.27" x2="-171.45" y2="1.27" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="SCL"/>
								<wire x1="-206.375" y1="53.34" x2="-179.07" y2="53.34" width="0.3" layer="91"/>
								<wire x1="-154.94" y1="53.34" x2="-179.07" y2="53.34" width="0.3" layer="91"/>
								<wire x1="-206.375" y1="53.34" x2="-206.375" y2="60.325" width="0.3" layer="91"/>
								<wire x1="-154.94" y1="53.34" x2="-154.94" y2="66.675" width="0.3" layer="91"/>
								<wire x1="-206.375" y1="76.835" x2="-206.375" y2="60.325" width="0.3" layer="91"/>
								<pinref part="R1" gate="G$1" pin="1"/>
								<junction x="-206.375" y="60.325"/>
								<wire x1="-206.375" y1="60.325" x2="-210.82" y2="60.325" width="0.3" layer="91"/>
								<pinref part="R10" gate="G$1" pin="7"/>
								<wire x1="-154.94" y1="66.675" x2="-153.67" y2="66.675" width="0.3" layer="91"/>
								<wire x1="-210.82" y1="60.325" x2="-210.82" y2="60.325" width="0.3" layer="91"/>
								<wire x1="-153.67" y1="66.675" x2="-153.67" y2="104.775" width="0.3" layer="91"/>
								<wire x1="-100.965" y1="104.775" x2="-153.67" y2="104.775" width="0.3" layer="91"/>
								<wire x1="-100.965" y1="104.775" x2="-100.965" y2="95.25" width="0.3" layer="91"/>
								<wire x1="-100.965" y1="95.25" x2="-103.505" y2="95.25" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="SCL"/>
							</segment>
							<segment>
								<wire x1="-185.42" y1="52.705" x2="-185.42" y2="52.705" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-207.645" y1="62.23" x2="-207.645" y2="62.23" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-192.405" y1="53.34" x2="-192.405" y2="53.34" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="TxD" class="0">
							<segment>
								<wire x1="-190.5" y1="56.515" x2="-190.5" y2="56.515" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-190.5" y1="58.42" x2="-190.5" y2="48.895" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="TxD"/>
								<wire x1="-190.5" y1="48.895" x2="-233.68" y2="48.895" width="0.3" layer="91"/>
								<wire x1="-233.68" y1="48.895" x2="-233.68" y2="84.455" width="0.3" layer="91"/>
								<wire x1="-233.68" y1="84.455" x2="-239.395" y2="84.455" width="0.3" layer="91"/>
								<pinref part="J3" gate="G$1" pin="5"/>
							</segment>
						</net>
						<net name="GPIO2" class="0">
							<segment>
								<wire x1="-207.645" y1="82.55" x2="-207.645" y2="82.55" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-202.565" y1="86.995" x2="-202.565" y2="71.755" width="0.3" layer="91"/>
								<wire x1="-202.565" y1="86.995" x2="-206.375" y2="86.995" width="0.3" layer="91"/>
								<pinref part="R1" gate="G$1" pin="2"/>
								<wire x1="-202.565" y1="86.995" x2="-202.565" y2="86.995" width="0.3" layer="91"/>
								<wire x1="-202.565" y1="86.995" x2="-185.42" y2="86.995" width="0.3" layer="91"/>
								<junction x="-202.565" y="86.995"/>
								<wire x1="-202.565" y1="71.755" x2="-210.82" y2="71.755" width="0.3" layer="91"/>
								<pinref part="R10" gate="G$1" pin="4"/>
								<wire x1="-185.42" y1="86.995" x2="-185.42" y2="74.93" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="GPIO2"/>
								<wire x1="-210.82" y1="71.755" x2="-210.82" y2="71.755" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-185.42" y1="77.47" x2="-185.42" y2="77.47" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-202.565" y1="76.835" x2="-202.565" y2="76.835" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-196.85" y1="86.995" x2="-196.85" y2="86.995" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="GPIO0/Prog" class="0">
							<segment>
								<wire x1="-180.34" y1="94.615" x2="-180.34" y2="74.93" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="GPIO0/Prog"/>
								<wire x1="-211.455" y1="94.615" x2="-180.34" y2="94.615" width="0.3" layer="91"/>
								<wire x1="-211.455" y1="94.615" x2="-200.66" y2="94.615" width="0.3" layer="91"/>
								<wire x1="-211.455" y1="94.615" x2="-211.455" y2="99.695" width="0.3" layer="91"/>
								<wire x1="-200.66" y1="75.565" x2="-200.66" y2="94.615" width="0.3" layer="91"/>
								<wire x1="-210.185" y1="99.695" x2="-211.455" y2="99.695" width="0.3" layer="91"/>
								<pinref part="S1" gate="G$1" pin="1"/>
								<junction x="-200.66" y="75.565"/>
								<wire x1="-200.66" y1="75.565" x2="-200.66" y2="44.45" width="0.3" layer="91"/>
								<wire x1="-200.66" y1="75.565" x2="-210.82" y2="75.565" width="0.3" layer="91"/>
								<pinref part="R10" gate="G$1" pin="3"/>
								<wire x1="-200.66" y1="44.45" x2="-198.12" y2="44.45" width="0.3" layer="91"/>
								<pinref part="R2" gate="G$1" pin="2"/>
							</segment>
							<segment>
								<wire x1="-207.645" y1="82.55" x2="-207.645" y2="82.55" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-195.58" y1="94.615" x2="-195.58" y2="94.615" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-207.01" y1="75.565" x2="-207.01" y2="75.565" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-201.93" y1="89.535" x2="-201.93" y2="89.535" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-211.455" y1="88.9" x2="-211.455" y2="88.9" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$118" class="0">
							<segment>
								<wire x1="-210.82" y1="67.945" x2="-201.93" y2="67.945" width="0.3" layer="91"/>
								<pinref part="R10" gate="G$1" pin="5"/>
								<wire x1="-210.82" y1="67.945" x2="-210.82" y2="67.945" width="0.3" layer="91"/>
								<wire x1="-201.93" y1="67.945" x2="-201.93" y2="57.785" width="0.3" layer="91"/>
								<wire x1="-201.93" y1="57.785" x2="-185.42" y2="57.785" width="0.3" layer="91"/>
								<wire x1="-185.42" y1="57.785" x2="-185.42" y2="58.42" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="Ch-Pd"/>
							</segment>
						</net>
						<net name="RESET" class="0">
							<segment>
								<wire x1="-146.05" y1="-46.99" x2="-73.025" y2="-46.99" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="RESET"/>
								<wire x1="-73.025" y1="-46.99" x2="-73.025" y2="-37.465" width="0.3" layer="91"/>
								<wire x1="-73.025" y1="-37.465" x2="-46.355" y2="-37.465" width="0.3" layer="91"/>
								<wire x1="-46.355" y1="-37.465" x2="-46.355" y2="-10.16" width="0.3" layer="91"/>
								<wire x1="-46.355" y1="-10.16" x2="-23.495" y2="-10.16" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="4"/>
							</segment>
						</net>
						<net name="Sig$129" class="0">
							<segment>
								<wire x1="-70.485" y1="-34.29" x2="-73.025" y2="-34.29" width="0.3" layer="91"/>
								<pinref part="SD11" gate="G$1" pin="5"/>
								<wire x1="-73.025" y1="-34.29" x2="-73.025" y2="-22.86" width="0.3" layer="91"/>
								<wire x1="-73.025" y1="-22.86" x2="-48.895" y2="-22.86" width="0.3" layer="91"/>
								<wire x1="-48.895" y1="-22.86" x2="-48.895" y2="-13.97" width="0.3" layer="91"/>
								<wire x1="-48.895" y1="-13.97" x2="-23.495" y2="-13.97" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="3"/>
							</segment>
						</net>
						<net name="Sig$131" class="0">
							<segment>
								<wire x1="-70.485" y1="-4.445" x2="-73.025" y2="-4.445" width="0.3" layer="91"/>
								<pinref part="SD9" gate="G$1" pin="5"/>
								<wire x1="-73.025" y1="-4.445" x2="-73.025" y2="6.985" width="0.3" layer="91"/>
								<wire x1="-73.025" y1="6.985" x2="-45.72" y2="6.985" width="0.3" layer="91"/>
								<wire x1="-45.72" y1="6.985" x2="-45.72" y2="-2.54" width="0.3" layer="91"/>
								<wire x1="-45.72" y1="-2.54" x2="-23.495" y2="-2.54" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="6"/>
							</segment>
						</net>
						<net name="Sig$132" class="0">
							<segment>
								<wire x1="-70.485" y1="25.4" x2="-70.485" y2="22.86" width="0.3" layer="91"/>
								<pinref part="SD7" gate="G$1" pin="5"/>
								<wire x1="-70.485" y1="22.86" x2="-40.64" y2="22.86" width="0.3" layer="91"/>
								<wire x1="-40.64" y1="22.86" x2="-40.64" y2="5.08" width="0.3" layer="91"/>
								<wire x1="-40.64" y1="5.08" x2="-23.495" y2="5.08" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="8"/>
							</segment>
						</net>
						<net name="Sig$137" class="0">
							<segment>
								<wire x1="-269.875" y1="-0.635" x2="-265.43" y2="-0.635" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="2"/>
								<wire x1="-265.43" y1="-0.635" x2="-265.43" y2="35.56" width="0.3" layer="91"/>
								<wire x1="-265.43" y1="35.56" x2="-229.235" y2="35.56" width="0.3" layer="91"/>
								<wire x1="-229.235" y1="35.56" x2="-229.235" y2="33.02" width="0.3" layer="91"/>
								<pinref part="SD1" gate="G$1" pin="5"/>
							</segment>
						</net>
						<net name="Sig$138" class="0">
							<segment>
								<wire x1="-229.235" y1="17.78" x2="-229.235" y2="20.32" width="0.3" layer="91"/>
								<pinref part="SD2" gate="G$1" pin="5"/>
								<wire x1="-229.235" y1="20.32" x2="-262.89" y2="20.32" width="0.3" layer="91"/>
								<wire x1="-262.89" y1="20.32" x2="-262.89" y2="-4.445" width="0.3" layer="91"/>
								<wire x1="-262.89" y1="-4.445" x2="-269.875" y2="-4.445" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="3"/>
							</segment>
						</net>
						<net name="Sig$139" class="0">
							<segment>
								<wire x1="-229.235" y1="3.175" x2="-229.235" y2="5.715" width="0.3" layer="91"/>
								<pinref part="SD3" gate="G$1" pin="5"/>
								<wire x1="-229.235" y1="5.715" x2="-255.27" y2="5.715" width="0.3" layer="91"/>
								<wire x1="-255.27" y1="5.715" x2="-255.27" y2="-8.255" width="0.3" layer="91"/>
								<wire x1="-255.27" y1="-8.255" x2="-269.875" y2="-8.255" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="4"/>
							</segment>
						</net>
						<net name="Sig$140" class="0">
							<segment>
								<wire x1="-143.51" y1="3.81" x2="-143.51" y2="-9.525" width="0.3" layer="91"/>
								<wire x1="-143.51" y1="3.81" x2="-146.05" y2="3.81" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="RESET"/>
								<wire x1="-143.51" y1="-9.525" x2="-243.84" y2="-9.525" width="0.3" layer="91"/>
								<wire x1="-243.84" y1="-9.525" x2="-243.84" y2="-12.065" width="0.3" layer="91"/>
								<wire x1="-243.84" y1="-12.065" x2="-269.875" y2="-12.065" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="5"/>
							</segment>
						</net>
						<net name="Sig$141" class="0">
							<segment>
								<wire x1="-229.235" y1="-11.98" x2="-226.695" y2="-12.065" width="0.3" layer="91"/>
								<pinref part="SD4" gate="G$1" pin="5"/>
								<wire x1="-229.235" y1="-12.065" x2="-229.235" y2="-11.98" width="0.3" layer="91"/>
								<wire x1="-226.695" y1="-12.065" x2="-226.695" y2="-23.495" width="0.3" layer="91"/>
								<wire x1="-226.695" y1="-23.495" x2="-253.365" y2="-23.495" width="0.3" layer="91"/>
								<wire x1="-253.365" y1="-23.495" x2="-253.365" y2="-15.875" width="0.3" layer="91"/>
								<wire x1="-253.365" y1="-15.875" x2="-269.875" y2="-15.875" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="6"/>
							</segment>
						</net>
						<net name="Sig$142" class="0">
							<segment>
								<wire x1="-229.235" y1="-26.67" x2="-229.235" y2="-26.035" width="0.3" layer="91"/>
								<pinref part="SD5" gate="G$1" pin="5"/>
								<wire x1="-229.235" y1="-26.035" x2="-255.905" y2="-26.035" width="0.3" layer="91"/>
								<wire x1="-255.905" y1="-26.035" x2="-255.905" y2="-19.685" width="0.3" layer="91"/>
								<wire x1="-255.905" y1="-19.685" x2="-269.875" y2="-19.685" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="7"/>
							</segment>
						</net>
						<net name="Sig$143" class="0">
							<segment>
								<wire x1="-229.235" y1="-41.98" x2="-229.235" y2="-39.37" width="0.3" layer="91"/>
								<pinref part="SD6" gate="G$1" pin="5"/>
								<wire x1="-229.235" y1="-41.91" x2="-229.235" y2="-41.98" width="0.3" layer="91"/>
								<wire x1="-229.235" y1="-39.37" x2="-258.445" y2="-39.37" width="0.3" layer="91"/>
								<wire x1="-258.445" y1="-39.37" x2="-258.445" y2="-23.495" width="0.3" layer="91"/>
								<wire x1="-258.445" y1="-23.495" x2="-269.875" y2="-23.495" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="8"/>
							</segment>
						</net>
						<net name="APE2.0" class="0">
							<segment>
								<wire x1="-146.05" y1="-3.81" x2="-144.78" y2="-3.81" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="APE2.0"/>
								<wire x1="-144.78" y1="-3.81" x2="-144.78" y2="-11.43" width="0.3" layer="91"/>
								<pinref part="R5" gate="G$1" pin="1"/>
							</segment>
						</net>
						<net name="PE2B4" class="0">
							<segment>
								<wire x1="-171.45" y1="-31.75" x2="-200.025" y2="-31.75" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B4"/>
								<wire x1="-200.025" y1="-31.75" x2="-200.025" y2="-52.07" width="0.3" layer="91"/>
								<wire x1="-200.025" y1="-52.07" x2="-205.105" y2="-52.07" width="0.3" layer="91"/>
								<wire x1="-205.105" y1="-52.07" x2="-205.105" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-188.595" y1="-97.79" x2="-205.105" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-188.595" y1="-92.71" x2="-188.595" y2="-97.79" width="0.3" layer="91"/>
								<pinref part="RE1" gate="G$1" pin="B"/>
							</segment>
						</net>
						<net name="PE2B6" class="0">
							<segment>
								<wire x1="-171.45" y1="-36.83" x2="-172.72" y2="-36.83" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B6"/>
								<wire x1="-172.72" y1="-36.83" x2="-172.72" y2="-67.945" width="0.3" layer="91"/>
								<wire x1="-172.72" y1="-67.945" x2="-177.8" y2="-67.945" width="0.3" layer="91"/>
								<wire x1="-177.8" y1="-67.945" x2="-177.8" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-163.83" y1="-97.79" x2="-177.8" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-163.83" y1="-92.71" x2="-163.83" y2="-97.79" width="0.3" layer="91"/>
								<pinref part="RE2" gate="G$1" pin="B"/>
							</segment>
						</net>
						<net name="PE2A1" class="0">
							<segment>
								<wire x1="-146.05" y1="-36.83" x2="-142.875" y2="-36.83" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A1"/>
								<wire x1="-142.875" y1="-65.405" x2="-142.875" y2="-36.83" width="0.3" layer="91"/>
								<wire x1="-142.875" y1="-65.405" x2="-142.875" y2="-65.405" width="0.3" layer="91"/>
								<wire x1="-142.875" y1="-65.405" x2="-153.67" y2="-65.405" width="0.3" layer="91"/>
								<wire x1="-153.67" y1="-65.405" x2="-153.67" y2="-93.98" width="0.3" layer="91"/>
								<wire x1="-153.67" y1="-93.98" x2="-147.32" y2="-93.98" width="0.3" layer="91"/>
								<wire x1="-147.32" y1="-92.71" x2="-147.32" y2="-93.98" width="0.3" layer="91"/>
								<pinref part="RE3" gate="G$1" pin="A"/>
							</segment>
							<segment>
								<wire x1="-153.67" y1="-90.17" x2="-153.67" y2="-90.17" width="0.3" layer="91"/>
							</segment>
							<segment>
								<wire x1="-156.21" y1="-90.17" x2="-156.21" y2="-90.17" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$195" class="0">
							<segment>
								<wire x1="-83.185" y1="69.85" x2="-103.505" y2="69.85" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2B1"/>
								<wire x1="-83.185" y1="69.85" x2="-83.185" y2="67.31" width="0.3" layer="91"/>
								<wire x1="-83.185" y1="67.31" x2="-63.5" y2="67.31" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="D7"/>
							</segment>
						</net>
						<net name="D6" class="0">
							<segment>
								<wire x1="-81.28" y1="69.85" x2="-63.5" y2="69.85" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="D6"/>
								<wire x1="-81.28" y1="69.85" x2="-81.28" y2="72.39" width="0.3" layer="91"/>
								<wire x1="-81.28" y1="72.39" x2="-103.505" y2="72.39" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2B2"/>
							</segment>
						</net>
						<net name="PE2B5" class="0">
							<segment>
								<wire x1="-79.375" y1="74.93" x2="-103.505" y2="74.93" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2B3"/>
								<wire x1="-79.375" y1="74.93" x2="-79.375" y2="72.39" width="0.3" layer="91"/>
								<wire x1="-79.375" y1="72.39" x2="-63.5" y2="72.39" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="D5"/>
							</segment>
						</net>
						<net name="D4" class="0">
							<segment>
								<wire x1="-63.5" y1="74.93" x2="-77.47" y2="74.93" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="D4"/>
								<wire x1="-77.47" y1="74.93" x2="-77.47" y2="77.47" width="0.3" layer="91"/>
								<wire x1="-77.47" y1="77.47" x2="-103.505" y2="77.47" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2B4"/>
							</segment>
						</net>
						<net name="RS" class="0">
							<segment>
								<wire x1="-63.5" y1="92.71" x2="-81.28" y2="92.71" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="RS"/>
								<wire x1="-81.28" y1="92.71" x2="-81.28" y2="85.09" width="0.3" layer="91"/>
								<wire x1="-81.28" y1="85.09" x2="-103.505" y2="85.09" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2B7"/>
							</segment>
						</net>
						<net name="R/W" class="0">
							<segment>
								<wire x1="-60.96" y1="90.17" x2="-79.375" y2="90.17" width="0.3" layer="91"/>
								<wire x1="-79.375" y1="82.55" x2="-79.375" y2="90.17" width="0.3" layer="91"/>
								<wire x1="-63.5" y1="90.17" x2="-60.96" y2="90.17" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="R/W"/>
								<wire x1="-79.375" y1="82.55" x2="-103.505" y2="82.55" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2B6"/>
							</segment>
							<segment>
								<wire x1="-64.77" y1="90.17" x2="-64.77" y2="90.17" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$208" class="0">
							<segment>
								<wire x1="-103.505" y1="80.01" x2="-77.47" y2="80.01" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2B5"/>
								<wire x1="-77.47" y1="80.01" x2="-77.47" y2="87.63" width="0.3" layer="91"/>
								<wire x1="-77.47" y1="87.63" x2="-63.5" y2="87.63" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="E"/>
							</segment>
							<segment>
								<wire x1="-70.485" y1="87.63" x2="-70.485" y2="87.63" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$209" class="0">
							<segment>
								<wire x1="-128.905" y1="92.71" x2="-135.89" y2="92.71" width="0.3" layer="91"/>
								<pinref part="R3" gate="G$1" pin="1"/>
								<pinref part="PE3" gate="G$1" pin="RESET"/>
							</segment>
						</net>
						<net name="Sig$211" class="0">
							<segment>
								<wire x1="-135.89" y1="97.79" x2="-128.905" y2="97.79" width="0.3" layer="91"/>
								<pinref part="R4" gate="G$1" pin="1"/>
								<pinref part="PE3" gate="G$1" pin="APE2.1"/>
							</segment>
						</net>
						<net name="VCC3.3" class="0">
							<segment>
								<junction x="-173.99" y="-11.43"/>
								<wire x1="-173.99" y1="-11.43" x2="-173.99" y2="-41.91" width="0.3" layer="91"/>
								<wire x1="-154.94" y1="-11.43" x2="-173.99" y2="-11.43" width="0.3" layer="91"/>
								<pinref part="R5" gate="G$1" pin="2"/>
								<wire x1="-173.99" y1="-11.43" x2="-173.99" y2="8.89" width="0.3" layer="91"/>
								<wire x1="-173.99" y1="-41.91" x2="-171.45" y2="-41.91" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="VDD"/>
								<wire x1="-173.99" y1="-41.91" x2="-182.88" y2="-41.91" width="0.3" layer="91"/>
								<pinref part="C2" gate="G$1" pin="2"/>
								<junction x="-173.99" y="8.89"/>
								<wire x1="-173.99" y1="8.89" x2="-171.45" y2="8.89" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="VDD"/>
								<wire x1="-173.99" y1="39.37" x2="-173.99" y2="8.89" width="0.3" layer="91"/>
								<wire x1="-182.88" y1="8.89" x2="-173.99" y2="8.89" width="0.3" layer="91"/>
								<pinref part="C1" gate="G$1" pin="2"/>
								<wire x1="-175.26" y1="39.37" x2="-173.99" y2="39.37" width="0.3" layer="91"/>
								<wire x1="-227.965" y1="39.37" x2="-175.26" y2="39.37" width="0.3" layer="91"/>
								<junction x="-175.26" y="39.37"/>
								<wire x1="-175.26" y1="46.99" x2="-175.26" y2="39.37" width="0.3" layer="91"/>
								<wire x1="-227.965" y1="39.37" x2="-227.965" y2="79.375" width="0.3" layer="91"/>
								<wire x1="-227.965" y1="39.37" x2="-285.115" y2="39.37" width="0.3" layer="91"/>
								<junction x="-227.965" y="39.37"/>
								<wire x1="-146.05" y1="46.99" x2="-175.26" y2="46.99" width="0.3" layer="91"/>
								<wire x1="-175.26" y1="46.99" x2="-175.26" y2="58.42" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="Vcc_3.3"/>
								<junction x="-175.26" y="46.99"/>
								<wire x1="-226.06" y1="79.375" x2="-227.965" y2="79.375" width="0.3" layer="91"/>
								<pinref part="R10" gate="G$1" pin="1"/>
								<wire x1="-285.115" y1="39.37" x2="-285.115" y2="-0.635" width="0.3" layer="91"/>
								<pinref part="R11" gate="G$1" pin="1"/>
								<wire x1="-146.05" y1="46.99" x2="-88.9" y2="46.99" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="46.99" x2="-146.05" y2="92.71" width="0.3" layer="91"/>
								<pinref part="R3" gate="G$1" pin="2"/>
								<junction x="-146.05" y="46.99"/>
								<wire x1="-88.9" y1="46.99" x2="-8.255" y2="46.99" width="0.3" layer="91"/>
								<junction x="-88.9" y="46.99"/>
								<wire x1="-88.9" y1="46.99" x2="-88.9" y2="87.63" width="0.3" layer="91"/>
								<junction x="-146.05" y="92.71"/>
								<wire x1="-146.05" y1="92.71" x2="-146.05" y2="97.79" width="0.3" layer="91"/>
								<pinref part="R4" gate="G$1" pin="2"/>
								<wire x1="-146.05" y1="92.71" x2="-144.78" y2="92.71" width="0.3" layer="91"/>
								<wire x1="-8.255" y1="46.99" x2="-8.255" y2="-17.78" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="1"/>
								<junction x="-88.9" y="87.63"/>
								<wire x1="-88.9" y1="126.365" x2="-88.9" y2="87.63" width="0.3" layer="91"/>
								<pinref part="X1" gate="G$1" pin="OUT"/>
								<wire x1="-92.075" y1="87.63" x2="-88.9" y2="87.63" width="0.3" layer="91"/>
								<junction x="-146.05" y="97.79"/>
								<wire x1="-144.78" y1="97.79" x2="-146.05" y2="97.79" width="0.3" layer="91"/>
								<junction x="-92.075" y="87.63"/>
								<wire x1="-92.075" y1="87.63" x2="-103.505" y2="87.63" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="VDD"/>
								<wire x1="-92.075" y1="96.52" x2="-92.075" y2="87.63" width="0.3" layer="91"/>
								<pinref part="C3" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="-129.54" y1="46.99" x2="-129.54" y2="46.99" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$230" class="0">
							<segment>
								<wire x1="-70.485" y1="-19.6" x2="-73.025" y2="-19.685" width="0.3" layer="91"/>
								<pinref part="SD10" gate="G$1" pin="5"/>
								<wire x1="-70.485" y1="-19.685" x2="-70.485" y2="-19.6" width="0.3" layer="91"/>
								<wire x1="-73.025" y1="-19.685" x2="-73.025" y2="-6.985" width="0.3" layer="91"/>
								<wire x1="-73.025" y1="-6.985" x2="-58.42" y2="-6.985" width="0.3" layer="91"/>
								<wire x1="-58.42" y1="-6.985" x2="-58.42" y2="-6.35" width="0.3" layer="91"/>
								<wire x1="-58.42" y1="-6.35" x2="-23.495" y2="-6.35" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="5"/>
							</segment>
						</net>
						<net name="SDA" class="0">
							<segment>
								<junction x="-187.96" y="44.45"/>
								<wire x1="-187.96" y1="41.275" x2="-187.96" y2="44.45" width="0.3" layer="91"/>
								<pinref part="R2" gate="G$1" pin="1"/>
								<wire x1="-187.96" y1="41.275" x2="-187.96" y2="44.45" width="0.3" layer="91"/>
								<wire x1="-187.96" y1="44.45" x2="-184.15" y2="44.45" width="0.3" layer="91"/>
								<wire x1="-187.96" y1="36.83" x2="-187.96" y2="41.275" width="0.3" layer="91"/>
								<junction x="-187.96" y="41.275"/>
								<wire x1="-187.96" y1="41.275" x2="-187.96" y2="41.275" width="0.3" layer="91"/>
								<wire x1="-208.915" y1="41.275" x2="-187.96" y2="41.275" width="0.3" layer="91"/>
								<wire x1="-184.15" y1="44.45" x2="-184.15" y2="48.895" width="0.3" layer="91"/>
								<wire x1="-187.96" y1="36.83" x2="-190.5" y2="36.83" width="0.3" layer="91"/>
								<wire x1="-208.915" y1="41.275" x2="-208.915" y2="56.515" width="0.3" layer="91"/>
								<wire x1="-184.15" y1="48.895" x2="-158.115" y2="48.895" width="0.3" layer="91"/>
								<wire x1="-190.5" y1="-1.27" x2="-190.5" y2="36.83" width="0.3" layer="91"/>
								<wire x1="-208.915" y1="56.515" x2="-210.82" y2="56.515" width="0.3" layer="91"/>
								<pinref part="R10" gate="G$1" pin="8"/>
								<wire x1="-158.115" y1="48.895" x2="-158.115" y2="107.315" width="0.3" layer="91"/>
								<wire x1="-190.5" y1="-1.27" x2="-171.45" y2="-1.27" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="SDA"/>
								<wire x1="-190.5" y1="-1.27" x2="-190.5" y2="-52.07" width="0.3" layer="91"/>
								<junction x="-190.5" y="-1.27"/>
								<wire x1="-158.115" y1="107.315" x2="-102.235" y2="107.315" width="0.3" layer="91"/>
								<wire x1="-190.5" y1="-52.07" x2="-171.45" y2="-52.07" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="SDA"/>
								<wire x1="-102.235" y1="107.315" x2="-102.235" y2="97.79" width="0.3" layer="91"/>
								<wire x1="-102.235" y1="97.79" x2="-103.505" y2="97.79" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="SDA"/>
							</segment>
							<segment>
								<wire x1="-190.5" y1="8.89" x2="-190.5" y2="8.89" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Vo" class="0">
							<segment>
								<wire x1="-81.28" y1="95.25" x2="-63.5" y2="95.25" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="Vo"/>
								<wire x1="-81.28" y1="97.155" x2="-81.28" y2="95.25" width="0.3" layer="91"/>
								<pinref part="R6" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="xx" class="0">
							<segment>
								<wire x1="-125.73" y1="-92.71" x2="-125.73" y2="-97.79" width="0.3" layer="91"/>
								<pinref part="RE4" gate="G$1" pin="A"/>
								<wire x1="-125.73" y1="-97.79" x2="-106.045" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-106.045" y1="-59.69" x2="-106.045" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-139.7" y1="-59.69" x2="-106.045" y2="-59.69" width="0.3" layer="91"/>
								<wire x1="-139.7" y1="-31.75" x2="-139.7" y2="-59.69" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="-31.75" x2="-139.7" y2="-31.75" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A3"/>
							</segment>
						</net>
						<net name="ss0" class="0">
							<segment>
								<wire x1="-194.31" y1="30.48" x2="-194.31" y2="-74.93" width="0.3" layer="91"/>
								<pinref part="RE1" gate="G$1" pin="E"/>
								<wire x1="-181.61" y1="30.48" x2="-194.31" y2="30.48" width="0.3" layer="91"/>
								<wire x1="-181.61" y1="30.48" x2="-181.61" y2="43.815" width="0.3" layer="91"/>
								<wire x1="-181.61" y1="43.815" x2="-142.875" y2="43.815" width="0.3" layer="91"/>
								<wire x1="-142.875" y1="85.09" x2="-142.875" y2="43.815" width="0.3" layer="91"/>
								<wire x1="-128.905" y1="85.09" x2="-142.875" y2="85.09" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2A0"/>
							</segment>
						</net>
						<net name="ss1" class="0">
							<segment>
								<wire x1="-145.415" y1="-66.675" x2="-145.415" y2="-74.93" width="0.3" layer="91"/>
								<pinref part="RE3" gate="G$1" pin="E"/>
								<wire x1="-137.795" y1="-66.675" x2="-145.415" y2="-66.675" width="0.3" layer="91"/>
								<wire x1="-137.795" y1="82.55" x2="-137.795" y2="-66.675" width="0.3" layer="91"/>
								<wire x1="-128.905" y1="82.55" x2="-137.795" y2="82.55" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2A1"/>
							</segment>
						</net>
						<net name="ss2" class="0">
							<segment>
								<wire x1="-123.825" y1="-74.93" x2="-123.825" y2="-12.7" width="0.3" layer="91"/>
								<pinref part="RE4" gate="G$1" pin="E"/>
								<wire x1="-123.825" y1="-12.7" x2="-132.715" y2="-12.7" width="0.3" layer="91"/>
								<wire x1="-132.715" y1="-12.7" x2="-132.715" y2="80.01" width="0.3" layer="91"/>
								<wire x1="-132.715" y1="80.01" x2="-128.905" y2="80.01" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2A2"/>
							</segment>
						</net>
						<net name="ss3" class="0">
							<segment>
								<wire x1="-169.545" y1="-74.93" x2="-169.545" y2="-67.945" width="0.3" layer="91"/>
								<pinref part="RE2" gate="G$1" pin="E"/>
								<wire x1="-128.27" y1="-67.945" x2="-169.545" y2="-67.945" width="0.3" layer="91"/>
								<wire x1="-128.27" y1="-19.685" x2="-128.27" y2="-67.945" width="0.3" layer="91"/>
								<wire x1="-128.27" y1="-19.685" x2="-130.175" y2="-19.685" width="0.3" layer="91"/>
								<wire x1="-130.175" y1="-19.685" x2="-130.175" y2="77.47" width="0.3" layer="91"/>
								<wire x1="-130.175" y1="77.47" x2="-128.905" y2="77.47" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2A3"/>
							</segment>
						</net>
						<net name="Sig$260" class="0">
							<segment>
								<wire x1="-135.255" y1="69.85" x2="-128.905" y2="69.85" width="0.3" layer="91"/>
								<pinref part="PE3" gate="G$1" pin="PE2A6"/>
								<wire x1="-135.255" y1="62.23" x2="-135.255" y2="69.85" width="0.3" layer="91"/>
								<wire x1="-135.255" y1="62.23" x2="-63.5" y2="62.23" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="LED-"/>
							</segment>
							<segment>
								<wire x1="-104.14" y1="62.23" x2="-104.14" y2="62.23" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="5V" class="0">
							<segment>
								<wire x1="-27.94" y1="120.015" x2="-67.31" y2="120.015" width="0.3" layer="91"/>
								<pinref part="J1" gate="G$1" pin="S"/>
								<wire x1="-67.31" y1="135.255" x2="-67.31" y2="120.015" width="0.3" layer="91"/>
								<junction x="-67.31" y="120.015"/>
								<wire x1="-67.31" y1="120.015" x2="-67.31" y2="101.6" width="0.3" layer="91"/>
								<wire x1="-106.68" y1="135.255" x2="-67.31" y2="135.255" width="0.3" layer="91"/>
								<wire x1="-67.31" y1="101.6" x2="-67.31" y2="97.79" width="0.3" layer="91"/>
								<wire x1="-71.12" y1="101.6" x2="-67.31" y2="101.6" width="0.3" layer="91"/>
								<pinref part="R6" gate="G$1" pin="1"/>
								<junction x="-67.31" y="101.6"/>
								<wire x1="-106.68" y1="126.365" x2="-106.68" y2="135.255" width="0.3" layer="91"/>
								<pinref part="X1" gate="G$1" pin="IN"/>
								<wire x1="-106.68" y1="135.255" x2="-234.95" y2="135.255" width="0.3" layer="91"/>
								<junction x="-67.31" y="97.79"/>
								<wire x1="-67.31" y1="64.77" x2="-67.31" y2="97.79" width="0.3" layer="91"/>
								<wire x1="-67.31" y1="97.79" x2="-63.5" y2="97.79" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="Vdd"/>
								<wire x1="-234.95" y1="135.255" x2="-234.95" y2="79.375" width="0.3" layer="91"/>
								<wire x1="-63.5" y1="64.77" x2="-67.31" y2="64.77" width="0.3" layer="91"/>
								<pinref part="Display1" gate="G$1" pin="LED+"/>
								<wire x1="-239.395" y1="79.375" x2="-234.95" y2="79.375" width="0.3" layer="91"/>
								<pinref part="J3" gate="G$1" pin="3"/>
							</segment>
							<segment>
								<wire x1="-106.68" y1="132.715" x2="-106.68" y2="132.715" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$269" class="0">
							<segment>
								<wire x1="-239.395" y1="81.915" x2="-227.965" y2="81.915" width="0.3" layer="91"/>
								<pinref part="J3" gate="G$1" pin="4"/>
								<wire x1="-227.965" y1="81.915" x2="-227.965" y2="108.585" width="0.3" layer="91"/>
								<wire x1="-227.965" y1="108.585" x2="-164.465" y2="108.585" width="0.3" layer="91"/>
								<wire x1="-164.465" y1="108.585" x2="-164.465" y2="74.93" width="0.3" layer="91"/>
								<wire x1="-164.465" y1="74.93" x2="-175.26" y2="74.93" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="RxD"/>
							</segment>
						</net>
						<net name="ESP-RST" class="0">
							<segment>
								<wire x1="-182.88" y1="99.695" x2="-167.005" y2="99.695" width="0.3" layer="91"/>
								<pinref part="S2" gate="G$1" pin="2"/>
								<wire x1="-167.005" y1="55.88" x2="-167.005" y2="99.695" width="0.3" layer="91"/>
								<wire x1="-167.005" y1="55.88" x2="-180.34" y2="55.88" width="0.3" layer="91"/>
								<wire x1="-180.34" y1="55.88" x2="-180.34" y2="58.42" width="0.3" layer="91"/>
								<pinref part="IC2" gate="G$1" pin="Rst"/>
								<wire x1="-203.835" y1="55.88" x2="-180.34" y2="55.88" width="0.3" layer="91"/>
								<wire x1="-203.835" y1="64.135" x2="-203.835" y2="55.88" width="0.3" layer="91"/>
								<wire x1="-203.835" y1="64.135" x2="-210.82" y2="64.135" width="0.3" layer="91"/>
								<pinref part="R10" gate="G$1" pin="6"/>
							</segment>
						</net>
						<net name="LED-AP-OFF" class="0">
							<segment>
								<wire x1="-201.93" y1="25.4" x2="-229.235" y2="25.4" width="0.3" layer="91"/>
								<pinref part="SD1" gate="G$1" pin="4"/>
								<wire x1="-201.93" y1="25.4" x2="-201.93" y2="26.67" width="0.3" layer="91"/>
								<wire x1="-201.93" y1="26.67" x2="-171.45" y2="26.67" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B1"/>
							</segment>
						</net>
						<net name="LED-AP-ON" class="0">
							<segment>
								<wire x1="-207.01" y1="10.16" x2="-229.235" y2="10.16" width="0.3" layer="91"/>
								<pinref part="SD2" gate="G$1" pin="4"/>
								<wire x1="-207.01" y1="10.16" x2="-207.01" y2="21.59" width="0.3" layer="91"/>
								<wire x1="-207.01" y1="21.59" x2="-171.45" y2="21.59" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B3"/>
							</segment>
						</net>
						<net name="LED-AP-AUTP" class="0">
							<segment>
								<wire x1="-229.235" y1="-4.445" x2="-202.565" y2="-4.445" width="0.3" layer="91"/>
								<pinref part="SD3" gate="G$1" pin="4"/>
								<wire x1="-202.565" y1="-4.445" x2="-202.565" y2="16.51" width="0.3" layer="91"/>
								<wire x1="-202.565" y1="16.51" x2="-171.45" y2="16.51" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B5"/>
							</segment>
						</net>
						<net name="FLCH" class="0">
							<segment>
								<wire x1="-234.315" y1="-7.62" x2="-223.52" y2="-7.62" width="0.3" layer="91"/>
								<wire x1="-223.52" y1="-7.62" x2="-223.52" y2="13.97" width="0.3" layer="91"/>
								<wire x1="-234.315" y1="-12.065" x2="-234.315" y2="-7.62" width="0.3" layer="91"/>
								<pinref part="SD4" gate="G$1" pin="3"/>
								<wire x1="-223.52" y1="13.97" x2="-171.45" y2="13.97" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B6"/>
							</segment>
						</net>
						<net name="LED-FLCH" class="0">
							<segment>
								<wire x1="-196.85" y1="-19.685" x2="-229.235" y2="-19.685" width="0.3" layer="91"/>
								<pinref part="SD4" gate="G$1" pin="4"/>
								<wire x1="-196.85" y1="11.43" x2="-196.85" y2="-19.685" width="0.3" layer="91"/>
								<wire x1="-171.45" y1="11.43" x2="-196.85" y2="11.43" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B7"/>
							</segment>
						</net>
						<net name="LED-ATHR" class="0">
							<segment>
								<wire x1="-229.235" y1="-34.29" x2="-184.15" y2="-34.29" width="0.3" layer="91"/>
								<pinref part="SD5" gate="G$1" pin="4"/>
								<wire x1="-184.15" y1="-34.29" x2="-184.15" y2="-24.13" width="0.3" layer="91"/>
								<wire x1="-184.15" y1="-24.13" x2="-171.45" y2="-24.13" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B1"/>
							</segment>
						</net>
						<net name="ATHR" class="0">
							<segment>
								<wire x1="-234.315" y1="-24.765" x2="-187.325" y2="-24.765" width="0.3" layer="91"/>
								<wire x1="-187.325" y1="-24.765" x2="-187.325" y2="-21.59" width="0.3" layer="91"/>
								<wire x1="-234.315" y1="-26.67" x2="-234.315" y2="-24.765" width="0.3" layer="91"/>
								<pinref part="SD5" gate="G$1" pin="3"/>
								<wire x1="-187.325" y1="-21.59" x2="-171.45" y2="-21.59" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B0"/>
							</segment>
						</net>
						<net name="AP-AUTO" class="0">
							<segment>
								<wire x1="-205.105" y1="4.445" x2="-234.315" y2="4.445" width="0.3" layer="91"/>
								<wire x1="-234.315" y1="3.175" x2="-234.315" y2="4.445" width="0.3" layer="91"/>
								<pinref part="SD3" gate="G$1" pin="3"/>
								<wire x1="-205.105" y1="4.445" x2="-205.105" y2="19.05" width="0.3" layer="91"/>
								<wire x1="-205.105" y1="19.05" x2="-171.45" y2="19.05" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B4"/>
							</segment>
						</net>
						<net name="AP-ON" class="0">
							<segment>
								<wire x1="-234.315" y1="24.13" x2="-171.45" y2="24.13" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B2"/>
								<wire x1="-234.315" y1="24.13" x2="-234.315" y2="17.78" width="0.3" layer="91"/>
								<pinref part="SD2" gate="G$1" pin="3"/>
							</segment>
						</net>
						<net name="AP-OFF" class="0">
							<segment>
								<wire x1="-234.315" y1="34.29" x2="-171.45" y2="34.29" width="0.3" layer="91"/>
								<wire x1="-171.45" y1="34.29" x2="-171.45" y2="29.21" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2B0"/>
								<wire x1="-234.315" y1="33.02" x2="-234.315" y2="34.29" width="0.3" layer="91"/>
								<pinref part="SD1" gate="G$1" pin="3"/>
							</segment>
						</net>
						<net name="LOC" class="0">
							<segment>
								<wire x1="-234.315" y1="-40.64" x2="-191.77" y2="-40.64" width="0.3" layer="91"/>
								<wire x1="-191.77" y1="-40.64" x2="-191.77" y2="-39.37" width="0.3" layer="91"/>
								<wire x1="-234.315" y1="-41.98" x2="-234.315" y2="-40.64" width="0.3" layer="91"/>
								<pinref part="SD6" gate="G$1" pin="3"/>
								<wire x1="-191.77" y1="-39.37" x2="-181.61" y2="-39.37" width="0.3" layer="91"/>
								<wire x1="-234.315" y1="-41.91" x2="-234.315" y2="-41.98" width="0.3" layer="91"/>
								<wire x1="-181.61" y1="-39.37" x2="-181.61" y2="-26.67" width="0.3" layer="91"/>
								<wire x1="-181.61" y1="-26.67" x2="-171.45" y2="-26.67" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B2"/>
							</segment>
						</net>
						<net name="LED-LOC" class="0">
							<segment>
								<wire x1="-229.235" y1="-49.6" x2="-203.835" y2="-49.53" width="0.3" layer="91"/>
								<pinref part="SD6" gate="G$1" pin="4"/>
								<wire x1="-229.235" y1="-49.53" x2="-229.235" y2="-49.6" width="0.3" layer="91"/>
								<wire x1="-203.835" y1="-49.53" x2="-203.835" y2="-29.21" width="0.3" layer="91"/>
								<wire x1="-203.835" y1="-29.21" x2="-171.45" y2="-29.21" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2B3"/>
							</segment>
						</net>
						<net name="HDG" class="0">
							<segment>
								<wire x1="-100.965" y1="24.13" x2="-65.405" y2="24.13" width="0.3" layer="91"/>
								<wire x1="-65.405" y1="24.13" x2="-65.405" y2="25.4" width="0.3" layer="91"/>
								<pinref part="SD7" gate="G$1" pin="3"/>
								<wire x1="-100.965" y1="26.67" x2="-100.965" y2="24.13" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="26.67" x2="-100.965" y2="26.67" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A6"/>
							</segment>
						</net>
						<net name="LED-HDG" class="0">
							<segment>
								<wire x1="-103.505" y1="33.02" x2="-70.485" y2="33.02" width="0.3" layer="91"/>
								<pinref part="SD7" gate="G$1" pin="4"/>
								<wire x1="-103.505" y1="29.21" x2="-103.505" y2="33.02" width="0.3" layer="91"/>
								<wire x1="-146.05" y1="29.21" x2="-103.505" y2="29.21" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A7"/>
							</segment>
						</net>
						<net name="LED-VNAV" class="0">
							<segment>
								<wire x1="-70.485" y1="17.78" x2="-112.395" y2="17.78" width="0.3" layer="91"/>
								<pinref part="SD8" gate="G$1" pin="4"/>
								<wire x1="-112.395" y1="17.78" x2="-112.395" y2="24.13" width="0.3" layer="91"/>
								<wire x1="-112.395" y1="24.13" x2="-146.05" y2="24.13" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A5"/>
							</segment>
						</net>
						<net name="VNAV" class="0">
							<segment>
								<wire x1="-65.405" y1="8.89" x2="-115.57" y2="8.89" width="0.3" layer="91"/>
								<wire x1="-115.57" y1="8.89" x2="-115.57" y2="21.59" width="0.3" layer="91"/>
								<wire x1="-65.405" y1="10.16" x2="-65.405" y2="8.89" width="0.3" layer="91"/>
								<pinref part="SD8" gate="G$1" pin="3"/>
								<wire x1="-115.57" y1="21.59" x2="-146.05" y2="21.59" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A4"/>
							</segment>
						</net>
						<net name="LED-ALT" class="0">
							<segment>
								<wire x1="-70.485" y1="3.175" x2="-118.11" y2="3.175" width="0.3" layer="91"/>
								<pinref part="SD9" gate="G$1" pin="4"/>
								<wire x1="-118.11" y1="3.175" x2="-118.11" y2="19.05" width="0.3" layer="91"/>
								<wire x1="-118.11" y1="19.05" x2="-146.05" y2="19.05" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A3"/>
							</segment>
						</net>
						<net name="ALT" class="0">
							<segment>
								<wire x1="-65.405" y1="-5.715" x2="-121.285" y2="-5.715" width="0.3" layer="91"/>
								<wire x1="-121.285" y1="-5.715" x2="-121.285" y2="16.51" width="0.3" layer="91"/>
								<wire x1="-65.405" y1="-4.445" x2="-65.405" y2="-5.715" width="0.3" layer="91"/>
								<pinref part="SD9" gate="G$1" pin="3"/>
								<wire x1="-121.285" y1="16.51" x2="-146.05" y2="16.51" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A2"/>
							</segment>
						</net>
						<net name="LED-GS" class="0">
							<segment>
								<wire x1="-70.485" y1="-11.98" x2="-123.825" y2="-12.065" width="0.3" layer="91"/>
								<pinref part="SD10" gate="G$1" pin="4"/>
								<wire x1="-70.485" y1="-12.065" x2="-70.485" y2="-11.98" width="0.3" layer="91"/>
								<wire x1="-123.825" y1="-12.065" x2="-123.825" y2="13.97" width="0.3" layer="91"/>
								<wire x1="-123.825" y1="13.97" x2="-146.05" y2="13.97" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A1"/>
							</segment>
						</net>
						<net name="GS" class="0">
							<segment>
								<wire x1="-65.405" y1="-20.955" x2="-126.365" y2="-20.955" width="0.3" layer="91"/>
								<wire x1="-126.365" y1="-20.955" x2="-126.365" y2="11.43" width="0.3" layer="91"/>
								<wire x1="-65.405" y1="-19.685" x2="-65.405" y2="-20.955" width="0.3" layer="91"/>
								<pinref part="SD10" gate="G$1" pin="3"/>
								<wire x1="-126.365" y1="11.43" x2="-146.05" y2="11.43" width="0.3" layer="91"/>
								<pinref part="PE2" gate="G$1" pin="PE2A0"/>
							</segment>
						</net>
						<net name="LED-VS" class="0">
							<segment>
								<wire x1="-70.485" y1="-26.67" x2="-129.54" y2="-26.67" width="0.3" layer="91"/>
								<pinref part="SD11" gate="G$1" pin="4"/>
								<wire x1="-129.54" y1="-26.67" x2="-129.54" y2="-21.59" width="0.3" layer="91"/>
								<wire x1="-129.54" y1="-21.59" x2="-146.05" y2="-21.59" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A7"/>
							</segment>
						</net>
						<net name="VS" class="0">
							<segment>
								<wire x1="-65.405" y1="-34.925" x2="-132.08" y2="-34.925" width="0.3" layer="91"/>
								<wire x1="-132.08" y1="-34.925" x2="-132.08" y2="-24.13" width="0.3" layer="91"/>
								<wire x1="-65.405" y1="-34.29" x2="-65.405" y2="-34.925" width="0.3" layer="91"/>
								<pinref part="SD11" gate="G$1" pin="3"/>
								<wire x1="-132.08" y1="-24.13" x2="-146.05" y2="-24.13" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A6"/>
							</segment>
						</net>
						<net name="LED-BC" class="0">
							<segment>
								<wire x1="-70.485" y1="-41.98" x2="-112.395" y2="-41.91" width="0.3" layer="91"/>
								<pinref part="SD12" gate="G$1" pin="4"/>
								<wire x1="-70.485" y1="-41.91" x2="-70.485" y2="-41.98" width="0.3" layer="91"/>
								<wire x1="-112.395" y1="-41.91" x2="-112.395" y2="-39.37" width="0.3" layer="91"/>
								<wire x1="-112.395" y1="-39.37" x2="-134.62" y2="-39.37" width="0.3" layer="91"/>
								<wire x1="-134.62" y1="-39.37" x2="-134.62" y2="-26.67" width="0.3" layer="91"/>
								<wire x1="-134.62" y1="-26.67" x2="-146.05" y2="-26.67" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A5"/>
							</segment>
						</net>
						<net name="BC" class="0">
							<segment>
								<wire x1="-65.405" y1="-54.61" x2="-137.16" y2="-54.61" width="0.3" layer="91"/>
								<wire x1="-137.16" y1="-54.61" x2="-137.16" y2="-29.21" width="0.3" layer="91"/>
								<wire x1="-65.405" y1="-49.6" x2="-65.405" y2="-54.61" width="0.3" layer="91"/>
								<pinref part="SD12" gate="G$1" pin="3"/>
								<wire x1="-137.16" y1="-29.21" x2="-146.05" y2="-29.21" width="0.3" layer="91"/>
								<pinref part="PE1" gate="G$1" pin="PE2A4"/>
								<wire x1="-65.405" y1="-49.53" x2="-65.405" y2="-49.6" width="0.3" layer="91"/>
							</segment>
						</net>
					</nets>
				</sheet>
			</sheets>
		</schematic>
	</drawing>
</eagle>
