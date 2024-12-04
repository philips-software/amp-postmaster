<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.3">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
<library name="ic">
<packages>
<package name="TQFP100">
<description>&lt;b&gt;PLASTIC 100-PIN TQFP&lt;/b&gt; (PZ)&lt;p&gt;
Auto generated by &lt;i&gt;make-symbol-device-package-bsdl.ulp Rev. 19&lt;/i&gt;&lt;br&gt;
Source: http://focus.ti.com/docs/prod/folders/print/msp430fg4618.html</description>
<wire x1="-6.9984" y1="6.5" x2="-6.5" y2="6.9984" width="0.2032" layer="21"/>
<wire x1="-6.9984" y1="-6.9984" x2="6.9984" y2="-6.9984" width="0.2032" layer="21"/>
<wire x1="6.9984" y1="-6.9984" x2="6.9984" y2="6.9984" width="0.2032" layer="21"/>
<wire x1="6.9984" y1="6.9984" x2="-6.9984" y2="6.9984" width="0.2032" layer="21"/>
<wire x1="-6.9984" y1="6.9984" x2="-6.9984" y2="-6.9984" width="0.2032" layer="21"/>
<text x="-8.1" y="8.735" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.1" y="-10.005" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-8.1" y1="5.865" x2="-7.1" y2="6.135" layer="51"/>
<rectangle x1="-8.1" y1="5.365" x2="-7.1" y2="5.635" layer="51"/>
<rectangle x1="-8.1" y1="4.865" x2="-7.1" y2="5.135" layer="51"/>
<rectangle x1="-8.1" y1="4.365" x2="-7.1" y2="4.635" layer="51"/>
<rectangle x1="-8.1" y1="3.865" x2="-7.1" y2="4.135" layer="51"/>
<rectangle x1="-8.1" y1="3.365" x2="-7.1" y2="3.635" layer="51"/>
<rectangle x1="-8.1" y1="2.865" x2="-7.1" y2="3.135" layer="51"/>
<rectangle x1="-8.1" y1="2.365" x2="-7.1" y2="2.635" layer="51"/>
<rectangle x1="-8.1" y1="1.865" x2="-7.1" y2="2.135" layer="51"/>
<rectangle x1="-8.1" y1="1.365" x2="-7.1" y2="1.635" layer="51"/>
<rectangle x1="-8.1" y1="0.865" x2="-7.1" y2="1.135" layer="51"/>
<rectangle x1="-8.1" y1="0.365" x2="-7.1" y2="0.635" layer="51"/>
<rectangle x1="-8.1" y1="-0.135" x2="-7.1" y2="0.135" layer="51"/>
<rectangle x1="-8.1" y1="-0.635" x2="-7.1" y2="-0.365" layer="51"/>
<rectangle x1="-8.1" y1="-1.135" x2="-7.1" y2="-0.865" layer="51"/>
<rectangle x1="-8.1" y1="-1.635" x2="-7.1" y2="-1.365" layer="51"/>
<rectangle x1="-8.1" y1="-2.135" x2="-7.1" y2="-1.865" layer="51"/>
<rectangle x1="-8.1" y1="-2.635" x2="-7.1" y2="-2.365" layer="51"/>
<rectangle x1="-8.1" y1="-3.135" x2="-7.1" y2="-2.865" layer="51"/>
<rectangle x1="-8.1" y1="-3.635" x2="-7.1" y2="-3.365" layer="51"/>
<rectangle x1="-8.1" y1="-4.135" x2="-7.1" y2="-3.865" layer="51"/>
<rectangle x1="-8.1" y1="-4.635" x2="-7.1" y2="-4.365" layer="51"/>
<rectangle x1="-8.1" y1="-5.135" x2="-7.1" y2="-4.865" layer="51"/>
<rectangle x1="-8.1" y1="-5.635" x2="-7.1" y2="-5.365" layer="51"/>
<rectangle x1="-8.1" y1="-6.135" x2="-7.1" y2="-5.865" layer="51"/>
<rectangle x1="-6.135" y1="-8.1" x2="-5.865" y2="-7.1" layer="51"/>
<rectangle x1="-5.635" y1="-8.1" x2="-5.365" y2="-7.1" layer="51"/>
<rectangle x1="-5.135" y1="-8.1" x2="-4.865" y2="-7.1" layer="51"/>
<rectangle x1="-4.635" y1="-8.1" x2="-4.365" y2="-7.1" layer="51"/>
<rectangle x1="-4.135" y1="-8.1" x2="-3.865" y2="-7.1" layer="51"/>
<rectangle x1="-3.635" y1="-8.1" x2="-3.365" y2="-7.1" layer="51"/>
<rectangle x1="-3.135" y1="-8.1" x2="-2.865" y2="-7.1" layer="51"/>
<rectangle x1="-2.635" y1="-8.1" x2="-2.365" y2="-7.1" layer="51"/>
<rectangle x1="-2.135" y1="-8.1" x2="-1.865" y2="-7.1" layer="51"/>
<rectangle x1="-1.635" y1="-8.1" x2="-1.365" y2="-7.1" layer="51"/>
<rectangle x1="-1.135" y1="-8.1" x2="-0.865" y2="-7.1" layer="51"/>
<rectangle x1="-0.635" y1="-8.1" x2="-0.365" y2="-7.1" layer="51"/>
<rectangle x1="-0.135" y1="-8.1" x2="0.135" y2="-7.1" layer="51"/>
<rectangle x1="0.365" y1="-8.1" x2="0.635" y2="-7.1" layer="51"/>
<rectangle x1="0.865" y1="-8.1" x2="1.135" y2="-7.1" layer="51"/>
<rectangle x1="1.365" y1="-8.1" x2="1.635" y2="-7.1" layer="51"/>
<rectangle x1="1.865" y1="-8.1" x2="2.135" y2="-7.1" layer="51"/>
<rectangle x1="2.365" y1="-8.1" x2="2.635" y2="-7.1" layer="51"/>
<rectangle x1="2.865" y1="-8.1" x2="3.135" y2="-7.1" layer="51"/>
<rectangle x1="3.365" y1="-8.1" x2="3.635" y2="-7.1" layer="51"/>
<rectangle x1="3.865" y1="-8.1" x2="4.135" y2="-7.1" layer="51"/>
<rectangle x1="4.365" y1="-8.1" x2="4.635" y2="-7.1" layer="51"/>
<rectangle x1="4.865" y1="-8.1" x2="5.135" y2="-7.1" layer="51"/>
<rectangle x1="5.365" y1="-8.1" x2="5.635" y2="-7.1" layer="51"/>
<rectangle x1="5.865" y1="-8.1" x2="6.135" y2="-7.1" layer="51"/>
<rectangle x1="7.1" y1="-6.135" x2="8.1" y2="-5.865" layer="51"/>
<rectangle x1="7.1" y1="-5.635" x2="8.1" y2="-5.365" layer="51"/>
<rectangle x1="7.1" y1="-5.135" x2="8.1" y2="-4.865" layer="51"/>
<rectangle x1="7.1" y1="-4.635" x2="8.1" y2="-4.365" layer="51"/>
<rectangle x1="7.1" y1="-4.135" x2="8.1" y2="-3.865" layer="51"/>
<rectangle x1="7.1" y1="-3.635" x2="8.1" y2="-3.365" layer="51"/>
<rectangle x1="7.1" y1="-3.135" x2="8.1" y2="-2.865" layer="51"/>
<rectangle x1="7.1" y1="-2.635" x2="8.1" y2="-2.365" layer="51"/>
<rectangle x1="7.1" y1="-2.135" x2="8.1" y2="-1.865" layer="51"/>
<rectangle x1="7.1" y1="-1.635" x2="8.1" y2="-1.365" layer="51"/>
<rectangle x1="7.1" y1="-1.135" x2="8.1" y2="-0.865" layer="51"/>
<rectangle x1="7.1" y1="-0.635" x2="8.1" y2="-0.365" layer="51"/>
<rectangle x1="7.1" y1="-0.135" x2="8.1" y2="0.135" layer="51"/>
<rectangle x1="7.1" y1="0.365" x2="8.1" y2="0.635" layer="51"/>
<rectangle x1="7.1" y1="0.865" x2="8.1" y2="1.135" layer="51"/>
<rectangle x1="7.1" y1="1.365" x2="8.1" y2="1.635" layer="51"/>
<rectangle x1="7.1" y1="1.865" x2="8.1" y2="2.135" layer="51"/>
<rectangle x1="7.1" y1="2.365" x2="8.1" y2="2.635" layer="51"/>
<rectangle x1="7.1" y1="2.865" x2="8.1" y2="3.135" layer="51"/>
<rectangle x1="7.1" y1="3.365" x2="8.1" y2="3.635" layer="51"/>
<rectangle x1="7.1" y1="3.865" x2="8.1" y2="4.135" layer="51"/>
<rectangle x1="7.1" y1="4.365" x2="8.1" y2="4.635" layer="51"/>
<rectangle x1="7.1" y1="4.865" x2="8.1" y2="5.135" layer="51"/>
<rectangle x1="7.1" y1="5.365" x2="8.1" y2="5.635" layer="51"/>
<rectangle x1="7.1" y1="5.865" x2="8.1" y2="6.135" layer="51"/>
<rectangle x1="5.865" y1="7.1" x2="6.135" y2="8.1" layer="51"/>
<rectangle x1="5.365" y1="7.1" x2="5.635" y2="8.1" layer="51"/>
<rectangle x1="4.865" y1="7.1" x2="5.135" y2="8.1" layer="51"/>
<rectangle x1="4.365" y1="7.1" x2="4.635" y2="8.1" layer="51"/>
<rectangle x1="3.865" y1="7.1" x2="4.135" y2="8.1" layer="51"/>
<rectangle x1="3.365" y1="7.1" x2="3.635" y2="8.1" layer="51"/>
<rectangle x1="2.865" y1="7.1" x2="3.135" y2="8.1" layer="51"/>
<rectangle x1="2.365" y1="7.1" x2="2.635" y2="8.1" layer="51"/>
<rectangle x1="1.865" y1="7.1" x2="2.135" y2="8.1" layer="51"/>
<rectangle x1="1.365" y1="7.1" x2="1.635" y2="8.1" layer="51"/>
<rectangle x1="0.865" y1="7.1" x2="1.135" y2="8.1" layer="51"/>
<rectangle x1="0.365" y1="7.1" x2="0.635" y2="8.1" layer="51"/>
<rectangle x1="-0.135" y1="7.1" x2="0.135" y2="8.1" layer="51"/>
<rectangle x1="-0.635" y1="7.1" x2="-0.365" y2="8.1" layer="51"/>
<rectangle x1="-1.135" y1="7.1" x2="-0.865" y2="8.1" layer="51"/>
<rectangle x1="-1.635" y1="7.1" x2="-1.365" y2="8.1" layer="51"/>
<rectangle x1="-2.135" y1="7.1" x2="-1.865" y2="8.1" layer="51"/>
<rectangle x1="-2.635" y1="7.1" x2="-2.365" y2="8.1" layer="51"/>
<rectangle x1="-3.135" y1="7.1" x2="-2.865" y2="8.1" layer="51"/>
<rectangle x1="-3.635" y1="7.1" x2="-3.365" y2="8.1" layer="51"/>
<rectangle x1="-4.135" y1="7.1" x2="-3.865" y2="8.1" layer="51"/>
<rectangle x1="-4.635" y1="7.1" x2="-4.365" y2="8.1" layer="51"/>
<rectangle x1="-5.135" y1="7.1" x2="-4.865" y2="8.1" layer="51"/>
<rectangle x1="-5.635" y1="7.1" x2="-5.365" y2="8.1" layer="51"/>
<rectangle x1="-6.135" y1="7.1" x2="-5.865" y2="8.1" layer="51"/>
<rectangle x1="-8.1" y1="5.365" x2="-7.1" y2="5.635" layer="51"/>
<rectangle x1="-8.1" y1="4.865" x2="-7.1" y2="5.135" layer="51"/>
<rectangle x1="-8.1" y1="4.365" x2="-7.1" y2="4.635" layer="51"/>
<rectangle x1="-8.1" y1="3.865" x2="-7.1" y2="4.135" layer="51"/>
<smd name="1" x="-8" y="6" dx="1.4" dy="0.28" layer="1"/>
<smd name="2" x="-8" y="5.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="3" x="-8" y="5" dx="1.4" dy="0.28" layer="1"/>
<smd name="4" x="-8" y="4.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="5" x="-8" y="4" dx="1.4" dy="0.28" layer="1"/>
<smd name="6" x="-8" y="3.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="7" x="-8" y="3" dx="1.4" dy="0.28" layer="1"/>
<smd name="8" x="-8" y="2.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="9" x="-8" y="2" dx="1.4" dy="0.28" layer="1"/>
<smd name="10" x="-8" y="1.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="11" x="-8" y="1" dx="1.4" dy="0.28" layer="1"/>
<smd name="12" x="-8" y="0.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="13" x="-8" y="0" dx="1.4" dy="0.28" layer="1"/>
<smd name="14" x="-8" y="-0.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="15" x="-8" y="-1" dx="1.4" dy="0.28" layer="1"/>
<smd name="16" x="-8" y="-1.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="17" x="-8" y="-2" dx="1.4" dy="0.28" layer="1"/>
<smd name="18" x="-8" y="-2.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="19" x="-8" y="-3" dx="1.4" dy="0.28" layer="1"/>
<smd name="20" x="-8" y="-3.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="21" x="-8" y="-4" dx="1.4" dy="0.28" layer="1"/>
<smd name="22" x="-8" y="-4.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="23" x="-8" y="-5" dx="1.4" dy="0.28" layer="1"/>
<smd name="24" x="-8" y="-5.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="25" x="-8" y="-6" dx="1.4" dy="0.28" layer="1"/>
<smd name="26" x="-6" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="27" x="-5.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="28" x="-5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="29" x="-4.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="30" x="-4" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="31" x="-3.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="32" x="-3" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="33" x="-2.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="34" x="-2" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="35" x="-1.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="36" x="-1" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="37" x="-0.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="38" x="0" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="39" x="0.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="40" x="1" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="41" x="1.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="42" x="2" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="43" x="2.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="44" x="3" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="45" x="3.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="46" x="4" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="47" x="4.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="48" x="5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="49" x="5.5" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="50" x="6" y="-8" dx="0.28" dy="1.4" layer="1"/>
<smd name="75" x="8" y="6" dx="1.4" dy="0.28" layer="1"/>
<smd name="74" x="8" y="5.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="73" x="8" y="5" dx="1.4" dy="0.28" layer="1"/>
<smd name="72" x="8" y="4.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="71" x="8" y="4" dx="1.4" dy="0.28" layer="1"/>
<smd name="70" x="8" y="3.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="69" x="8" y="3" dx="1.4" dy="0.28" layer="1"/>
<smd name="68" x="8" y="2.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="67" x="8" y="2" dx="1.4" dy="0.28" layer="1"/>
<smd name="66" x="8" y="1.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="65" x="8" y="1" dx="1.4" dy="0.28" layer="1"/>
<smd name="64" x="8" y="0.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="63" x="8" y="0" dx="1.4" dy="0.28" layer="1"/>
<smd name="62" x="8" y="-0.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="61" x="8" y="-1" dx="1.4" dy="0.28" layer="1"/>
<smd name="60" x="8" y="-1.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="59" x="8" y="-2" dx="1.4" dy="0.28" layer="1"/>
<smd name="58" x="8" y="-2.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="57" x="8" y="-3" dx="1.4" dy="0.28" layer="1"/>
<smd name="56" x="8" y="-3.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="55" x="8" y="-4" dx="1.4" dy="0.28" layer="1"/>
<smd name="54" x="8" y="-4.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="53" x="8" y="-5" dx="1.4" dy="0.28" layer="1"/>
<smd name="52" x="8" y="-5.5" dx="1.4" dy="0.28" layer="1"/>
<smd name="51" x="8" y="-6" dx="1.4" dy="0.28" layer="1"/>
<smd name="100" x="-6" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="99" x="-5.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="98" x="-5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="97" x="-4.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="96" x="-4" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="95" x="-3.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="94" x="-3" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="93" x="-2.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="92" x="-2" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="91" x="-1.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="90" x="-1" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="89" x="-0.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="88" x="0" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="87" x="0.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="86" x="1" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="85" x="1.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="84" x="2" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="83" x="2.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="82" x="3" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="81" x="3.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="80" x="4" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="79" x="4.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="78" x="5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="77" x="5.5" y="8" dx="0.28" dy="1.4" layer="1"/>
<smd name="76" x="6" y="8" dx="0.28" dy="1.4" layer="1"/>
<wire x1="-8.75" y1="3.75" x2="-9.5" y2="3.75" width="0.127" layer="21"/>
<wire x1="-8.75" y1="1.25" x2="-10" y2="1.25" width="0.127" layer="21"/>
<wire x1="-8.75" y1="-1.25" x2="-9.5" y2="-1.25" width="0.127" layer="21"/>
<wire x1="-8.75" y1="-3.75" x2="-10" y2="-3.75" width="0.127" layer="21"/>
<wire x1="-3.75" y1="-8.75" x2="-3.75" y2="-9.5" width="0.127" layer="21"/>
<wire x1="-1.25" y1="-8.75" x2="-1.25" y2="-10" width="0.127" layer="21"/>
<wire x1="1.25" y1="-8.75" x2="1.25" y2="-9.5" width="0.127" layer="21"/>
<wire x1="3.75" y1="-8.75" x2="3.75" y2="-10" width="0.127" layer="21"/>
<wire x1="8.75" y1="-3.75" x2="9.5" y2="-3.75" width="0.127" layer="21"/>
<wire x1="8.75" y1="-1.25" x2="10" y2="-1.25" width="0.127" layer="21"/>
<wire x1="8.75" y1="1.25" x2="9.5" y2="1.25" width="0.127" layer="21"/>
<wire x1="8.75" y1="3.75" x2="10" y2="3.75" width="0.127" layer="21"/>
<wire x1="3.75" y1="8.75" x2="3.75" y2="9.5" width="0.127" layer="21"/>
<wire x1="1.25" y1="8.75" x2="1.25" y2="10" width="0.127" layer="21"/>
<wire x1="-1.25" y1="8.75" x2="-1.25" y2="9.5" width="0.127" layer="21"/>
<wire x1="-3.75" y1="8.75" x2="-3.75" y2="10" width="0.127" layer="21"/>
</package>
<package name="SOIC-8">
<wire x1="-2.921" y1="3.937" x2="2.921" y2="3.937" width="0.0508" layer="39"/>
<wire x1="2.921" y1="3.937" x2="2.921" y2="-3.937" width="0.0508" layer="39"/>
<wire x1="2.921" y1="-3.937" x2="-2.921" y2="-3.937" width="0.0508" layer="39"/>
<wire x1="-2.921" y1="-3.937" x2="-2.921" y2="3.937" width="0.0508" layer="39"/>
<wire x1="2.4511" y1="1.9558" x2="2.4511" y2="-1.9558" width="0.2032" layer="21"/>
<wire x1="2.4511" y1="-1.9558" x2="-2.4511" y2="-1.9558" width="0.2032" layer="21"/>
<wire x1="-2.4511" y1="-1.9558" x2="-2.4511" y2="1.9558" width="0.2032" layer="21"/>
<wire x1="-2.4511" y1="1.9558" x2="2.4511" y2="1.9558" width="0.2032" layer="21"/>
<smd name="2" x="-0.635" y="-2.8575" dx="0.5842" dy="1.651" layer="1"/>
<smd name="7" x="-0.635" y="2.8575" dx="0.5842" dy="1.651" layer="1"/>
<smd name="1" x="-1.905" y="-2.8575" dx="0.5842" dy="1.651" layer="1"/>
<smd name="3" x="0.635" y="-2.8575" dx="0.5842" dy="1.651" layer="1"/>
<smd name="4" x="1.905" y="-2.8575" dx="0.5842" dy="1.651" layer="1"/>
<smd name="8" x="-1.905" y="2.8575" dx="0.5842" dy="1.651" layer="1"/>
<smd name="6" x="0.635" y="2.8575" dx="0.5842" dy="1.651" layer="1"/>
<smd name="5" x="1.905" y="2.8575" dx="0.5842" dy="1.651" layer="1"/>
<text x="-2.667" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1209" y1="1.9558" x2="-1.6891" y2="3.175" layer="51"/>
<rectangle x1="-0.8509" y1="1.9558" x2="-0.4191" y2="3.175" layer="51"/>
<rectangle x1="0.4191" y1="1.9558" x2="0.8509" y2="3.175" layer="51"/>
<rectangle x1="1.6891" y1="1.9558" x2="2.1209" y2="3.175" layer="51"/>
<rectangle x1="-2.1209" y1="-3.1242" x2="-1.6891" y2="-1.905" layer="51"/>
<rectangle x1="-0.8509" y1="-3.1242" x2="-0.4191" y2="-1.905" layer="51"/>
<rectangle x1="0.4191" y1="-3.1242" x2="0.8509" y2="-1.905" layer="51"/>
<rectangle x1="1.6891" y1="-3.1242" x2="2.1209" y2="-1.905" layer="51"/>
<circle x="-1.5875" y="-0.9525" radius="0.381" width="0.127" layer="21"/>
</package>
<package name="DISPLAY_128_32_SSD1306">
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="0" width="0.1524" layer="21"/>
<pad name="SDA" x="-3.81" y="0" drill="1" rot="R90" first="yes"/>
<pad name="SCK" x="-1.27" y="0" drill="1" rot="R90"/>
<pad name="VCC" x="1.27" y="0" drill="1" rot="R90"/>
<pad name="GND" x="3.81" y="0" drill="1" rot="R90"/>
<text x="-3.23" y="-2.75" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="5.08" y1="0" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="38.1" width="0.127" layer="21"/>
<wire x1="-5.08" y1="38.1" x2="5.08" y2="38.1" width="0.127" layer="21"/>
<wire x1="5.08" y1="38.1" x2="5.08" y2="0" width="0.127" layer="21"/>
</package>
<package name="QFN32">
<smd name="17" x="1.75" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="18" x="1.25" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="19" x="0.75" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="20" x="0.25" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="21" x="-0.25" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="22" x="-0.75" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="23" x="-1.25" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="24" x="-1.75" y="2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="8" x="1.75" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="7" x="1.25" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="6" x="0.75" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="5" x="0.25" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="4" x="-0.25" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="3" x="-0.75" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="2" x="-1.25" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="1" x="-1.75" y="-2.75" dx="0.26" dy="1.23" layer="1"/>
<smd name="25" x="-2.75" y="1.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="26" x="-2.75" y="1.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="27" x="-2.75" y="0.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="28" x="-2.75" y="0.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="29" x="-2.75" y="-0.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="30" x="-2.75" y="-0.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="31" x="-2.75" y="-1.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="32" x="-2.75" y="-1.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="16" x="2.75" y="1.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="15" x="2.75" y="1.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="14" x="2.75" y="0.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="13" x="2.75" y="0.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="12" x="2.75" y="-0.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="11" x="2.75" y="-0.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="10" x="2.75" y="-1.25" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<smd name="9" x="2.75" y="-1.75" dx="0.26" dy="1.23" layer="1" rot="R90"/>
<wire x1="-2.5" y1="2.5" x2="-2.5" y2="2" width="0.127" layer="21"/>
<wire x1="-2.5" y1="2.5" x2="-2" y2="2.5" width="0.127" layer="21"/>
<wire x1="2" y1="2.5" x2="2.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="2" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2" x2="2.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="2" y1="-2.5" x2="2.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-2.5" x2="-2" y2="-2.5" width="0.127" layer="21"/>
<circle x="-2.25" y="-2.25" radius="0.25" width="0.127" layer="21"/>
<circle x="-2.25" y="-2.25" radius="0.15" width="0.127" layer="21"/>
<pad name="EP" x="0" y="0" drill="2"/>
<polygon width="0.127" layer="41">
<vertex x="-1.905" y="1.5875"/>
<vertex x="-1.5875" y="1.5875"/>
<vertex x="-1.5875" y="1.905"/>
<vertex x="-1.27" y="1.905"/>
<vertex x="-1.27" y="1.27"/>
<vertex x="-1.905" y="1.27"/>
</polygon>
</package>
<package name="SM77H">
<description>&lt;b&gt;3.3V CMOS Clock Oscillator&lt;/b&gt;&lt;p&gt;
Source: www.pletronics.com .. sm77h%203.3v.pdf</description>
<wire x1="-3.4" y1="-2.4" x2="3.4" y2="-2.4" width="0.2032" layer="51"/>
<wire x1="3.4" y1="-2.4" x2="3.4" y2="2.4" width="0.2032" layer="51"/>
<wire x1="3.4" y1="2.4" x2="-3.4" y2="2.4" width="0.2032" layer="51"/>
<wire x1="-3.4" y1="2.4" x2="-3.4" y2="-2.4" width="0.2032" layer="51"/>
<wire x1="-1.368" y1="-2.4" x2="1.368" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="0.876" x2="-3.4" y2="-0.876" width="0.2032" layer="21"/>
<wire x1="1.368" y1="2.4" x2="-1.368" y2="2.4" width="0.2032" layer="21"/>
<wire x1="3.4" y1="-0.876" x2="3.4" y2="0.876" width="0.2032" layer="21"/>
<circle x="-2.794" y="-0.762" radius="0.254" width="0" layer="21"/>
<smd name="1" x="-2.54" y="-2.54" dx="2.54" dy="1.6" layer="1" rot="R90"/>
<smd name="2" x="2.54" y="-2.54" dx="2.54" dy="1.6" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="2.54" dx="2.54" dy="1.6" layer="1" rot="R270"/>
<smd name="4" x="-2.54" y="2.54" dx="2.54" dy="1.6" layer="1" rot="R270"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" font="vector" rot="R90">&gt;NAME</text>
<text x="-2.286" y="-0.508" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="SOIC8-WIDE">
<wire x1="-2.921" y1="3.937" x2="2.921" y2="3.937" width="0.0508" layer="39"/>
<wire x1="2.921" y1="3.937" x2="2.921" y2="-3.937" width="0.0508" layer="39"/>
<wire x1="2.921" y1="-3.937" x2="-2.921" y2="-3.937" width="0.0508" layer="39"/>
<wire x1="-2.921" y1="-3.937" x2="-2.921" y2="3.937" width="0.0508" layer="39"/>
<wire x1="2.4511" y1="1.9558" x2="2.4511" y2="-1.9558" width="0.2032" layer="21"/>
<wire x1="2.4511" y1="-1.9558" x2="-2.4511" y2="-1.9558" width="0.2032" layer="21"/>
<wire x1="-2.4511" y1="-1.9558" x2="-2.4511" y2="1.9558" width="0.2032" layer="21"/>
<wire x1="-2.4511" y1="1.9558" x2="2.4511" y2="1.9558" width="0.2032" layer="21"/>
<smd name="2" x="-0.635" y="-3.4925" dx="0.5842" dy="3.302" layer="1"/>
<smd name="7" x="-0.635" y="3.4925" dx="0.5842" dy="3.302" layer="1"/>
<smd name="1" x="-1.905" y="-3.4925" dx="0.5842" dy="3.302" layer="1"/>
<smd name="3" x="0.635" y="-3.4925" dx="0.5842" dy="3.302" layer="1"/>
<smd name="4" x="1.905" y="-3.4925" dx="0.5842" dy="3.302" layer="1"/>
<smd name="8" x="-1.905" y="3.4925" dx="0.5842" dy="3.302" layer="1"/>
<smd name="6" x="0.635" y="3.4925" dx="0.5842" dy="3.302" layer="1"/>
<smd name="5" x="1.905" y="3.4925" dx="0.5842" dy="3.302" layer="1"/>
<text x="-2.667" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1209" y1="1.9558" x2="-1.6891" y2="3.175" layer="51"/>
<rectangle x1="-0.8509" y1="1.9558" x2="-0.4191" y2="3.175" layer="51"/>
<rectangle x1="0.4191" y1="1.9558" x2="0.8509" y2="3.175" layer="51"/>
<rectangle x1="1.6891" y1="1.9558" x2="2.1209" y2="3.175" layer="51"/>
<rectangle x1="-2.1209" y1="-3.1242" x2="-1.6891" y2="-1.905" layer="51"/>
<rectangle x1="-0.8509" y1="-3.1242" x2="-0.4191" y2="-1.905" layer="51"/>
<rectangle x1="0.4191" y1="-3.1242" x2="0.8509" y2="-1.905" layer="51"/>
<rectangle x1="1.6891" y1="-3.1242" x2="2.1209" y2="-1.905" layer="51"/>
<circle x="-1.5875" y="-0.9525" radius="0.381" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="STM32F407">
<wire x1="-25.4" y1="60.96" x2="22.86" y2="60.96" width="0.254" layer="94"/>
<wire x1="22.86" y1="60.96" x2="22.86" y2="-68.58" width="0.254" layer="94"/>
<wire x1="22.86" y1="-68.58" x2="-25.4" y2="-68.58" width="0.254" layer="94"/>
<wire x1="-25.4" y1="-68.58" x2="-25.4" y2="60.96" width="0.254" layer="94"/>
<pin name="PA0" x="-30.48" y="58.42" length="middle" swaplevel="1"/>
<pin name="PA1" x="-30.48" y="55.88" length="middle" swaplevel="1"/>
<pin name="PA2" x="-30.48" y="53.34" length="middle" swaplevel="1"/>
<pin name="PA3" x="-30.48" y="50.8" length="middle" swaplevel="1"/>
<pin name="PA4" x="-30.48" y="48.26" length="middle" swaplevel="1"/>
<pin name="PA5" x="-30.48" y="45.72" length="middle" swaplevel="1"/>
<pin name="PA6" x="-30.48" y="43.18" length="middle" swaplevel="1"/>
<pin name="PA7" x="-30.48" y="40.64" length="middle" swaplevel="1"/>
<pin name="PA8" x="-30.48" y="38.1" length="middle" swaplevel="1"/>
<pin name="PA9" x="-30.48" y="35.56" length="middle" swaplevel="1"/>
<pin name="PA10" x="-30.48" y="33.02" length="middle" swaplevel="1"/>
<pin name="PA11" x="-30.48" y="30.48" length="middle" swaplevel="1"/>
<pin name="PA12" x="-30.48" y="27.94" length="middle" swaplevel="1"/>
<pin name="PA13-SWDIO" x="-30.48" y="25.4" length="middle" swaplevel="1"/>
<pin name="PA14-SWCLK" x="-30.48" y="22.86" length="middle" swaplevel="1"/>
<pin name="PA15" x="-30.48" y="20.32" length="middle" swaplevel="1"/>
<pin name="PB0" x="-30.48" y="15.24" length="middle" swaplevel="1"/>
<pin name="PB1" x="-30.48" y="12.7" length="middle" swaplevel="1"/>
<pin name="PB2" x="-30.48" y="10.16" length="middle" swaplevel="1"/>
<pin name="PB3-TRACESWO" x="-30.48" y="7.62" length="middle" swaplevel="1"/>
<pin name="PB4" x="-30.48" y="5.08" length="middle" swaplevel="1"/>
<pin name="PB5" x="-30.48" y="2.54" length="middle" swaplevel="1"/>
<pin name="PB6" x="-30.48" y="0" length="middle" swaplevel="1"/>
<pin name="PB7" x="-30.48" y="-2.54" length="middle" swaplevel="1"/>
<pin name="PB8" x="-30.48" y="-5.08" length="middle" swaplevel="1"/>
<pin name="PB9" x="-30.48" y="-7.62" length="middle" swaplevel="1"/>
<pin name="PB14" x="-30.48" y="-20.32" length="middle" swaplevel="1"/>
<pin name="PB15" x="-30.48" y="-22.86" length="middle" swaplevel="1"/>
<pin name="PB10" x="-30.48" y="-10.16" length="middle" swaplevel="1"/>
<pin name="PC0" x="-30.48" y="-27.94" length="middle" swaplevel="1"/>
<pin name="PC1" x="-30.48" y="-30.48" length="middle" swaplevel="1"/>
<pin name="PC2" x="-30.48" y="-33.02" length="middle" swaplevel="1"/>
<pin name="PC3" x="-30.48" y="-35.56" length="middle" swaplevel="1"/>
<pin name="PC4" x="-30.48" y="-38.1" length="middle" swaplevel="1"/>
<pin name="PC5" x="-30.48" y="-40.64" length="middle" swaplevel="1"/>
<pin name="PC6" x="-30.48" y="-43.18" length="middle" swaplevel="1"/>
<pin name="PC7" x="-30.48" y="-45.72" length="middle" swaplevel="1"/>
<pin name="PC8" x="-30.48" y="-48.26" length="middle" swaplevel="1"/>
<pin name="PC9" x="-30.48" y="-50.8" length="middle" swaplevel="1"/>
<pin name="PC10" x="-30.48" y="-53.34" length="middle" swaplevel="1"/>
<pin name="PC11" x="-30.48" y="-55.88" length="middle" swaplevel="1"/>
<pin name="PC12" x="-30.48" y="-58.42" length="middle" swaplevel="1"/>
<pin name="PC13" x="-30.48" y="-60.96" length="middle" swaplevel="1"/>
<pin name="PC14_OSC32_IN" x="-30.48" y="-63.5" length="middle" swaplevel="1"/>
<pin name="PD0" x="27.94" y="58.42" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD1" x="27.94" y="55.88" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD2" x="27.94" y="53.34" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD3" x="27.94" y="50.8" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD4" x="27.94" y="48.26" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD5" x="27.94" y="45.72" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD6" x="27.94" y="43.18" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD7" x="27.94" y="40.64" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD8" x="27.94" y="38.1" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD9" x="27.94" y="35.56" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD10" x="27.94" y="33.02" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD11" x="27.94" y="30.48" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD12" x="27.94" y="27.94" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD13" x="27.94" y="25.4" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD14" x="27.94" y="22.86" length="middle" swaplevel="1" rot="R180"/>
<pin name="PD15" x="27.94" y="20.32" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE0" x="27.94" y="15.24" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE1" x="27.94" y="12.7" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE2" x="27.94" y="10.16" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE3" x="27.94" y="7.62" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE4" x="27.94" y="5.08" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE5" x="27.94" y="2.54" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE6" x="27.94" y="0" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE7" x="27.94" y="-2.54" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE8" x="27.94" y="-5.08" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE9" x="27.94" y="-7.62" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE10" x="27.94" y="-10.16" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE11" x="27.94" y="-12.7" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE12" x="27.94" y="-15.24" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE13" x="27.94" y="-17.78" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE14" x="27.94" y="-20.32" length="middle" swaplevel="1" rot="R180"/>
<pin name="PE15" x="27.94" y="-22.86" length="middle" swaplevel="1" rot="R180"/>
<pin name="PH0" x="27.94" y="-27.94" length="middle" swaplevel="1" rot="R180"/>
<pin name="PH1" x="27.94" y="-30.48" length="middle" swaplevel="1" rot="R180"/>
<pin name="VCAP1" x="27.94" y="-43.18" length="middle" swaplevel="1" rot="R180"/>
<pin name="VCAP2" x="27.94" y="-45.72" length="middle" swaplevel="1" rot="R180"/>
<pin name="BOOT0" x="27.94" y="-38.1" length="middle" direction="in" rot="R180"/>
<pin name="!RESET!" x="27.94" y="-35.56" length="middle" direction="in" rot="R180"/>
<pin name="VREF+" x="27.94" y="-50.8" length="middle" direction="in" rot="R180"/>
<pin name="PC15_OSC32_OUT" x="-30.48" y="-66.04" length="middle" swaplevel="1"/>
<pin name="VBAT" x="27.94" y="-53.34" length="middle" direction="in" rot="R180"/>
<pin name="PB11" x="-30.48" y="-12.7" length="middle" swaplevel="1"/>
<pin name="PB12" x="-30.48" y="-15.24" length="middle" swaplevel="1"/>
<pin name="PB13" x="-30.48" y="-17.78" length="middle" swaplevel="1"/>
</symbol>
<symbol name="STM32F407-POWER">
<pin name="+3.3V@5" x="5.08" y="66.04" length="middle" direction="pwr" rot="R270"/>
<pin name="+3.3V@1" x="-15.24" y="66.04" length="middle" direction="pwr" rot="R270"/>
<pin name="+3.3V@2" x="-10.16" y="66.04" length="middle" direction="pwr" rot="R270"/>
<pin name="+3.3V@3" x="-5.08" y="66.04" length="middle" direction="pwr" rot="R270"/>
<pin name="0V@1" x="-10.16" y="-73.66" length="middle" direction="pwr" rot="R90"/>
<pin name="0V@3" x="0" y="-73.66" length="middle" direction="pwr" rot="R90"/>
<pin name="0V@A" x="10.16" y="-73.66" length="middle" direction="pwr" rot="R90"/>
<pin name="+3.3V@4" x="0" y="66.04" length="middle" direction="pwr" rot="R270"/>
<pin name="0V@2" x="-5.08" y="-73.66" length="middle" direction="pwr" rot="R90"/>
<pin name="+3.3V@6" x="10.16" y="66.04" length="middle" direction="pwr" rot="R270"/>
<pin name="0V@4" x="5.08" y="-73.66" length="middle" direction="pwr" rot="R90"/>
<pin name="+3.3V@A" x="15.24" y="66.04" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="SPIFLASH">
<wire x1="-10.16" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<pin name="SCK" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="SDI" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="SDO" x="-15.24" y="0" length="middle" direction="out"/>
<pin name="!SS!" x="-15.24" y="-5.08" length="middle" direction="in"/>
<pin name="!HOLD!" x="15.24" y="0" length="middle" direction="pas" rot="R180"/>
<pin name="!WP!" x="15.24" y="-2.54" length="middle" direction="pas" rot="R180"/>
<text x="-10.16" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="SPIFLASH-POWER">
<pin name="+3.3V" x="0" y="12.7" length="middle" direction="pwr" rot="R270"/>
<pin name="0V" x="0" y="-10.16" length="middle" direction="pwr" rot="R90"/>
</symbol>
<symbol name="DISPLAY_SSD1306">
<pin name="GND" x="0" y="-10.16" visible="pin" length="short" direction="pwr" rot="R90"/>
<pin name="VDD" x="0" y="10.16" visible="pin" length="short" direction="pwr" rot="R270"/>
<pin name="SCK" x="12.7" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="SDA" x="12.7" y="0" visible="pin" length="short" rot="R180"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="-10.16" size="1.27" layer="95">&gt;NAME</text>
<text x="2.54" y="-10.16" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="LAN8710A">
<pin name="TXCLK" x="-30.48" y="27.94" length="short"/>
<pin name="TXEN" x="-30.48" y="25.4" length="short"/>
<pin name="TXD1" x="-30.48" y="20.32" length="short"/>
<pin name="TXD2" x="-30.48" y="17.78" length="short"/>
<pin name="TXD0" x="-30.48" y="22.86" length="short"/>
<pin name="TXD3" x="-30.48" y="15.24" length="short"/>
<pin name="RXCLK/PHYAD1" x="-30.48" y="10.16" length="short"/>
<pin name="RXD0/MODE0" x="-30.48" y="7.62" length="short"/>
<pin name="RXD1/MODE1" x="-30.48" y="5.08" length="short"/>
<pin name="RXD2/RMIISEL" x="-30.48" y="2.54" length="short"/>
<pin name="RXD3/PHYAD2" x="-30.48" y="0" length="short"/>
<pin name="COL/CRS_DV/MODE2" x="-30.48" y="-5.08" length="short"/>
<pin name="CRS" x="-30.48" y="-7.62" length="short"/>
<pin name="!RST!" x="-30.48" y="-12.7" length="short"/>
<pin name="!INT!/TXER/TXD4" x="-30.48" y="-15.24" length="short"/>
<pin name="RXERR/RXD4/PHYAD0" x="-30.48" y="-20.32" length="short"/>
<pin name="MDIO" x="-30.48" y="-27.94" length="short"/>
<pin name="XTAL1/CLKIN" x="-30.48" y="-35.56" length="short"/>
<pin name="XTAL2" x="-30.48" y="-38.1" length="short"/>
<pin name="TXP" x="22.86" y="27.94" length="short" rot="R180"/>
<pin name="TXN" x="22.86" y="25.4" length="short" rot="R180"/>
<pin name="RXP" x="22.86" y="22.86" length="short" rot="R180"/>
<pin name="RXN" x="22.86" y="20.32" length="short" rot="R180"/>
<pin name="LED1/REGOFF" x="22.86" y="15.24" length="short" rot="R180"/>
<pin name="LED2/!INTSEL!" x="22.86" y="12.7" length="short" rot="R180"/>
<pin name="RBIAS" x="22.86" y="7.62" length="short" rot="R180"/>
<pin name="VDDCR" x="-7.62" y="35.56" length="short" direction="pwr" rot="R270"/>
<pin name="VDDIO" x="-5.08" y="35.56" length="short" direction="pwr" rot="R270"/>
<pin name="VDD1A" x="-2.54" y="35.56" length="short" direction="pwr" rot="R270"/>
<pin name="VDD2A" x="0" y="35.56" length="short" direction="pwr" rot="R270"/>
<pin name="MDC" x="-30.48" y="-30.48" length="short"/>
<pin name="RXDV" x="-30.48" y="-22.86" length="short"/>
<pin name="GND_EP" x="-2.54" y="-45.72" length="short" direction="pwr" rot="R90"/>
<wire x1="-27.94" y1="33.02" x2="-27.94" y2="-43.18" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-43.18" x2="20.32" y2="-43.18" width="0.254" layer="94"/>
<wire x1="20.32" y1="-43.18" x2="20.32" y2="33.02" width="0.254" layer="94"/>
<wire x1="20.32" y1="33.02" x2="-27.94" y2="33.02" width="0.254" layer="94"/>
<text x="-25.4" y="-45.72" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-45.72" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="SM77H">
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-1.778" y1="-2.286" x2="-0.762" y2="-2.286" width="0.1016" layer="94"/>
<wire x1="-0.762" y1="-2.286" x2="-0.762" y2="-1.397" width="0.1016" layer="94"/>
<wire x1="-0.762" y1="-2.286" x2="-0.762" y2="-3.175" width="0.1016" layer="94"/>
<wire x1="-0.254" y1="-1.651" x2="0.254" y2="-1.651" width="0.1016" layer="94"/>
<wire x1="0.254" y1="-1.651" x2="0.254" y2="-2.921" width="0.1016" layer="94"/>
<wire x1="0.254" y1="-2.921" x2="-0.254" y2="-2.921" width="0.1016" layer="94"/>
<wire x1="-0.254" y1="-2.921" x2="-0.254" y2="-1.651" width="0.1016" layer="94"/>
<wire x1="1.778" y1="-2.286" x2="0.762" y2="-2.286" width="0.1016" layer="94"/>
<wire x1="0.762" y1="-2.286" x2="0.762" y2="-3.175" width="0.1016" layer="94"/>
<wire x1="0.762" y1="-2.286" x2="0.762" y2="-1.397" width="0.1016" layer="94"/>
<text x="-7.62" y="6.35" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<pin name="EN" x="-10.16" y="0" length="short" direction="in"/>
<pin name="OUT" x="10.16" y="0" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="SM77H-POWER">
<pin name="+3.3V" x="0" y="7.62" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="0V" x="0" y="-7.62" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F407" prefix="IC">
<gates>
<gate name="G$1" symbol="STM32F407" x="0" y="0"/>
<gate name="G$2" symbol="STM32F407-POWER" x="0" y="0" addlevel="request"/>
</gates>
<devices>
<device name="" package="TQFP100">
<connects>
<connect gate="G$1" pin="!RESET!" pad="14"/>
<connect gate="G$1" pin="BOOT0" pad="94"/>
<connect gate="G$1" pin="PA0" pad="23"/>
<connect gate="G$1" pin="PA1" pad="24"/>
<connect gate="G$1" pin="PA10" pad="69"/>
<connect gate="G$1" pin="PA11" pad="70"/>
<connect gate="G$1" pin="PA12" pad="71"/>
<connect gate="G$1" pin="PA13-SWDIO" pad="72"/>
<connect gate="G$1" pin="PA14-SWCLK" pad="76"/>
<connect gate="G$1" pin="PA15" pad="77"/>
<connect gate="G$1" pin="PA2" pad="25"/>
<connect gate="G$1" pin="PA3" pad="26"/>
<connect gate="G$1" pin="PA4" pad="29"/>
<connect gate="G$1" pin="PA5" pad="30"/>
<connect gate="G$1" pin="PA6" pad="31"/>
<connect gate="G$1" pin="PA7" pad="32"/>
<connect gate="G$1" pin="PA8" pad="67"/>
<connect gate="G$1" pin="PA9" pad="68"/>
<connect gate="G$1" pin="PB0" pad="35"/>
<connect gate="G$1" pin="PB1" pad="36"/>
<connect gate="G$1" pin="PB10" pad="47"/>
<connect gate="G$1" pin="PB11" pad="48"/>
<connect gate="G$1" pin="PB12" pad="51"/>
<connect gate="G$1" pin="PB13" pad="52"/>
<connect gate="G$1" pin="PB14" pad="53"/>
<connect gate="G$1" pin="PB15" pad="54"/>
<connect gate="G$1" pin="PB2" pad="37"/>
<connect gate="G$1" pin="PB3-TRACESWO" pad="89"/>
<connect gate="G$1" pin="PB4" pad="90"/>
<connect gate="G$1" pin="PB5" pad="91"/>
<connect gate="G$1" pin="PB6" pad="92"/>
<connect gate="G$1" pin="PB7" pad="93"/>
<connect gate="G$1" pin="PB8" pad="95"/>
<connect gate="G$1" pin="PB9" pad="96"/>
<connect gate="G$1" pin="PC0" pad="15"/>
<connect gate="G$1" pin="PC1" pad="16"/>
<connect gate="G$1" pin="PC10" pad="78"/>
<connect gate="G$1" pin="PC11" pad="79"/>
<connect gate="G$1" pin="PC12" pad="80"/>
<connect gate="G$1" pin="PC13" pad="7"/>
<connect gate="G$1" pin="PC14_OSC32_IN" pad="8"/>
<connect gate="G$1" pin="PC15_OSC32_OUT" pad="9"/>
<connect gate="G$1" pin="PC2" pad="17"/>
<connect gate="G$1" pin="PC3" pad="18"/>
<connect gate="G$1" pin="PC4" pad="33"/>
<connect gate="G$1" pin="PC5" pad="34"/>
<connect gate="G$1" pin="PC6" pad="63"/>
<connect gate="G$1" pin="PC7" pad="64"/>
<connect gate="G$1" pin="PC8" pad="65"/>
<connect gate="G$1" pin="PC9" pad="66"/>
<connect gate="G$1" pin="PD0" pad="81"/>
<connect gate="G$1" pin="PD1" pad="82"/>
<connect gate="G$1" pin="PD10" pad="57"/>
<connect gate="G$1" pin="PD11" pad="58"/>
<connect gate="G$1" pin="PD12" pad="59"/>
<connect gate="G$1" pin="PD13" pad="60"/>
<connect gate="G$1" pin="PD14" pad="61"/>
<connect gate="G$1" pin="PD15" pad="62"/>
<connect gate="G$1" pin="PD2" pad="83"/>
<connect gate="G$1" pin="PD3" pad="84"/>
<connect gate="G$1" pin="PD4" pad="85"/>
<connect gate="G$1" pin="PD5" pad="86"/>
<connect gate="G$1" pin="PD6" pad="87"/>
<connect gate="G$1" pin="PD7" pad="88"/>
<connect gate="G$1" pin="PD8" pad="55"/>
<connect gate="G$1" pin="PD9" pad="56"/>
<connect gate="G$1" pin="PE0" pad="97"/>
<connect gate="G$1" pin="PE1" pad="98"/>
<connect gate="G$1" pin="PE10" pad="41"/>
<connect gate="G$1" pin="PE11" pad="42"/>
<connect gate="G$1" pin="PE12" pad="43"/>
<connect gate="G$1" pin="PE13" pad="44"/>
<connect gate="G$1" pin="PE14" pad="45"/>
<connect gate="G$1" pin="PE15" pad="46"/>
<connect gate="G$1" pin="PE2" pad="1"/>
<connect gate="G$1" pin="PE3" pad="2"/>
<connect gate="G$1" pin="PE4" pad="3"/>
<connect gate="G$1" pin="PE5" pad="4"/>
<connect gate="G$1" pin="PE6" pad="5"/>
<connect gate="G$1" pin="PE7" pad="38"/>
<connect gate="G$1" pin="PE8" pad="39"/>
<connect gate="G$1" pin="PE9" pad="40"/>
<connect gate="G$1" pin="PH0" pad="12"/>
<connect gate="G$1" pin="PH1" pad="13"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCAP1" pad="49"/>
<connect gate="G$1" pin="VCAP2" pad="73"/>
<connect gate="G$1" pin="VREF+" pad="21"/>
<connect gate="G$2" pin="+3.3V@1" pad="11"/>
<connect gate="G$2" pin="+3.3V@2" pad="19"/>
<connect gate="G$2" pin="+3.3V@3" pad="28"/>
<connect gate="G$2" pin="+3.3V@4" pad="50"/>
<connect gate="G$2" pin="+3.3V@5" pad="75"/>
<connect gate="G$2" pin="+3.3V@6" pad="100"/>
<connect gate="G$2" pin="+3.3V@A" pad="22"/>
<connect gate="G$2" pin="0V@1" pad="10"/>
<connect gate="G$2" pin="0V@2" pad="27"/>
<connect gate="G$2" pin="0V@3" pad="74"/>
<connect gate="G$2" pin="0V@4" pad="99"/>
<connect gate="G$2" pin="0V@A" pad="20"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="S25FL116K" prefix="IC">
<gates>
<gate name="SPIFLASH" symbol="SPIFLASH" x="0" y="0"/>
<gate name="POWER" symbol="SPIFLASH-POWER" x="0" y="-2.54" addlevel="request"/>
</gates>
<devices>
<device name="" package="SOIC-8">
<connects>
<connect gate="POWER" pin="+3.3V" pad="8"/>
<connect gate="POWER" pin="0V" pad="4"/>
<connect gate="SPIFLASH" pin="!HOLD!" pad="7"/>
<connect gate="SPIFLASH" pin="!SS!" pad="1"/>
<connect gate="SPIFLASH" pin="!WP!" pad="3"/>
<connect gate="SPIFLASH" pin="SCK" pad="6"/>
<connect gate="SPIFLASH" pin="SDI" pad="5"/>
<connect gate="SPIFLASH" pin="SDO" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="W" package="SOIC8-WIDE">
<connects>
<connect gate="POWER" pin="+3.3V" pad="8"/>
<connect gate="POWER" pin="0V" pad="4"/>
<connect gate="SPIFLASH" pin="!HOLD!" pad="7"/>
<connect gate="SPIFLASH" pin="!SS!" pad="1"/>
<connect gate="SPIFLASH" pin="!WP!" pad="3"/>
<connect gate="SPIFLASH" pin="SCK" pad="6"/>
<connect gate="SPIFLASH" pin="SDI" pad="5"/>
<connect gate="SPIFLASH" pin="SDO" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DISPLAY_32_128_SSD1306" prefix="IC">
<gates>
<gate name="G$1" symbol="DISPLAY_SSD1306" x="-2.54" y="2.54"/>
</gates>
<devices>
<device name="" package="DISPLAY_128_32_SSD1306">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VDD" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LAN8710A">
<gates>
<gate name="G$1" symbol="LAN8710A" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="QFN32">
<connects>
<connect gate="G$1" pin="!INT!/TXER/TXD4" pad="18"/>
<connect gate="G$1" pin="!RST!" pad="19"/>
<connect gate="G$1" pin="COL/CRS_DV/MODE2" pad="15"/>
<connect gate="G$1" pin="CRS" pad="14"/>
<connect gate="G$1" pin="GND_EP" pad="EP"/>
<connect gate="G$1" pin="LED1/REGOFF" pad="3"/>
<connect gate="G$1" pin="LED2/!INTSEL!" pad="2"/>
<connect gate="G$1" pin="MDC" pad="17"/>
<connect gate="G$1" pin="MDIO" pad="16"/>
<connect gate="G$1" pin="RBIAS" pad="32"/>
<connect gate="G$1" pin="RXCLK/PHYAD1" pad="7"/>
<connect gate="G$1" pin="RXD0/MODE0" pad="11"/>
<connect gate="G$1" pin="RXD1/MODE1" pad="10"/>
<connect gate="G$1" pin="RXD2/RMIISEL" pad="9"/>
<connect gate="G$1" pin="RXD3/PHYAD2" pad="8"/>
<connect gate="G$1" pin="RXDV" pad="26"/>
<connect gate="G$1" pin="RXERR/RXD4/PHYAD0" pad="13"/>
<connect gate="G$1" pin="RXN" pad="30"/>
<connect gate="G$1" pin="RXP" pad="31"/>
<connect gate="G$1" pin="TXCLK" pad="20"/>
<connect gate="G$1" pin="TXD0" pad="22"/>
<connect gate="G$1" pin="TXD1" pad="23"/>
<connect gate="G$1" pin="TXD2" pad="24"/>
<connect gate="G$1" pin="TXD3" pad="25"/>
<connect gate="G$1" pin="TXEN" pad="21"/>
<connect gate="G$1" pin="TXN" pad="28"/>
<connect gate="G$1" pin="TXP" pad="29"/>
<connect gate="G$1" pin="VDD1A" pad="27"/>
<connect gate="G$1" pin="VDD2A" pad="1"/>
<connect gate="G$1" pin="VDDCR" pad="6"/>
<connect gate="G$1" pin="VDDIO" pad="12"/>
<connect gate="G$1" pin="XTAL1/CLKIN" pad="5"/>
<connect gate="G$1" pin="XTAL2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SM77H" prefix="IC">
<description>&lt;b&gt;3.3V CMOS Clock Oscillator&lt;/b&gt;&lt;p&gt;
Source: www.pletronics.com .. sm77h%203.3v.pdf</description>
<gates>
<gate name="G$1" symbol="SM77H" x="0" y="0"/>
<gate name="G$2" symbol="SM77H-POWER" x="0" y="0" addlevel="request"/>
</gates>
<devices>
<device name="" package="SM77H">
<connects>
<connect gate="G$1" pin="EN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
<connect gate="G$2" pin="+3.3V" pad="4"/>
<connect gate="G$2" pin="0V" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="header">
<packages>
<package name="IDC-10_2">
<wire x1="-1.9" y1="-3.32" x2="-1.9" y2="-4.03" width="0.2032" layer="21"/>
<wire x1="1.9" y1="-3.32" x2="1.9" y2="-4.03" width="0.2032" layer="21"/>
<wire x1="-13.85" y1="-1.97" x2="-13.15" y2="-3.04" width="0.4064" layer="21"/>
<wire x1="-13.15" y1="-3.04" x2="-12.45" y2="-1.97" width="0.4064" layer="21"/>
<wire x1="-12.45" y1="-1.97" x2="-13.85" y2="-1.97" width="0.4064" layer="21"/>
<wire x1="-16.56" y1="-4.1" x2="-16.56" y2="4.1" width="0.2032" layer="21"/>
<wire x1="-16.56" y1="-4.1" x2="16.56" y2="-4.1" width="0.2032" layer="21"/>
<wire x1="16.56" y1="-4.1" x2="16.56" y2="4.1" width="0.2032" layer="21"/>
<wire x1="16.56" y1="4.1" x2="-16.56" y2="4.1" width="0.2032" layer="21"/>
<wire x1="-15.76" y1="-3.3" x2="-15.76" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-15.76" y1="3.3" x2="15.76" y2="3.3" width="0.2032" layer="21"/>
<wire x1="15.76" y1="3.3" x2="15.76" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="15.76" y1="-3.3" x2="1.9" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-1.9" y1="-3.3" x2="-15.76" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-16.56" y1="4.1" x2="-15.76" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-16.56" y1="-4.1" x2="-15.76" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="16.56" y1="4.1" x2="15.76" y2="3.3" width="0.2032" layer="21"/>
<wire x1="15.76" y1="-3.3" x2="16.56" y2="-4.1" width="0.2032" layer="21"/>
<pad name="1" x="-11.43" y="-1.27" drill="1"/>
<pad name="2" x="-11.43" y="1.27" drill="1"/>
<pad name="3" x="-8.89" y="-1.27" drill="1"/>
<pad name="4" x="-8.89" y="1.27" drill="1"/>
<pad name="5" x="-6.35" y="-1.27" drill="1"/>
<pad name="6" x="-6.35" y="1.27" drill="1"/>
<pad name="7" x="-3.81" y="-1.27" drill="1"/>
<pad name="8" x="-3.81" y="1.27" drill="1"/>
<pad name="9" x="-1.27" y="-1.27" drill="1"/>
<pad name="10" x="-1.27" y="1.27" drill="1"/>
<pad name="11" x="1.27" y="-1.27" drill="1"/>
<pad name="12" x="1.27" y="1.27" drill="1"/>
<pad name="13" x="3.81" y="-1.27" drill="1"/>
<pad name="14" x="3.81" y="1.27" drill="1"/>
<pad name="15" x="6.35" y="-1.27" drill="1"/>
<pad name="16" x="6.35" y="1.27" drill="1"/>
<pad name="17" x="8.89" y="-1.27" drill="1"/>
<pad name="18" x="8.89" y="1.27" drill="1"/>
<pad name="19" x="11.43" y="-1.27" drill="1"/>
<pad name="20" x="11.43" y="1.27" drill="1"/>
</package>
<package name="NUCLEO-TOPLEFT">
<wire x1="3.81" y1="8.255" x2="3.81" y2="6.985" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.175" y2="6.35" width="0.1524" layer="21"/>
<wire x1="3.175" y1="6.35" x2="3.81" y2="5.715" width="0.1524" layer="21"/>
<wire x1="3.81" y1="5.715" x2="3.81" y2="4.445" width="0.1524" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.175" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="8.255" x2="3.175" y2="8.89" width="0.1524" layer="21"/>
<wire x1="3.175" y1="3.81" x2="3.81" y2="3.175" width="0.1524" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.175" x2="3.175" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-3.81" x2="3.81" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-4.445" x2="3.81" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-5.715" x2="3.175" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="6.35" x2="-1.27" y2="6.985" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.1524" layer="21"/>
<wire x1="3.175" y1="8.89" x2="-0.635" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="8.89" x2="-1.27" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-3.81" x2="-1.27" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.175" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-6.35" x2="-1.27" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-5.715" x2="-1.27" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-4.445" x2="-0.635" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-8.255" x2="3.175" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-6.985" x2="3.81" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-6.35" x2="3.81" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-6.985" x2="-0.635" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-8.255" x2="-1.27" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-8.89" x2="-1.27" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-9.525" x2="3.81" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-10.795" x2="3.175" y2="-11.43" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-9.525" x2="3.175" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-11.43" x2="-1.27" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-8.89" x2="-1.27" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-10.795" x2="-1.27" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-11.43" x2="-0.635" y2="-11.43" width="0.1524" layer="21"/>
<pad name="NC1" x="2.54" y="7.62" drill="1" shape="octagon" rot="R270" first="yes"/>
<pad name="IOREF" x="2.54" y="5.08" drill="1" rot="R270"/>
<pad name="RESET" x="2.54" y="2.54" drill="1" rot="R270"/>
<pad name="+3V3" x="2.54" y="0" drill="1" rot="R270"/>
<pad name="+5V" x="2.54" y="-2.54" drill="1" rot="R270"/>
<pad name="GND1" x="2.54" y="-5.08" drill="1" rot="R270"/>
<pad name="PC8" x="0" y="7.62" drill="1" rot="R270"/>
<pad name="PC9" x="0" y="5.08" drill="1" rot="R270"/>
<pad name="PC10" x="0" y="2.54" drill="1" rot="R270"/>
<pad name="PC11" x="0" y="0" drill="1" rot="R270"/>
<pad name="PC12" x="0" y="-2.54" drill="1" rot="R270"/>
<pad name="PD2" x="0" y="-5.08" drill="1" rot="R270"/>
<pad name="GND2" x="2.54" y="-7.62" drill="1" rot="R270"/>
<pad name="PG2" x="0" y="-7.62" drill="1" rot="R270"/>
<pad name="VIN" x="2.54" y="-10.16" drill="1" rot="R270"/>
<pad name="PG3" x="0" y="-10.16" drill="1" rot="R270"/>
<pad name="VDD" x="10.16" y="12.7" drill="1" rot="R270"/>
<pad name="BOOT0" x="10.16" y="10.16" drill="1" rot="R270"/>
<pad name="PF6" x="10.16" y="7.62" drill="1" rot="R270"/>
<pad name="PF7" x="10.16" y="5.08" drill="1" rot="R270"/>
<wire x1="11.43" y1="13.335" x2="10.795" y2="13.97" width="0.1524" layer="21"/>
<wire x1="11.43" y1="13.335" x2="11.43" y2="12.065" width="0.1524" layer="21"/>
<wire x1="11.43" y1="12.065" x2="10.795" y2="11.43" width="0.1524" layer="21"/>
<wire x1="11.43" y1="10.795" x2="11.43" y2="9.525" width="0.1524" layer="21"/>
<wire x1="11.43" y1="9.525" x2="10.795" y2="8.89" width="0.1524" layer="21"/>
<wire x1="10.795" y1="8.89" x2="11.43" y2="8.255" width="0.1524" layer="21"/>
<wire x1="11.43" y1="8.255" x2="11.43" y2="6.985" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="10.795" y2="6.35" width="0.1524" layer="21"/>
<wire x1="11.43" y1="10.795" x2="10.795" y2="11.43" width="0.1524" layer="21"/>
<wire x1="10.795" y1="6.35" x2="11.43" y2="5.715" width="0.1524" layer="21"/>
<wire x1="11.43" y1="5.715" x2="11.43" y2="4.445" width="0.1524" layer="21"/>
<wire x1="10.795" y1="13.97" x2="9.525" y2="13.97" width="0.1524" layer="21"/>
<wire x1="9.525" y1="13.97" x2="8.89" y2="13.335" width="0.1524" layer="21"/>
<wire x1="9.525" y1="11.43" x2="8.89" y2="12.065" width="0.1524" layer="21"/>
<wire x1="8.89" y1="12.065" x2="8.89" y2="13.335" width="0.1524" layer="21"/>
<wire x1="9.525" y1="8.89" x2="8.89" y2="9.525" width="0.1524" layer="21"/>
<wire x1="9.525" y1="6.35" x2="8.89" y2="6.985" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="8.255" width="0.1524" layer="21"/>
<wire x1="8.89" y1="8.255" x2="9.525" y2="8.89" width="0.1524" layer="21"/>
<wire x1="9.525" y1="11.43" x2="8.89" y2="10.795" width="0.1524" layer="21"/>
<wire x1="8.89" y1="9.525" x2="8.89" y2="10.795" width="0.1524" layer="21"/>
<wire x1="8.89" y1="4.445" x2="8.89" y2="5.715" width="0.1524" layer="21"/>
<wire x1="8.89" y1="5.715" x2="9.525" y2="6.35" width="0.1524" layer="21"/>
<wire x1="11.43" y1="4.445" x2="10.795" y2="3.81" width="0.1524" layer="21"/>
<wire x1="9.525" y1="3.81" x2="8.89" y2="4.445" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.81" x2="9.525" y2="3.81" width="0.1524" layer="21"/>
<pad name="STLINK_RX" x="-5.08" y="27.94" drill="1" rot="R270"/>
<pad name="STLINK_TX" x="-5.08" y="30.48" drill="1" rot="R270"/>
<wire x1="-4.445" y1="31.75" x2="-5.715" y2="31.75" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="26.67" x2="-5.715" y2="26.67" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="29.845" x2="-6.35" y2="31.115" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="31.115" x2="-3.81" y2="29.845" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="28.575" x2="-3.81" y2="27.305" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="27.305" x2="-6.35" y2="28.575" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="31.75" x2="-6.35" y2="31.115" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="29.21" x2="-6.35" y2="28.575" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="31.115" x2="-4.445" y2="31.75" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="28.575" x2="-4.445" y2="29.21" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="29.21" x2="-6.35" y2="29.845" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="26.67" x2="-6.35" y2="27.305" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="27.305" x2="-4.445" y2="26.67" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="29.845" x2="-4.445" y2="29.21" width="0.1524" layer="21"/>
</package>
<package name="ETHERNET">
<wire x1="8.128" y1="-10.795" x2="-8.128" y2="-10.795" width="0.2032" layer="21"/>
<wire x1="-8.128" y1="-10.795" x2="-8.128" y2="-4.8" width="0.2032" layer="21"/>
<wire x1="-8.128" y1="-4.8" x2="-8.128" y2="-1.3" width="0.2032" layer="51"/>
<wire x1="-8.128" y1="-1.3" x2="-8.128" y2="10.795" width="0.2032" layer="21"/>
<wire x1="-8.128" y1="10.795" x2="8.128" y2="10.795" width="0.2032" layer="21"/>
<wire x1="8.128" y1="10.795" x2="8.128" y2="-1.29" width="0.2032" layer="21"/>
<wire x1="8.128" y1="-4.79" x2="8.128" y2="-10.795" width="0.2032" layer="21"/>
<wire x1="8.128" y1="-4.8" x2="8.128" y2="-1.3" width="0.2032" layer="51"/>
<pad name="1" x="4.445" y="-6.35" drill="0.9" rot="R180"/>
<pad name="2" x="3.175" y="-8.89" drill="0.9" rot="R180"/>
<pad name="3" x="1.905" y="-6.35" drill="0.9" rot="R180"/>
<pad name="4" x="0.635" y="-8.89" drill="0.9" rot="R180"/>
<pad name="5" x="-0.635" y="-6.35" drill="0.9" rot="R180"/>
<pad name="6" x="-1.905" y="-8.89" drill="0.9" rot="R180"/>
<pad name="7" x="-3.175" y="-6.35" drill="0.9" rot="R180"/>
<pad name="8" x="-4.445" y="-8.89" drill="0.9" rot="R180"/>
<pad name="C1" x="3.7846" y="3.3782" drill="1.2" rot="R180"/>
<pad name="A1" x="6.3246" y="4.9022" drill="1.2" rot="R180"/>
<pad name="C2" x="-6.3246" y="3.3782" drill="1.2" rot="R180"/>
<pad name="A2" x="-3.7846" y="4.9022" drill="1.2" rot="R180"/>
<pad name="S1" x="7.874" y="-3.05" drill="1.6" rot="R180"/>
<pad name="S2" x="-7.874" y="-3.05" drill="1.6" rot="R180"/>
<text x="7.62" y="-11.43" size="1.27" layer="25" rot="R180">&gt;NAME</text>
<text x="6.35" y="8.89" size="1.27" layer="27" rot="R180">&gt;VALUE</text>
<hole x="5.715" y="0" drill="3.25"/>
<hole x="-5.715" y="0" drill="3.25"/>
</package>
<package name="HEADER-MALE-3">
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1" shape="octagon" rot="R90" first="yes"/>
<pad name="2" x="-1.27" y="0" drill="1" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="HEADER-MALE-10-2">
<wire x1="-3.81" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="10.16" x2="-2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="2.54" y1="5.08" x2="1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="2.54" y1="7.62" x2="1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="2.54" y1="10.16" x2="1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="2.54" y1="2.54" x2="1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-7.62" x2="-2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="3.81" y1="-15.24" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="-3.81" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-15.24" x2="-3.81" y2="-15.24" width="0.4064" layer="94"/>
<pin name="1" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="18" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="20" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="2.54" y1="-10.16" x2="1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-12.7" x2="1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-10.16" x2="-2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-12.7" x2="-2.54" y2="-12.7" width="0.6096" layer="94"/>
</symbol>
<symbol name="HEADER-MALE-4">
<wire x1="1.27" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="0" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<pin name="1" x="5.08" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="HEADER-MALE-8-2">
<wire x1="-3.81" y1="10.16" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="2.54" y1="2.54" x2="1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="2.54" y1="5.08" x2="1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="2.54" y1="7.62" x2="1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-10.16" x2="-2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-7.62" x2="-2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="3.81" y1="-12.7" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="-3.81" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-12.7" x2="-3.81" y2="-12.7" width="0.4064" layer="94"/>
<pin name="1" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="ETHERNET">
<wire x1="-12.7" y1="20.32" x2="-8.255" y2="20.32" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="27.94" x2="-8.255" y2="27.94" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="35.56" x2="-8.255" y2="35.56" width="0.1524" layer="94"/>
<wire x1="-8.255" y1="27.94" x2="-8.255" y2="30.48" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.255" y1="30.48" x2="-8.255" y2="33.02" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.255" y1="33.02" x2="-8.255" y2="35.56" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.255" y1="25.4" x2="-8.255" y2="27.94" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.255" y1="22.86" x2="-8.255" y2="25.4" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.255" y1="20.32" x2="-8.255" y2="22.86" width="0.1524" layer="94" curve="180"/>
<wire x1="-5.715" y1="34.29" x2="-5.715" y2="21.59" width="0.635" layer="94"/>
<wire x1="-4.445" y1="34.29" x2="-4.445" y2="21.59" width="0.635" layer="94"/>
<wire x1="-1.905" y1="27.94" x2="-1.905" y2="30.48" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.905" y1="30.48" x2="-1.905" y2="33.02" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.905" y1="33.02" x2="-1.905" y2="35.56" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.905" y1="25.4" x2="-1.905" y2="27.94" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.905" y1="22.86" x2="-1.905" y2="25.4" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.905" y1="20.32" x2="-1.905" y2="22.86" width="0.1524" layer="94" curve="-180"/>
<wire x1="19.05" y1="24.765" x2="16.51" y2="24.765" width="0.1524" layer="94" curve="180"/>
<wire x1="16.51" y1="24.765" x2="13.97" y2="24.765" width="0.1524" layer="94" curve="180"/>
<wire x1="13.97" y1="24.765" x2="11.43" y2="24.765" width="0.1524" layer="94" curve="180"/>
<wire x1="19.05" y1="31.115" x2="16.51" y2="31.115" width="0.1524" layer="94" curve="-180"/>
<wire x1="16.51" y1="31.115" x2="13.97" y2="31.115" width="0.1524" layer="94" curve="-180"/>
<wire x1="13.97" y1="31.115" x2="11.43" y2="31.115" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.905" y1="35.56" x2="11.43" y2="35.56" width="0.1524" layer="94"/>
<wire x1="11.43" y1="35.56" x2="11.43" y2="31.115" width="0.1524" layer="94"/>
<wire x1="11.43" y1="20.32" x2="-1.905" y2="20.32" width="0.1524" layer="94"/>
<wire x1="11.43" y1="20.32" x2="11.43" y2="24.765" width="0.1524" layer="94"/>
<wire x1="19.05" y1="31.115" x2="19.05" y2="35.56" width="0.1524" layer="94"/>
<wire x1="19.05" y1="35.56" x2="21.59" y2="35.56" width="0.1524" layer="94"/>
<wire x1="19.05" y1="24.765" x2="19.05" y2="20.32" width="0.1524" layer="94"/>
<wire x1="19.05" y1="20.32" x2="21.59" y2="20.32" width="0.1524" layer="94"/>
<wire x1="11.43" y1="27.305" x2="19.05" y2="27.305" width="0.635" layer="94"/>
<wire x1="11.43" y1="28.575" x2="19.05" y2="28.575" width="0.635" layer="94"/>
<wire x1="-1.778" y1="7.62" x2="-1.778" y2="10.16" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.778" y1="10.16" x2="-1.778" y2="12.7" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.778" y1="12.7" x2="-1.778" y2="15.24" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.778" y1="5.08" x2="-1.778" y2="7.62" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.778" y1="2.54" x2="-1.778" y2="5.08" width="0.1524" layer="94" curve="-180"/>
<wire x1="-1.778" y1="0" x2="-1.778" y2="2.54" width="0.1524" layer="94" curve="-180"/>
<wire x1="-4.318" y1="13.97" x2="-4.318" y2="1.27" width="0.635" layer="94"/>
<wire x1="-5.588" y1="13.97" x2="-5.588" y2="1.27" width="0.635" layer="94"/>
<wire x1="-8.128" y1="7.62" x2="-8.128" y2="10.16" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.128" y1="10.16" x2="-8.128" y2="12.7" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.128" y1="12.7" x2="-8.128" y2="15.24" width="0.1524" layer="94" curve="180"/>
<wire x1="-8.128" y1="5.08" x2="-8.128" y2="7.62" width="0.254" layer="94" curve="180"/>
<wire x1="-8.128" y1="2.54" x2="-8.128" y2="5.08" width="0.254" layer="94" curve="180"/>
<wire x1="-8.128" y1="0" x2="-8.128" y2="2.54" width="0.254" layer="94" curve="180"/>
<wire x1="11.43" y1="4.445" x2="13.97" y2="4.445" width="0.1524" layer="94" curve="-180"/>
<wire x1="13.97" y1="4.445" x2="16.51" y2="4.445" width="0.1524" layer="94" curve="-180"/>
<wire x1="16.51" y1="4.445" x2="19.05" y2="4.445" width="0.1524" layer="94" curve="-180"/>
<wire x1="11.43" y1="10.795" x2="13.97" y2="10.795" width="0.1524" layer="94" curve="180"/>
<wire x1="13.97" y1="10.795" x2="16.51" y2="10.795" width="0.1524" layer="94" curve="180"/>
<wire x1="16.51" y1="10.795" x2="19.05" y2="10.795" width="0.1524" layer="94" curve="180"/>
<wire x1="19.05" y1="15.24" x2="19.05" y2="10.795" width="0.1524" layer="94"/>
<wire x1="19.05" y1="0" x2="19.05" y2="4.445" width="0.1524" layer="94"/>
<wire x1="11.43" y1="10.795" x2="11.43" y2="15.24" width="0.1524" layer="94"/>
<wire x1="11.43" y1="4.445" x2="11.43" y2="0" width="0.1524" layer="94"/>
<wire x1="11.43" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="19.05" y1="6.985" x2="11.43" y2="6.985" width="0.635" layer="94"/>
<wire x1="19.05" y1="8.255" x2="11.43" y2="8.255" width="0.635" layer="94"/>
<wire x1="21.59" y1="-7.62" x2="20.32" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-7.62" x2="20.32" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-10.16" x2="21.59" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="21.59" y1="-15.24" x2="20.32" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-15.24" x2="20.32" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-17.78" x2="21.59" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-10.16" x2="17.526" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="17.526" y1="-17.78" x2="20.32" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="38.1" x2="-20.32" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-17.78" x2="-20.32" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-22.86" x2="-20.32" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-27.94" x2="-20.32" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-33.02" x2="-20.32" y2="-38.1" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-38.1" x2="-20.32" y2="-40.64" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-40.64" x2="22.86" y2="-40.64" width="0.254" layer="94"/>
<wire x1="-20.32" y1="38.1" x2="22.86" y2="38.1" width="0.254" layer="94"/>
<wire x1="22.86" y1="38.1" x2="22.86" y2="36.83" width="0.254" layer="94"/>
<wire x1="22.86" y1="-40.64" x2="22.86" y2="-19.05" width="0.254" layer="94"/>
<wire x1="22.86" y1="-13.97" x2="22.86" y2="-11.43" width="0.254" layer="94"/>
<wire x1="22.86" y1="-6.35" x2="22.86" y2="-1.27" width="0.254" layer="94"/>
<wire x1="22.86" y1="1.27" x2="22.86" y2="13.97" width="0.254" layer="94"/>
<wire x1="22.86" y1="16.51" x2="22.86" y2="19.05" width="0.254" layer="94"/>
<wire x1="22.86" y1="21.59" x2="22.86" y2="34.29" width="0.254" layer="94"/>
<wire x1="-1.905" y1="27.94" x2="3.81" y2="27.94" width="0.1524" layer="94"/>
<wire x1="3.81" y1="27.94" x2="3.81" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="6.985" y2="-5.461" width="0.1524" layer="94"/>
<wire x1="6.985" y1="-5.461" x2="8.255" y2="-6.096" width="0.1524" layer="94"/>
<wire x1="8.255" y1="-6.096" x2="6.985" y2="-6.731" width="0.1524" layer="94"/>
<wire x1="6.985" y1="-6.731" x2="8.255" y2="-7.366" width="0.1524" layer="94"/>
<wire x1="8.255" y1="-7.366" x2="6.985" y2="-8.001" width="0.1524" layer="94"/>
<wire x1="6.985" y1="-8.001" x2="8.255" y2="-8.636" width="0.1524" layer="94"/>
<wire x1="8.255" y1="-8.636" x2="7.62" y2="-9.017" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.175" y2="-5.461" width="0.1524" layer="94"/>
<wire x1="3.175" y1="-5.461" x2="4.445" y2="-6.096" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-6.096" x2="3.175" y2="-6.731" width="0.1524" layer="94"/>
<wire x1="3.175" y1="-6.731" x2="4.445" y2="-7.366" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-7.366" x2="3.175" y2="-8.001" width="0.1524" layer="94"/>
<wire x1="3.175" y1="-8.001" x2="4.445" y2="-8.636" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-8.636" x2="3.81" y2="-9.017" width="0.1524" layer="94"/>
<wire x1="13.589" y1="-10.16" x2="13.97" y2="-10.795" width="0.1524" layer="94"/>
<wire x1="13.97" y1="-10.795" x2="14.605" y2="-9.525" width="0.1524" layer="94"/>
<wire x1="14.605" y1="-9.525" x2="15.24" y2="-10.795" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-10.795" x2="15.875" y2="-9.525" width="0.1524" layer="94"/>
<wire x1="15.875" y1="-9.525" x2="16.51" y2="-10.795" width="0.1524" layer="94"/>
<wire x1="16.51" y1="-10.795" x2="17.145" y2="-9.525" width="0.1524" layer="94"/>
<wire x1="17.145" y1="-9.525" x2="17.526" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="13.589" y1="-17.78" x2="13.97" y2="-18.415" width="0.1524" layer="94"/>
<wire x1="13.97" y1="-18.415" x2="14.605" y2="-17.145" width="0.1524" layer="94"/>
<wire x1="14.605" y1="-17.145" x2="15.24" y2="-18.415" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-18.415" x2="15.875" y2="-17.145" width="0.1524" layer="94"/>
<wire x1="15.875" y1="-17.145" x2="16.51" y2="-18.415" width="0.1524" layer="94"/>
<wire x1="16.51" y1="-18.415" x2="17.145" y2="-17.145" width="0.1524" layer="94"/>
<wire x1="17.145" y1="-17.145" x2="17.526" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-17.78" x2="-5.08" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="-17.78" x2="3.81" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-17.78" x2="7.62" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="11.43" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="11.43" y1="-17.78" x2="13.589" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="13.589" y1="-10.16" x2="11.43" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="11.43" y1="-10.16" x2="11.43" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-9.017" x2="3.81" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-9.017" x2="7.62" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-38.1" x2="20.32" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="21.59" y1="-24.13" x2="20.32" y2="-26.67" width="0.254" layer="94"/>
<wire x1="20.32" y1="-26.67" x2="19.05" y2="-24.13" width="0.254" layer="94"/>
<wire x1="21.59" y1="-26.67" x2="20.32" y2="-26.67" width="0.254" layer="94"/>
<wire x1="20.32" y1="-26.67" x2="19.05" y2="-26.67" width="0.254" layer="94"/>
<wire x1="21.59" y1="-24.13" x2="20.32" y2="-24.13" width="0.254" layer="94"/>
<wire x1="20.32" y1="-24.13" x2="19.05" y2="-24.13" width="0.254" layer="94"/>
<wire x1="20.32" y1="-24.13" x2="20.32" y2="-26.67" width="0.1524" layer="94"/>
<wire x1="18.288" y1="-24.892" x2="16.891" y2="-26.289" width="0.1524" layer="94"/>
<wire x1="18.415" y1="-26.035" x2="17.018" y2="-27.432" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-27.94" x2="20.32" y2="-26.67" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-22.86" x2="20.32" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-22.86" x2="20.32" y2="-24.13" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-27.94" x2="20.32" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="21.59" y1="-34.29" x2="20.32" y2="-36.83" width="0.254" layer="94"/>
<wire x1="20.32" y1="-36.83" x2="19.05" y2="-34.29" width="0.254" layer="94"/>
<wire x1="21.59" y1="-36.83" x2="20.32" y2="-36.83" width="0.254" layer="94"/>
<wire x1="20.32" y1="-36.83" x2="19.05" y2="-36.83" width="0.254" layer="94"/>
<wire x1="21.59" y1="-34.29" x2="20.32" y2="-34.29" width="0.254" layer="94"/>
<wire x1="20.32" y1="-34.29" x2="19.05" y2="-34.29" width="0.254" layer="94"/>
<wire x1="20.32" y1="-34.29" x2="20.32" y2="-36.83" width="0.1524" layer="94"/>
<wire x1="18.288" y1="-35.052" x2="16.891" y2="-36.449" width="0.1524" layer="94"/>
<wire x1="18.415" y1="-36.195" x2="17.018" y2="-37.592" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-38.1" x2="20.32" y2="-36.83" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-33.02" x2="20.32" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-33.02" x2="20.32" y2="-34.29" width="0.1524" layer="94"/>
<circle x="-8.255" y="34.29" radius="0.381" width="0" layer="94"/>
<circle x="-8.255" y="26.67" radius="0.381" width="0" layer="94"/>
<circle x="-1.905" y="34.29" radius="0.381" width="0" layer="94"/>
<circle x="-1.905" y="26.67" radius="0.381" width="0" layer="94"/>
<circle x="17.78" y="24.765" radius="0.381" width="0" layer="94"/>
<circle x="17.78" y="31.115" radius="0.381" width="0" layer="94"/>
<circle x="-1.778" y="13.97" radius="0.381" width="0" layer="94"/>
<circle x="-1.778" y="6.35" radius="0.381" width="0" layer="94"/>
<circle x="-8.128" y="13.97" radius="0.381" width="0" layer="94"/>
<circle x="-8.128" y="6.35" radius="0.381" width="0" layer="94"/>
<circle x="17.78" y="4.445" radius="0.381" width="0" layer="94"/>
<circle x="17.78" y="10.795" radius="0.381" width="0" layer="94"/>
<circle x="22.225" y="35.56" radius="0.635" width="0.1524" layer="94"/>
<circle x="22.225" y="20.32" radius="0.635" width="0.1524" layer="94"/>
<circle x="22.225" y="15.24" radius="0.635" width="0.1524" layer="94"/>
<circle x="22.225" y="0" radius="0.635" width="0.1524" layer="94"/>
<circle x="22.225" y="-7.62" radius="0.635" width="0.254" layer="94"/>
<circle x="22.225" y="-10.16" radius="0.635" width="0.254" layer="94"/>
<circle x="22.225" y="-15.24" radius="0.635" width="0.254" layer="94"/>
<circle x="22.225" y="-17.78" radius="0.635" width="0.254" layer="94"/>
<circle x="7.62" y="-17.78" radius="0.381" width="0" layer="94"/>
<circle x="3.81" y="-17.78" radius="0.381" width="0" layer="94"/>
<circle x="11.43" y="-17.78" radius="0.381" width="0" layer="94"/>
<circle x="20.32" y="-17.78" radius="0.381" width="0" layer="94"/>
<circle x="20.32" y="-10.16" radius="0.381" width="0" layer="94"/>
<text x="3.81" y="-25.4" size="1.778" layer="94">Right LED</text>
<text x="3.81" y="-35.56" size="1.778" layer="94">Left LED</text>
<text x="24.13" y="34.798" size="1.524" layer="94">1 TX+</text>
<text x="24.13" y="19.558" size="1.524" layer="94">2 TX-</text>
<text x="24.13" y="14.478" size="1.524" layer="94">3 RX+</text>
<text x="24.13" y="-0.762" size="1.524" layer="94">6 RX-</text>
<text x="24.13" y="-8.382" size="1.524" layer="94">4</text>
<text x="24.13" y="-10.922" size="1.524" layer="94">5</text>
<text x="24.13" y="-16.002" size="1.524" layer="94">7</text>
<text x="24.13" y="-18.542" size="1.524" layer="94">8</text>
<text x="-20.32" y="39.37" size="1.778" layer="95">&gt;NAME</text>
<text x="-20.32" y="-43.18" size="1.778" layer="96">&gt;VALUE</text>
<text x="6.35" y="-8.636" size="1.016" layer="94" rot="R90">75R</text>
<text x="1.778" y="-8.763" size="1.016" layer="94" rot="MR90">75R</text>
<text x="13.716" y="-9.017" size="1.016" layer="94">75R</text>
<text x="13.716" y="-16.383" size="1.016" layer="94">75R</text>
<text x="-5.715" y="-15.875" size="1.016" layer="94">1 nF</text>
<rectangle x1="-5.08" y1="-19.05" x2="-4.826" y2="-16.51" layer="94"/>
<rectangle x1="-4.318" y1="-19.05" x2="-4.064" y2="-16.51" layer="94"/>
<pin name="C-R" x="-22.86" y="-27.94" visible="pad" length="short" direction="pas"/>
<pin name="A-R" x="-22.86" y="-22.86" visible="pad" length="short" direction="pas"/>
<pin name="C-L" x="-22.86" y="-38.1" visible="pad" length="short" direction="pas"/>
<pin name="A-L" x="-22.86" y="-33.02" visible="pad" length="short" direction="pas"/>
<pin name="TD+" x="-22.86" y="35.56" length="short" direction="in"/>
<pin name="CT" x="-22.86" y="27.94" length="short" direction="in"/>
<pin name="TD-" x="-22.86" y="20.32" length="short" direction="in"/>
<pin name="RD+" x="-22.86" y="15.24" length="short" direction="in"/>
<pin name="CR" x="-22.86" y="7.62" length="short" direction="in"/>
<pin name="RD-" x="-22.86" y="0" length="short" direction="in"/>
<pin name="8" x="-22.86" y="-17.78" visible="pad" length="short" direction="in"/>
<polygon width="0.1524" layer="94">
<vertex x="16.891" y="-26.289"/>
<vertex x="17.272" y="-25.4"/>
<vertex x="17.78" y="-25.908"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="17.018" y="-27.432"/>
<vertex x="17.399" y="-26.543"/>
<vertex x="17.907" y="-27.051"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="16.891" y="-36.449"/>
<vertex x="17.272" y="-35.56"/>
<vertex x="17.78" y="-36.068"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="17.018" y="-37.592"/>
<vertex x="17.399" y="-36.703"/>
<vertex x="17.907" y="-37.211"/>
</polygon>
<wire x1="-12.7" y1="15.24" x2="-8.128" y2="15.24" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="7.62" x2="-8.128" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="0" x2="-8.128" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="7.62" x2="7.62" y2="7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="15.24" x2="11.43" y2="15.24" width="0.1524" layer="94"/>
<wire x1="7.62" y1="0" x2="-1.778" y2="0" width="0.1524" layer="94"/>
<wire x1="19.05" y1="15.24" x2="21.59" y2="15.24" width="0.1524" layer="94"/>
<wire x1="19.05" y1="0" x2="21.59" y2="0" width="0.1524" layer="94"/>
<pin name="MT1" x="-5.08" y="-43.18" length="short" rot="R90"/>
<pin name="MT2" x="0" y="-43.18" length="short" rot="R90"/>
</symbol>
<symbol name="HEADER-MALE-2">
<wire x1="1.27" y1="-2.54" x2="-3.81" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<pin name="1" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="HEADER-MALE-3">
<wire x1="1.27" y1="-5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<pin name="1" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HEADER-IDC-10-2" prefix="X">
<gates>
<gate name="G$1" symbol="HEADER-MALE-10-2" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="IDC-10_2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NUCLEO-TOPLEFT">
<gates>
<gate name="G$2" symbol="HEADER-MALE-8-2" x="0" y="17.78"/>
<gate name="G$1" symbol="HEADER-MALE-4" x="-25.4" y="17.78"/>
<gate name="G$3" symbol="HEADER-MALE-2" x="-25.4" y="38.1"/>
</gates>
<devices>
<device name="" package="NUCLEO-TOPLEFT">
<connects>
<connect gate="G$1" pin="1" pad="VDD"/>
<connect gate="G$1" pin="2" pad="BOOT0"/>
<connect gate="G$1" pin="3" pad="PF6"/>
<connect gate="G$1" pin="4" pad="PF7"/>
<connect gate="G$2" pin="1" pad="NC1"/>
<connect gate="G$2" pin="10" pad="PC12"/>
<connect gate="G$2" pin="11" pad="GND1"/>
<connect gate="G$2" pin="12" pad="PD2"/>
<connect gate="G$2" pin="13" pad="GND2"/>
<connect gate="G$2" pin="14" pad="PG2"/>
<connect gate="G$2" pin="15" pad="VIN"/>
<connect gate="G$2" pin="16" pad="PG3"/>
<connect gate="G$2" pin="2" pad="PC8"/>
<connect gate="G$2" pin="3" pad="IOREF"/>
<connect gate="G$2" pin="4" pad="PC9"/>
<connect gate="G$2" pin="5" pad="RESET"/>
<connect gate="G$2" pin="6" pad="PC10"/>
<connect gate="G$2" pin="7" pad="+3V3"/>
<connect gate="G$2" pin="8" pad="PC11"/>
<connect gate="G$2" pin="9" pad="+5V"/>
<connect gate="G$3" pin="1" pad="STLINK_RX"/>
<connect gate="G$3" pin="2" pad="STLINK_TX"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="J00-0065NL">
<gates>
<gate name="G$1" symbol="ETHERNET" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="ETHERNET">
<connects>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="A-L" pad="A1"/>
<connect gate="G$1" pin="A-R" pad="A2"/>
<connect gate="G$1" pin="C-L" pad="C1"/>
<connect gate="G$1" pin="C-R" pad="C2"/>
<connect gate="G$1" pin="CR" pad="5"/>
<connect gate="G$1" pin="CT" pad="4"/>
<connect gate="G$1" pin="MT1" pad="S1"/>
<connect gate="G$1" pin="MT2" pad="S2"/>
<connect gate="G$1" pin="RD+" pad="3"/>
<connect gate="G$1" pin="RD-" pad="6"/>
<connect gate="G$1" pin="TD+" pad="1"/>
<connect gate="G$1" pin="TD-" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEADER-MALE-3">
<gates>
<gate name="G$1" symbol="HEADER-MALE-3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HEADER-MALE-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="passive">
<description>1uF  5.3 4.1&lt;br&gt;
4.7uF 5.3&lt;br&gt;
10uF 5.3 6.5&lt;br&gt;
22uF 5.3&lt;br&gt;
47uF 6.5&lt;br&gt;
100uF 6.5 8.2&lt;br&gt;
220uF 10.3&lt;br&gt;
330uF 8.3&lt;br&gt;
470uF 8.3&lt;br&gt;
680uF 10.2&lt;br&gt;
1000uF 10.2&lt;br&gt;
2200uF 16.2&lt;br&gt;</description>
<packages>
<package name="C1">
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8" first="yes"/>
<pad name="2" x="1.27" y="0" drill="0.8"/>
<text x="-1.651" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2">
<wire x1="-3.429" y1="1.27" x2="3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="-3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="1.016" x2="3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.54" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-2.54" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8" first="yes"/>
<pad name="2" x="2.54" y="0" drill="0.8"/>
<text x="-2.921" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.921" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0805">
<wire x1="-0.3175" y1="0.5588" x2="0.9525" y2="0.5588" width="0.1524" layer="21"/>
<wire x1="-0.3175" y1="-0.5588" x2="0.9525" y2="-0.5588" width="0.1524" layer="21"/>
<wire x1="-1.4288" y1="0.8064" x2="2.0638" y2="0.8064" width="0.0508" layer="39"/>
<wire x1="2.0638" y1="0.8064" x2="2.0638" y2="-0.8064" width="0.0508" layer="39"/>
<wire x1="2.0638" y1="-0.8064" x2="-1.4288" y2="-0.8064" width="0.0508" layer="39"/>
<wire x1="-1.4288" y1="-0.8064" x2="-1.4288" y2="0.8064" width="0.0508" layer="39"/>
<smd name="1" x="-0.635" y="0" dx="0.889" dy="1.3208" layer="1"/>
<smd name="2" x="1.27" y="0" dx="0.889" dy="1.3208" layer="1"/>
<text x="-1.397" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.9525" y1="-0.635" x2="1.3335" y2="0.635" layer="51" rot="R180"/>
<rectangle x1="-0.6985" y1="-0.635" x2="-0.3175" y2="0.635" layer="51"/>
</package>
<package name="R1V">
<wire x1="-1.27" y1="0" x2="1.016" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.6" first="yes"/>
<pad name="2" x="1.27" y="0" drill="0.6"/>
<text x="0.127" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.127" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R2V">
<wire x1="-2.54" y1="0" x2="2.286" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.6" first="yes"/>
<pad name="2" x="2.54" y="0" drill="0.6"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R3V">
<wire x1="-2.54" y1="0" x2="4.826" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.6" first="yes"/>
<pad name="2" x="5.08" y="0" drill="0.6"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R4">
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.6" first="yes"/>
<pad name="2" x="5.08" y="0" drill="0.6"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="R1.5V">
<wire x1="-1.27" y1="0" x2="2.286" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.6" first="yes"/>
<pad name="2" x="2.54" y="0" drill="0.6"/>
<text x="0.127" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.127" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R1206">
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.397" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R6">
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.445" y1="1.524" x2="-4.191" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.524" x2="-4.191" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="4.191" y1="-1.778" x2="4.445" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.191" y1="1.778" x2="4.445" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.524" x2="-4.445" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.778" x2="-3.81" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.651" x2="-3.81" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-1.778" x2="-3.81" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="-1.651" x2="-3.81" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="1.651" x2="3.81" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="1.651" x2="-3.683" y2="1.651" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.651" x2="3.81" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.651" x2="-3.683" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="4.191" y1="1.778" x2="3.81" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.191" y1="-1.778" x2="3.81" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.524" x2="4.445" y2="1.524" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1" first="yes"/>
<pad name="2" x="7.62" y="0" drill="1"/>
<text x="-4.318" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5306" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.445" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="R7">
<wire x1="10.16" y1="0" x2="9.144" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.445" y1="1.524" x2="-4.191" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.524" x2="-4.191" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="-1.778" x2="6.985" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="1.778" x2="6.985" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.524" x2="-4.445" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.778" x2="-3.81" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.651" x2="-3.81" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-1.778" x2="-3.81" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="-1.651" x2="-3.81" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="6.223" y1="1.651" x2="6.35" y2="1.778" width="0.1524" layer="21"/>
<wire x1="6.223" y1="1.651" x2="-3.683" y2="1.651" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-1.651" x2="6.35" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-1.651" x2="-3.683" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="6.731" y1="1.778" x2="6.35" y2="1.778" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-1.778" x2="6.35" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.524" x2="6.985" y2="1.524" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1" first="yes"/>
<pad name="2" x="10.16" y="0" drill="1"/>
<text x="-4.318" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5306" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.985" y1="-0.3048" x2="9.1186" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="SWITCH">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.048" y1="-2.5654" x2="3.048" y2="2.5146" width="0.1524" layer="21"/>
<wire x1="3.048" y1="2.5146" x2="2.54" y2="3.0226" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.0734" x2="3.048" y2="-2.5654" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="3.0226" x2="-3.048" y2="2.5146" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.0734" x2="-3.048" y2="-2.5654" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-2.5654" x2="-3.048" y2="2.5146" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.0226" x2="-2.54" y2="3.0226" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.0734" x2="2.54" y2="-3.0734" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.1844" x2="1.27" y2="-2.1844" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.2606" x2="-1.27" y2="2.2606" width="0.1524" layer="21"/>
<circle x="0" y="-0.0254" radius="1.778" width="0.1524" layer="21"/>
<circle x="-2.159" y="-2.1844" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.159" y="-2.0574" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.159" y="2.1336" radius="0.508" width="0.1524" layer="21"/>
<circle x="-2.159" y="2.1336" radius="0.508" width="0.1524" layer="21"/>
<circle x="0" y="-0.0254" radius="0.635" width="0.0508" layer="21"/>
<pad name="1" x="-3.81" y="2.54" drill="0.8"/>
<pad name="3" x="-3.81" y="-2.54" drill="0.8"/>
<pad name="2" x="3.81" y="2.54" drill="0.8"/>
<pad name="4" x="3.81" y="-2.54" drill="0.8"/>
</package>
<package name="SWITCH-SMD">
<smd name="2" x="-1.5" y="-2.54" dx="1" dy="2" layer="1"/>
<smd name="4" x="1.5" y="-2.54" dx="1" dy="2" layer="1"/>
<smd name="3" x="1.5" y="2.54" dx="1" dy="2" layer="1"/>
<smd name="1" x="-1.5" y="2.54" dx="1" dy="2" layer="1"/>
<wire x1="2" y1="-1.9304" x2="2" y2="1.8796" width="0.1524" layer="21"/>
<wire x1="2" y1="1.8796" x2="1.905" y2="2" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2" x2="2" y2="-1.9304" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2" x2="-2" y2="1.8796" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2" x2="-2" y2="-1.9304" width="0.1524" layer="21"/>
<wire x1="-2" y1="-1.9304" x2="-2" y2="1.8796" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2" x2="-1.905" y2="2" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2" x2="1.905" y2="-2" width="0.1524" layer="21"/>
<circle x="0" y="-0.01" radius="1" width="0.1524" layer="21"/>
<circle x="-1.2065" y="-1.2319" radius="0.508" width="0.1524" layer="21"/>
<circle x="1.2065" y="-1.26365" radius="0.508" width="0.1524" layer="21"/>
<circle x="1.2065" y="1.1811" radius="0.508" width="0.1524" layer="21"/>
<circle x="-1.2065" y="1.1811" radius="0.508" width="0.1524" layer="21"/>
</package>
<package name="RESONATOR">
<description>Source: http://search.murata.co.jp/Ceramy/CatalogshowpageAction.do?sDirnm=A07X&amp;sFilnm=81G07006&amp;sType=2&amp;sLang=en&amp;sNHinnm=CSTCR6M00G53Z-R0&amp;sCapt=Standard_Land_Pattern_Dimensions</description>
<wire x1="-1.95" y1="-1.55" x2="1.95" y2="-1.55" width="0.1016" layer="51"/>
<wire x1="1.95" y1="-1.55" x2="1.95" y2="1.55" width="0.1016" layer="21"/>
<wire x1="1.95" y1="1.55" x2="-1.95" y2="1.55" width="0.1016" layer="51"/>
<wire x1="-1.95" y1="1.55" x2="-1.95" y2="-1.55" width="0.1016" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.7" dy="4.1" layer="1"/>
<smd name="2" x="0" y="0" dx="1" dy="4.1" layer="1"/>
<smd name="3" x="1.5" y="0" dx="0.7" dy="4.1" layer="1"/>
<text x="-2.54" y="1.6827" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.9528" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="BEAD">
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="-1.016" x2="-3.175" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.016" x2="-3.175" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.016" x2="-3.175" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.016" x2="3.175" y2="1.016" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.6" first="yes"/>
<pad name="2" x="5.08" y="0" drill="0.6"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="RESONATOR-SMALL">
<wire x1="-0.965" y1="-0.65" x2="-0.305" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="1.6" y1="-0.65" x2="1.6" y2="0.65" width="0.1016" layer="21"/>
<wire x1="-1.6" y1="0.65" x2="-1.6" y2="-0.65" width="0.1016" layer="21"/>
<smd name="1" x="-1.2" y="0" dx="0.4" dy="3" layer="1"/>
<smd name="2" x="0" y="0" dx="0.4" dy="3" layer="1"/>
<smd name="3" x="1.2" y="0" dx="0.4" dy="3" layer="1"/>
<text x="-2.54" y="1.3652" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.2703" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-0.305" y1="0.65" x2="-0.94" y2="0.65" width="0.1016" layer="21"/>
<wire x1="-0.94" y1="0.65" x2="-0.965" y2="0.65" width="0.1016" layer="51"/>
<wire x1="0.965" y1="0.65" x2="0.305" y2="0.65" width="0.1016" layer="21"/>
<wire x1="0.305" y1="-0.65" x2="0.94" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="0.94" y1="-0.65" x2="0.965" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="-0.94" y1="0.65" x2="-1.6" y2="0.65" width="0.1016" layer="51"/>
<wire x1="0.33" y1="0.65" x2="-0.33" y2="0.65" width="0.1016" layer="51"/>
<wire x1="1.6" y1="0.65" x2="0.94" y2="0.65" width="0.1016" layer="51"/>
<wire x1="0.94" y1="-0.65" x2="1.6" y2="-0.65" width="0.1016" layer="51"/>
<wire x1="-0.33" y1="-0.65" x2="0.33" y2="-0.65" width="0.1016" layer="51"/>
<wire x1="-1.6" y1="-0.65" x2="-0.94" y2="-0.65" width="0.1016" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CAPACITOR">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="-1.397" y="-3.556" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="3.429" y="-3.556" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="SWITCH-1">
<wire x1="-2.54" y1="0" x2="-1.5875" y2="0" width="0.3048" layer="94"/>
<wire x1="-1.5875" y1="0" x2="0.635" y2="1.5875" width="0.3048" layer="94"/>
<wire x1="0.635" y1="0.635" x2="0.635" y2="0" width="0.3048" layer="94"/>
<wire x1="0.635" y1="0" x2="2.54" y2="0" width="0.3048" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="3.81" width="0.127" layer="94" style="shortdash"/>
<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.127" layer="94"/>
<wire x1="-0.635" y1="3.81" x2="-0.635" y2="3.4925" width="0.127" layer="94"/>
<wire x1="0.635" y1="3.81" x2="0.635" y2="3.4925" width="0.127" layer="94"/>
<text x="-5.08" y="5.08" size="1.27" layer="95">&gt;PART</text>
<pin name="1" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="RESONATOR">
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="1.27" x2="-0.508" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="-1.27" x2="0.508" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-1.27" x2="0.508" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0.508" y1="1.27" x2="-0.508" y2="1.27" width="0.1524" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.302" x2="-1.778" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.302" x2="1.778" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-2.286" x2="1.778" y2="-4.318" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.286" x2="2.54" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-4.318" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-3.302" x2="3.81" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-3.302" x2="3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="-2.286" x2="-1.778" y2="-4.318" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.286" x2="-2.54" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-4.318" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-3.302" x2="-3.81" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-3.302" x2="-3.81" y2="0" width="0.1524" layer="94"/>
<circle x="-3.81" y="0" radius="0.254" width="0" layer="94"/>
<circle x="3.81" y="0" radius="0.254" width="0" layer="94"/>
<circle x="0" y="-3.302" radius="0.254" width="0" layer="94"/>
<text x="-5.08" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-7.62" y="0" visible="pad" length="short" direction="pas"/>
<pin name="2" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3" x="7.62" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="BEAD">
<wire x1="-1.27" y1="-0.254" x2="-0.254" y2="0" width="0.1524" layer="94" curve="-36.869898" cap="flat"/>
<wire x1="-1.27" y1="-0.254" x2="-0.762" y2="-1.016" width="0.1524" layer="94" curve="-46.397181" cap="flat"/>
<wire x1="-1.778" y1="-1.016" x2="-1.27" y2="-0.254" width="0.1524" layer="94" curve="-46.397181" cap="flat"/>
<wire x1="-1.778" y1="-1.016" x2="-0.762" y2="-1.016" width="0.1524" layer="94" curve="208.072487" cap="flat"/>
<wire x1="-2.54" y1="0" x2="-2.286" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.286" y1="0" x2="-1.27" y2="-0.254" width="0.1524" layer="94" curve="-36.869898" cap="flat"/>
<text x="-4.318" y="1.27" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CAPACITOR" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="1" package="C1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2" package="C2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
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
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="1V" package="R1V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2V" package="R2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3V" package="R3V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4" package="R4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1.5V" package="R1.5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="6" package="R6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="7" package="R7">
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
<deviceset name="SWITCH" prefix="S">
<gates>
<gate name="G$1" symbol="SWITCH-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SWITCH">
<connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="3 4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="SWITCH-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="3 4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESONATOR" prefix="Q" uservalue="yes">
<gates>
<gate name="G$1" symbol="RESONATOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESONATOR">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-S" package="RESONATOR-SMALL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BEAD" prefix="B">
<gates>
<gate name="G$1" symbol="BEAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BEAD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="0805">
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
</devicesets>
</library>
<library name="supply">
<packages>
</packages>
<symbols>
<symbol name="+3.3V">
<wire x1="1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="0.635" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.778" layer="97">+3.3V</text>
<pin name="+3.3V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="0V">
<wire x1="-1.905" y1="-2.54" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<pin name="0V" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+3.3V" prefix="P">
<gates>
<gate name="G$1" symbol="+3.3V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0V" prefix="P">
<gates>
<gate name="G$1" symbol="0V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SJ">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.397" y1="-1.016" x2="-1.397" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.397" y1="1.016" x2="1.651" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.651" y1="0.762" x2="-1.397" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.651" y1="-0.762" x2="-1.397" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="1.397" y1="-1.016" x2="1.651" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.762" x2="-1.651" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.016" x2="1.397" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0" x2="1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0" x2="-1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.254" y2="0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<wire x1="0.254" y1="0.127" x2="0.254" y2="-0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-0.762" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="2" x="0.762" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.4001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="-0.0762" y1="-0.9144" x2="0.0762" y2="0.9144" layer="29"/>
</package>
<package name="SJW">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.524" x2="2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="1.27" x2="-1.905" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-1.27" x2="-1.905" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="1.905" y1="-1.524" x2="2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="-1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-1.27" x2="-2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.524" x2="1.905" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0" x2="2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0" x2="-2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51" curve="-180"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51" curve="180"/>
<smd name="1" x="-1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="-2.159" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="0.762" y1="-0.762" x2="1.016" y2="0.762" layer="51"/>
<rectangle x1="1.016" y1="-0.635" x2="1.27" y2="0.635" layer="51"/>
<rectangle x1="1.27" y1="-0.508" x2="1.397" y2="0.508" layer="51"/>
<rectangle x1="1.397" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.016" y1="-0.762" x2="-0.762" y2="0.762" layer="51"/>
<rectangle x1="-1.27" y1="-0.635" x2="-1.016" y2="0.635" layer="51"/>
<rectangle x1="-1.397" y1="-0.508" x2="-1.27" y2="0.508" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.397" y2="0.254" layer="51"/>
<rectangle x1="0.9652" y1="-0.7112" x2="1.0922" y2="-0.5842" layer="51"/>
<rectangle x1="1.3462" y1="-0.3556" x2="1.4732" y2="-0.2286" layer="51"/>
<rectangle x1="1.3462" y1="0.2032" x2="1.4732" y2="0.3302" layer="51"/>
<rectangle x1="0.9652" y1="0.5842" x2="1.0922" y2="0.7112" layer="51"/>
<rectangle x1="-1.0922" y1="-0.7112" x2="-0.9652" y2="-0.5842" layer="51"/>
<rectangle x1="-1.4478" y1="-0.3302" x2="-1.3208" y2="-0.2032" layer="51"/>
<rectangle x1="-1.4732" y1="0.2032" x2="-1.3462" y2="0.3302" layer="51"/>
<rectangle x1="-1.1176" y1="0.5842" x2="-0.9906" y2="0.7112" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="SJ">
<wire x1="0.381" y1="0.635" x2="0.381" y2="-0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="-0.381" y1="-0.635" x2="-0.381" y2="0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.651" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SJ" prefix="SJ" uservalue="yes">
<description>SMD solder &lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="SJ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SJ">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="W" package="SJW">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
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
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="ic" deviceset="STM32F407" device=""/>
<part name="X1" library="header" deviceset="HEADER-IDC-10-2" device=""/>
<part name="C1" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="R1" library="passive" deviceset="RESISTOR" device="R0805" value="30"/>
<part name="S1" library="passive" deviceset="SWITCH" device="SMD"/>
<part name="P1" library="supply" deviceset="+3.3V" device=""/>
<part name="P2" library="supply" deviceset="0V" device=""/>
<part name="P3" library="supply" deviceset="+3.3V" device=""/>
<part name="P4" library="supply" deviceset="0V" device=""/>
<part name="Q1" library="passive" deviceset="RESONATOR" device="-S" value="8MHz"/>
<part name="U$1" library="header" deviceset="NUCLEO-TOPLEFT" device=""/>
<part name="P5" library="supply" deviceset="0V" device=""/>
<part name="P6" library="supply" deviceset="+3.3V" device=""/>
<part name="P7" library="supply" deviceset="0V" device=""/>
<part name="IC2" library="ic" deviceset="S25FL116K" device="W" value="S25FL116K"/>
<part name="C2" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="P8" library="supply" deviceset="+3.3V" device=""/>
<part name="P9" library="supply" deviceset="+3.3V" device=""/>
<part name="P10" library="supply" deviceset="0V" device=""/>
<part name="P11" library="supply" deviceset="0V" device=""/>
<part name="P12" library="supply" deviceset="+3.3V" device=""/>
<part name="C3" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="P13" library="supply" deviceset="+3.3V" device=""/>
<part name="P14" library="supply" deviceset="0V" device=""/>
<part name="C4" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="C5" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="C6" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="C7" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="IC3" library="ic" deviceset="DISPLAY_32_128_SSD1306" device=""/>
<part name="C8" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="P15" library="supply" deviceset="+3.3V" device=""/>
<part name="P16" library="supply" deviceset="0V" device=""/>
<part name="P17" library="supply" deviceset="0V" device=""/>
<part name="P18" library="supply" deviceset="+3.3V" device=""/>
<part name="IC4" library="ic" deviceset="LAN8710A" device=""/>
<part name="X2" library="header" deviceset="J00-0065NL" device=""/>
<part name="C9" library="passive" deviceset="CAPACITOR" device="0805" value="10p"/>
<part name="C10" library="passive" deviceset="CAPACITOR" device="0805" value="10p"/>
<part name="C11" library="passive" deviceset="CAPACITOR" device="0805" value="10p"/>
<part name="C12" library="passive" deviceset="CAPACITOR" device="0805" value="10p"/>
<part name="C13" library="passive" deviceset="CAPACITOR" device="0805" value="22n"/>
<part name="P19" library="supply" deviceset="0V" device=""/>
<part name="R3" library="passive" deviceset="RESISTOR" device="R0805" value="49.9"/>
<part name="R4" library="passive" deviceset="RESISTOR" device="R0805" value="49.9"/>
<part name="R5" library="passive" deviceset="RESISTOR" device="R0805" value="49.9"/>
<part name="R6" library="passive" deviceset="RESISTOR" device="R0805" value="49.9"/>
<part name="R7" library="passive" deviceset="RESISTOR" device="R0805" value="330"/>
<part name="R8" library="passive" deviceset="RESISTOR" device="R0805" value="330"/>
<part name="P20" library="supply" deviceset="0V" device=""/>
<part name="R9" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="R10" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="R11" library="passive" deviceset="RESISTOR" device="R0805" value="12k1"/>
<part name="P21" library="supply" deviceset="0V" device=""/>
<part name="P22" library="supply" deviceset="0V" device=""/>
<part name="P23" library="supply" deviceset="0V" device=""/>
<part name="P24" library="supply" deviceset="0V" device=""/>
<part name="P25" library="supply" deviceset="0V" device=""/>
<part name="C14" library="passive" deviceset="CAPACITOR" device="0805" value="470p"/>
<part name="C15" library="passive" deviceset="CAPACITOR" device="0805" value="1u"/>
<part name="P26" library="supply" deviceset="0V" device=""/>
<part name="B1" library="passive" deviceset="BEAD" device="SMD"/>
<part name="P27" library="supply" deviceset="+3.3V" device=""/>
<part name="C16" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="C17" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="C18" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="P30" library="supply" deviceset="0V" device=""/>
<part name="P31" library="supply" deviceset="0V" device=""/>
<part name="R12" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="C19" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="P32" library="supply" deviceset="0V" device=""/>
<part name="P33" library="supply" deviceset="+3.3V" device=""/>
<part name="R2" library="passive" deviceset="RESISTOR" device="R0805" value="2k2"/>
<part name="R13" library="passive" deviceset="RESISTOR" device="R0805" value="2k2"/>
<part name="P34" library="supply" deviceset="+3.3V" device=""/>
<part name="R14" library="passive" deviceset="RESISTOR" device="R0805" value="1k5"/>
<part name="P36" library="supply" deviceset="+3.3V" device=""/>
<part name="R16" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="R17" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="R18" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="P37" library="supply" deviceset="+3.3V" device=""/>
<part name="R19" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="R20" library="passive" deviceset="RESISTOR" device="R0805" value="10k"/>
<part name="P39" library="supply" deviceset="0V" device=""/>
<part name="IC5" library="ic" deviceset="SM77H" device="" value="X1G0044810012 SG7050CAN 50 MHZ"/>
<part name="P40" library="supply" deviceset="+3.3V" device=""/>
<part name="P41" library="supply" deviceset="+3.3V" device=""/>
<part name="P42" library="supply" deviceset="0V" device=""/>
<part name="SJ1" library="jumper" deviceset="SJ" device=""/>
<part name="P29" library="supply" deviceset="0V" device=""/>
<part name="C20" library="passive" deviceset="CAPACITOR" device="0805" value="100n"/>
<part name="P35" library="supply" deviceset="+3.3V" device=""/>
<part name="P43" library="supply" deviceset="0V" device=""/>
<part name="P44" library="supply" deviceset="+3.3V" device=""/>
<part name="C21" library="passive" deviceset="CAPACITOR" device="0805" value="10u"/>
<part name="P28" library="supply" deviceset="+3.3V" device=""/>
<part name="P38" library="supply" deviceset="0V" device=""/>
<part name="C22" library="passive" deviceset="CAPACITOR" device="0805" value="10u"/>
<part name="P45" library="supply" deviceset="+3.3V" device=""/>
<part name="P46" library="supply" deviceset="0V" device=""/>
<part name="C23" library="passive" deviceset="CAPACITOR" device="0805" value="10u"/>
<part name="C24" library="passive" deviceset="CAPACITOR" device="0805" value="10u"/>
<part name="C25" library="passive" deviceset="CAPACITOR" device="0805" value="10u"/>
<part name="P47" library="supply" deviceset="0V" device=""/>
<part name="C26" library="passive" deviceset="CAPACITOR" device="0805" value="2u2"/>
<part name="C27" library="passive" deviceset="CAPACITOR" device="0805" value="2u2"/>
<part name="P48" library="supply" deviceset="0V" device=""/>
<part name="P49" library="supply" deviceset="0V" device=""/>
<part name="P50" library="supply" deviceset="0V" device=""/>
<part name="U$3" library="header" deviceset="HEADER-MALE-3" device=""/>
<part name="P51" library="supply" deviceset="0V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="177.8" y="-58.42" size="1.778" layer="95">J-Link</text>
<text x="50.8" y="-17.78" size="1.778" layer="96">STM32407VE</text>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="78.74" y="53.34"/>
<instance part="X1" gate="G$1" x="180.34" y="-40.64"/>
<instance part="C1" gate="G$1" x="134.62" y="2.54"/>
<instance part="R1" gate="G$1" x="144.78" y="10.16" rot="R90"/>
<instance part="S1" gate="G$1" x="144.78" y="-2.54" rot="R90"/>
<instance part="P1" gate="G$1" x="190.5" y="-25.4"/>
<instance part="P2" gate="G$1" x="190.5" y="-55.88"/>
<instance part="IC1" gate="G$2" x="78.74" y="53.34"/>
<instance part="P3" gate="G$1" x="78.74" y="124.46"/>
<instance part="P4" gate="G$1" x="78.74" y="-25.4"/>
<instance part="Q1" gate="G$1" x="119.38" y="38.1"/>
<instance part="U$1" gate="G$1" x="-40.64" y="35.56" rot="R180"/>
<instance part="U$1" gate="G$2" x="-17.78" y="38.1"/>
<instance part="P5" gate="G$1" x="-27.94" y="25.4"/>
<instance part="P6" gate="G$1" x="-30.48" y="50.8"/>
<instance part="P7" gate="G$1" x="119.38" y="27.94"/>
<instance part="IC2" gate="SPIFLASH" x="-27.94" y="-2.54" rot="MR0"/>
<instance part="IC2" gate="POWER" x="-30.48" y="-5.08" rot="MR0"/>
<instance part="C2" gate="G$1" x="-30.48" y="-33.02"/>
<instance part="P8" gate="G$1" x="-30.48" y="-25.4" rot="MR0"/>
<instance part="P9" gate="G$1" x="-30.48" y="10.16" rot="MR0"/>
<instance part="P10" gate="G$1" x="-30.48" y="-38.1" rot="MR0"/>
<instance part="P11" gate="G$1" x="-30.48" y="-17.78" rot="MR0"/>
<instance part="P12" gate="G$1" x="-45.72" y="0" rot="MR0"/>
<instance part="C3" gate="G$1" x="63.5" y="142.24"/>
<instance part="P13" gate="G$1" x="63.5" y="149.86" rot="MR0"/>
<instance part="P14" gate="G$1" x="63.5" y="137.16" rot="MR0"/>
<instance part="C4" gate="G$1" x="71.12" y="142.24"/>
<instance part="C5" gate="G$1" x="78.74" y="142.24"/>
<instance part="C6" gate="G$1" x="86.36" y="142.24"/>
<instance part="C7" gate="G$1" x="93.98" y="142.24"/>
<instance part="IC3" gate="G$1" x="-20.32" y="91.44"/>
<instance part="C8" gate="G$1" x="-38.1" y="91.44"/>
<instance part="P15" gate="G$1" x="-38.1" y="99.06" rot="MR0"/>
<instance part="P16" gate="G$1" x="-38.1" y="86.36" rot="MR0"/>
<instance part="P17" gate="G$1" x="-20.32" y="78.74" rot="MR0"/>
<instance part="P18" gate="G$1" x="-20.32" y="104.14" rot="MR0"/>
<instance part="IC4" gate="G$1" x="-147.32" y="63.5" rot="MR0"/>
<instance part="X2" gate="G$1" x="-271.78" y="55.88" rot="MR0"/>
<instance part="C9" gate="G$1" x="-200.66" y="43.18" rot="MR0"/>
<instance part="C10" gate="G$1" x="-208.28" y="43.18" rot="MR0"/>
<instance part="C11" gate="G$1" x="-215.9" y="43.18" rot="MR0"/>
<instance part="C12" gate="G$1" x="-223.52" y="43.18" rot="MR0"/>
<instance part="C13" gate="G$1" x="-231.14" y="43.18" rot="MR0"/>
<instance part="P19" gate="G$1" x="-200.66" y="38.1"/>
<instance part="R3" gate="G$1" x="-223.52" y="106.68" rot="MR90"/>
<instance part="R4" gate="G$1" x="-215.9" y="106.68" rot="MR90"/>
<instance part="R5" gate="G$1" x="-208.28" y="106.68" rot="MR90"/>
<instance part="R6" gate="G$1" x="-200.66" y="106.68" rot="MR90"/>
<instance part="R7" gate="G$1" x="-241.3" y="101.6" rot="MR90"/>
<instance part="R8" gate="G$1" x="-243.84" y="7.62" rot="MR90"/>
<instance part="P20" gate="G$1" x="-243.84" y="0"/>
<instance part="R9" gate="G$1" x="-114.3" y="15.24" rot="MR90"/>
<instance part="R10" gate="G$1" x="-99.06" y="15.24" rot="MR90"/>
<instance part="R11" gate="G$1" x="-180.34" y="60.96" rot="MR90"/>
<instance part="P21" gate="G$1" x="-180.34" y="53.34"/>
<instance part="P22" gate="G$1" x="-144.78" y="15.24"/>
<instance part="P23" gate="G$1" x="-114.3" y="7.62"/>
<instance part="P24" gate="G$1" x="-99.06" y="7.62"/>
<instance part="P25" gate="G$1" x="-114.3" y="78.74"/>
<instance part="C14" gate="G$1" x="-119.38" y="106.68" rot="MR0"/>
<instance part="C15" gate="G$1" x="-109.22" y="106.68" rot="MR0"/>
<instance part="P26" gate="G$1" x="-109.22" y="101.6"/>
<instance part="B1" gate="G$1" x="-149.86" y="114.3" rot="MR0"/>
<instance part="P27" gate="G$1" x="-142.24" y="116.84"/>
<instance part="C16" gate="G$1" x="-172.72" y="106.68" rot="MR0"/>
<instance part="C17" gate="G$1" x="-180.34" y="106.68" rot="MR0"/>
<instance part="C18" gate="G$1" x="-137.16" y="106.68" rot="MR0"/>
<instance part="P30" gate="G$1" x="-137.16" y="104.14"/>
<instance part="P31" gate="G$1" x="-172.72" y="99.06"/>
<instance part="R12" gate="G$1" x="-63.5" y="58.42" rot="MR90"/>
<instance part="C19" gate="G$1" x="-63.5" y="43.18" rot="MR0"/>
<instance part="P32" gate="G$1" x="-63.5" y="38.1"/>
<instance part="P33" gate="G$1" x="-63.5" y="66.04"/>
<instance part="R2" gate="G$1" x="-2.54" y="101.6" rot="R90"/>
<instance part="R13" gate="G$1" x="5.08" y="101.6" rot="R90"/>
<instance part="P34" gate="G$1" x="-2.54" y="111.76" rot="MR0"/>
<instance part="R14" gate="G$1" x="-93.98" y="40.64" rot="MR90"/>
<instance part="P36" gate="G$1" x="-93.98" y="45.72"/>
<instance part="R16" gate="G$1" x="-81.28" y="101.6" rot="MR90"/>
<instance part="R17" gate="G$1" x="-88.9" y="101.6" rot="MR90"/>
<instance part="R18" gate="G$1" x="-96.52" y="101.6" rot="MR90"/>
<instance part="P37" gate="G$1" x="-88.9" y="111.76"/>
<instance part="R19" gate="G$1" x="-104.14" y="101.6" rot="MR90"/>
<instance part="R20" gate="G$1" x="-106.68" y="15.24" rot="MR90"/>
<instance part="P39" gate="G$1" x="-106.68" y="7.62"/>
<instance part="IC5" gate="G$1" x="-68.58" y="-5.08" rot="MR0"/>
<instance part="P40" gate="G$1" x="-55.88" y="0" rot="MR0"/>
<instance part="IC5" gate="G$2" x="-71.12" y="-5.08" rot="MR0"/>
<instance part="P41" gate="G$1" x="-71.12" y="5.08" rot="MR0"/>
<instance part="P42" gate="G$1" x="-71.12" y="-15.24" rot="MR0"/>
<instance part="SJ1" gate="1" x="-271.78" y="5.08" rot="R90"/>
<instance part="P29" gate="G$1" x="-271.78" y="-2.54"/>
<instance part="C20" gate="G$1" x="-86.36" y="0"/>
<instance part="P35" gate="G$1" x="-86.36" y="7.62" rot="MR0"/>
<instance part="P43" gate="G$1" x="-86.36" y="-5.08" rot="MR0"/>
<instance part="P44" gate="G$1" x="109.22" y="5.08"/>
<instance part="C21" gate="G$1" x="-48.26" y="91.44"/>
<instance part="P28" gate="G$1" x="-48.26" y="99.06" rot="MR0"/>
<instance part="P38" gate="G$1" x="-48.26" y="86.36" rot="MR0"/>
<instance part="C22" gate="G$1" x="53.34" y="142.24"/>
<instance part="P45" gate="G$1" x="53.34" y="149.86" rot="MR0"/>
<instance part="P46" gate="G$1" x="53.34" y="137.16" rot="MR0"/>
<instance part="C23" gate="G$1" x="-129.54" y="106.68"/>
<instance part="C24" gate="G$1" x="-187.96" y="106.68"/>
<instance part="C25" gate="G$1" x="-165.1" y="106.68"/>
<instance part="P47" gate="G$1" x="134.62" y="-12.7"/>
<instance part="U$1" gate="G$3" x="-15.24" y="66.04"/>
<instance part="C26" gate="G$1" x="119.38" y="2.54"/>
<instance part="C27" gate="G$1" x="127" y="2.54"/>
<instance part="P48" gate="G$1" x="119.38" y="-2.54"/>
<instance part="P49" gate="G$1" x="127" y="-2.54"/>
<instance part="P50" gate="G$1" x="109.22" y="15.24"/>
<instance part="U$3" gate="G$1" x="-15.24" y="-60.96"/>
<instance part="P51" gate="G$1" x="-7.62" y="-66.04" rot="MR0"/>
</instances>
<busses>
<bus name="MDIO,MDC,REFCLK,CRSDV,RXD0,RXD1,TXEN,TXD0,TXD1">
<segment>
<wire x1="-73.66" y1="30.48" x2="-73.66" y2="134.62" width="0.762" layer="92"/>
<wire x1="-73.66" y1="134.62" x2="25.4" y2="134.62" width="0.762" layer="92"/>
<wire x1="25.4" y1="134.62" x2="25.4" y2="15.24" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="0V" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="20"/>
<pinref part="P2" gate="G$1" pin="0V"/>
<wire x1="187.96" y1="-53.34" x2="190.5" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-53.34" x2="190.5" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="18"/>
<wire x1="187.96" y1="-50.8" x2="190.5" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-50.8" x2="190.5" y2="-53.34" width="0.1524" layer="91"/>
<junction x="190.5" y="-53.34"/>
<pinref part="X1" gate="G$1" pin="16"/>
<wire x1="187.96" y1="-48.26" x2="190.5" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-48.26" x2="190.5" y2="-50.8" width="0.1524" layer="91"/>
<junction x="190.5" y="-50.8"/>
<pinref part="X1" gate="G$1" pin="14"/>
<wire x1="187.96" y1="-45.72" x2="190.5" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-45.72" x2="190.5" y2="-48.26" width="0.1524" layer="91"/>
<junction x="190.5" y="-48.26"/>
<pinref part="X1" gate="G$1" pin="12"/>
<wire x1="187.96" y1="-43.18" x2="190.5" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-43.18" x2="190.5" y2="-45.72" width="0.1524" layer="91"/>
<junction x="190.5" y="-45.72"/>
<pinref part="X1" gate="G$1" pin="10"/>
<wire x1="187.96" y1="-40.64" x2="190.5" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-40.64" x2="190.5" y2="-43.18" width="0.1524" layer="91"/>
<junction x="190.5" y="-43.18"/>
<pinref part="X1" gate="G$1" pin="8"/>
<wire x1="187.96" y1="-38.1" x2="190.5" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-38.1" x2="190.5" y2="-40.64" width="0.1524" layer="91"/>
<junction x="190.5" y="-40.64"/>
<pinref part="X1" gate="G$1" pin="6"/>
<wire x1="187.96" y1="-35.56" x2="190.5" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-35.56" x2="190.5" y2="-38.1" width="0.1524" layer="91"/>
<junction x="190.5" y="-38.1"/>
<pinref part="X1" gate="G$1" pin="4"/>
<wire x1="187.96" y1="-33.02" x2="190.5" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-33.02" x2="190.5" y2="-35.56" width="0.1524" layer="91"/>
<junction x="190.5" y="-35.56"/>
</segment>
<segment>
<pinref part="IC1" gate="G$2" pin="0V@1"/>
<wire x1="68.58" y1="-20.32" x2="68.58" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-22.86" x2="73.66" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="0V@A"/>
<wire x1="73.66" y1="-22.86" x2="78.74" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-22.86" x2="83.82" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-22.86" x2="88.9" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-22.86" x2="88.9" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="P4" gate="G$1" pin="0V"/>
<wire x1="78.74" y1="-25.4" x2="78.74" y2="-22.86" width="0.1524" layer="91"/>
<junction x="78.74" y="-22.86"/>
<pinref part="IC1" gate="G$2" pin="0V@3"/>
<wire x1="78.74" y1="-20.32" x2="78.74" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="0V@2"/>
<wire x1="73.66" y1="-20.32" x2="73.66" y2="-22.86" width="0.1524" layer="91"/>
<junction x="73.66" y="-22.86"/>
<pinref part="IC1" gate="G$2" pin="0V@4"/>
<wire x1="83.82" y1="-20.32" x2="83.82" y2="-22.86" width="0.1524" layer="91"/>
<junction x="83.82" y="-22.86"/>
</segment>
<segment>
<pinref part="P5" gate="G$1" pin="0V"/>
<pinref part="U$1" gate="G$2" pin="13"/>
<wire x1="-25.4" y1="30.48" x2="-27.94" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="30.48" x2="-27.94" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="2"/>
<pinref part="P7" gate="G$1" pin="0V"/>
<wire x1="119.38" y1="27.94" x2="119.38" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P11" gate="G$1" pin="0V"/>
<pinref part="IC2" gate="POWER" pin="0V"/>
<wire x1="-30.48" y1="-17.78" x2="-30.48" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P10" gate="G$1" pin="0V"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="-30.48" y1="-38.1" x2="-30.48" y2="-35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P14" gate="G$1" pin="0V"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="63.5" y1="137.16" x2="63.5" y2="139.7" width="0.1524" layer="91"/>
<wire x1="63.5" y1="137.16" x2="71.12" y2="137.16" width="0.1524" layer="91"/>
<junction x="63.5" y="137.16"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="71.12" y1="137.16" x2="78.74" y2="137.16" width="0.1524" layer="91"/>
<wire x1="78.74" y1="137.16" x2="86.36" y2="137.16" width="0.1524" layer="91"/>
<wire x1="86.36" y1="137.16" x2="93.98" y2="137.16" width="0.1524" layer="91"/>
<wire x1="93.98" y1="137.16" x2="93.98" y2="139.7" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="86.36" y1="137.16" x2="86.36" y2="139.7" width="0.1524" layer="91"/>
<junction x="86.36" y="137.16"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="78.74" y1="139.7" x2="78.74" y2="137.16" width="0.1524" layer="91"/>
<junction x="78.74" y="137.16"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="71.12" y1="139.7" x2="71.12" y2="137.16" width="0.1524" layer="91"/>
<junction x="71.12" y="137.16"/>
</segment>
<segment>
<pinref part="P16" gate="G$1" pin="0V"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="-38.1" y1="86.36" x2="-38.1" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GND"/>
<pinref part="P17" gate="G$1" pin="0V"/>
<wire x1="-20.32" y1="78.74" x2="-20.32" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="P19" gate="G$1" pin="0V"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="-200.66" y1="38.1" x2="-200.66" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-208.28" y1="38.1" x2="-208.28" y2="40.64" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="-208.28" y1="38.1" x2="-215.9" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-215.9" y1="38.1" x2="-215.9" y2="40.64" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="-215.9" y1="38.1" x2="-223.52" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-223.52" y1="38.1" x2="-223.52" y2="40.64" width="0.1524" layer="91"/>
<junction x="-215.9" y="38.1"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="-223.52" y1="38.1" x2="-231.14" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-231.14" y1="38.1" x2="-231.14" y2="40.64" width="0.1524" layer="91"/>
<junction x="-223.52" y="38.1"/>
<pinref part="X2" gate="G$1" pin="8"/>
<wire x1="-231.14" y1="38.1" x2="-248.92" y2="38.1" width="0.1524" layer="91"/>
<junction x="-231.14" y="38.1"/>
<wire x1="-208.28" y1="38.1" x2="-200.66" y2="38.1" width="0.1524" layer="91"/>
<junction x="-208.28" y="38.1"/>
<junction x="-200.66" y="38.1"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="P20" gate="G$1" pin="0V"/>
<wire x1="-243.84" y1="0" x2="-243.84" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="P21" gate="G$1" pin="0V"/>
<wire x1="-180.34" y1="53.34" x2="-180.34" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="GND_EP"/>
<pinref part="P22" gate="G$1" pin="0V"/>
<wire x1="-144.78" y1="15.24" x2="-144.78" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="P23" gate="G$1" pin="0V"/>
<wire x1="-114.3" y1="7.62" x2="-114.3" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-106.68" y1="7.62" x2="-106.68" y2="10.16" width="0.1524" layer="91"/>
<pinref part="P39" gate="G$1" pin="0V"/>
<pinref part="R20" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="P24" gate="G$1" pin="0V"/>
<wire x1="-99.06" y1="7.62" x2="-99.06" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="TXD2"/>
<wire x1="-116.84" y1="81.28" x2="-114.3" y2="81.28" width="0.1524" layer="91"/>
<pinref part="P25" gate="G$1" pin="0V"/>
<wire x1="-114.3" y1="78.74" x2="-114.3" y2="81.28" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="TXD3"/>
<wire x1="-114.3" y1="78.74" x2="-116.84" y2="78.74" width="0.1524" layer="91"/>
<junction x="-114.3" y="78.74"/>
</segment>
<segment>
<pinref part="P26" gate="G$1" pin="0V"/>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="-109.22" y1="101.6" x2="-109.22" y2="104.14" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="-109.22" y1="104.14" x2="-119.38" y2="104.14" width="0.1524" layer="91"/>
<junction x="-109.22" y="104.14"/>
</segment>
<segment>
<pinref part="C18" gate="G$1" pin="2"/>
<pinref part="P30" gate="G$1" pin="0V"/>
<pinref part="C23" gate="G$1" pin="2"/>
<wire x1="-137.16" y1="104.14" x2="-129.54" y2="104.14" width="0.1524" layer="91"/>
<junction x="-137.16" y="104.14"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="2"/>
<pinref part="P31" gate="G$1" pin="0V"/>
<wire x1="-172.72" y1="99.06" x2="-172.72" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-172.72" y1="101.6" x2="-172.72" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-172.72" y1="101.6" x2="-180.34" y2="101.6" width="0.1524" layer="91"/>
<junction x="-172.72" y="101.6"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="-180.34" y1="101.6" x2="-180.34" y2="104.14" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="2"/>
<wire x1="-187.96" y1="104.14" x2="-187.96" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-187.96" y1="101.6" x2="-180.34" y2="101.6" width="0.1524" layer="91"/>
<junction x="-180.34" y="101.6"/>
<wire x1="-172.72" y1="101.6" x2="-165.1" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C25" gate="G$1" pin="2"/>
<wire x1="-165.1" y1="101.6" x2="-165.1" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="2"/>
<pinref part="P32" gate="G$1" pin="0V"/>
<wire x1="-63.5" y1="38.1" x2="-63.5" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC5" gate="G$2" pin="0V"/>
<pinref part="P42" gate="G$1" pin="0V"/>
<wire x1="-71.12" y1="-15.24" x2="-71.12" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SJ1" gate="1" pin="1"/>
<pinref part="P29" gate="G$1" pin="0V"/>
<wire x1="-271.78" y1="0" x2="-271.78" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P43" gate="G$1" pin="0V"/>
<pinref part="C20" gate="G$1" pin="2"/>
<wire x1="-86.36" y1="-5.08" x2="-86.36" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P38" gate="G$1" pin="0V"/>
<pinref part="C21" gate="G$1" pin="2"/>
<wire x1="-48.26" y1="86.36" x2="-48.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P46" gate="G$1" pin="0V"/>
<pinref part="C22" gate="G$1" pin="2"/>
<wire x1="53.34" y1="137.16" x2="53.34" y2="139.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="S1" gate="G$1" pin="2"/>
<wire x1="144.78" y1="-10.16" x2="144.78" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="134.62" y1="0" x2="134.62" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-10.16" x2="144.78" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="P47" gate="G$1" pin="0V"/>
<wire x1="134.62" y1="-12.7" x2="134.62" y2="-10.16" width="0.1524" layer="91"/>
<junction x="134.62" y="-10.16"/>
</segment>
<segment>
<pinref part="P48" gate="G$1" pin="0V"/>
<pinref part="C26" gate="G$1" pin="2"/>
<wire x1="119.38" y1="-2.54" x2="119.38" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P49" gate="G$1" pin="0V"/>
<pinref part="C27" gate="G$1" pin="2"/>
<wire x1="127" y1="-2.54" x2="127" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="BOOT0"/>
<pinref part="P50" gate="G$1" pin="0V"/>
<wire x1="106.68" y1="15.24" x2="109.22" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="3"/>
<wire x1="-10.16" y1="-58.42" x2="-7.62" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="P51" gate="G$1" pin="0V"/>
<wire x1="-7.62" y1="-58.42" x2="-7.62" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="172.72" y1="-30.48" x2="160.02" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-30.48" x2="160.02" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-25.4" x2="190.5" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-25.4" x2="190.5" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="190.5" y1="-30.48" x2="187.96" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="P1" gate="G$1" pin="+3.3V"/>
<junction x="190.5" y="-25.4"/>
</segment>
<segment>
<pinref part="P3" gate="G$1" pin="+3.3V"/>
<pinref part="IC1" gate="G$2" pin="+3.3V@4"/>
<wire x1="78.74" y1="124.46" x2="78.74" y2="121.92" width="0.1524" layer="91"/>
<wire x1="78.74" y1="121.92" x2="78.74" y2="119.38" width="0.1524" layer="91"/>
<wire x1="78.74" y1="121.92" x2="73.66" y2="121.92" width="0.1524" layer="91"/>
<junction x="78.74" y="121.92"/>
<pinref part="IC1" gate="G$2" pin="+3.3V@1"/>
<wire x1="73.66" y1="121.92" x2="68.58" y2="121.92" width="0.1524" layer="91"/>
<wire x1="68.58" y1="121.92" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<wire x1="63.5" y1="121.92" x2="63.5" y2="119.38" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="+3.3V@2"/>
<wire x1="68.58" y1="121.92" x2="68.58" y2="119.38" width="0.1524" layer="91"/>
<junction x="68.58" y="121.92"/>
<pinref part="IC1" gate="G$2" pin="+3.3V@3"/>
<wire x1="73.66" y1="121.92" x2="73.66" y2="119.38" width="0.1524" layer="91"/>
<junction x="73.66" y="121.92"/>
<wire x1="78.74" y1="121.92" x2="83.82" y2="121.92" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="+3.3V@A"/>
<wire x1="83.82" y1="121.92" x2="88.9" y2="121.92" width="0.1524" layer="91"/>
<wire x1="88.9" y1="121.92" x2="93.98" y2="121.92" width="0.1524" layer="91"/>
<wire x1="93.98" y1="121.92" x2="93.98" y2="119.38" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="+3.3V@6"/>
<wire x1="88.9" y1="121.92" x2="88.9" y2="119.38" width="0.1524" layer="91"/>
<junction x="88.9" y="121.92"/>
<pinref part="IC1" gate="G$2" pin="+3.3V@5"/>
<wire x1="83.82" y1="121.92" x2="83.82" y2="119.38" width="0.1524" layer="91"/>
<junction x="83.82" y="121.92"/>
</segment>
<segment>
<pinref part="U$1" gate="G$2" pin="7"/>
<wire x1="-25.4" y1="38.1" x2="-30.48" y2="38.1" width="0.1524" layer="91"/>
<pinref part="P6" gate="G$1" pin="+3.3V"/>
<wire x1="-30.48" y1="38.1" x2="-30.48" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="P8" gate="G$1" pin="+3.3V"/>
<wire x1="-30.48" y1="-27.94" x2="-30.48" y2="-25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="POWER" pin="+3.3V"/>
<pinref part="P9" gate="G$1" pin="+3.3V"/>
<wire x1="-30.48" y1="7.62" x2="-30.48" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="SPIFLASH" pin="!WP!"/>
<wire x1="-43.18" y1="-5.08" x2="-45.72" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-5.08" x2="-45.72" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="IC2" gate="SPIFLASH" pin="!HOLD!"/>
<wire x1="-45.72" y1="-2.54" x2="-45.72" y2="0" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-2.54" x2="-45.72" y2="-2.54" width="0.1524" layer="91"/>
<junction x="-45.72" y="-2.54"/>
<pinref part="P12" gate="G$1" pin="+3.3V"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="P13" gate="G$1" pin="+3.3V"/>
<wire x1="63.5" y1="147.32" x2="63.5" y2="149.86" width="0.1524" layer="91"/>
<junction x="63.5" y="149.86"/>
<wire x1="63.5" y1="149.86" x2="71.12" y2="149.86" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="71.12" y1="149.86" x2="71.12" y2="147.32" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="71.12" y1="149.86" x2="78.74" y2="149.86" width="0.1524" layer="91"/>
<wire x1="78.74" y1="149.86" x2="78.74" y2="147.32" width="0.1524" layer="91"/>
<junction x="71.12" y="149.86"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="78.74" y1="149.86" x2="86.36" y2="149.86" width="0.1524" layer="91"/>
<wire x1="86.36" y1="149.86" x2="86.36" y2="147.32" width="0.1524" layer="91"/>
<junction x="78.74" y="149.86"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="86.36" y1="149.86" x2="93.98" y2="149.86" width="0.1524" layer="91"/>
<wire x1="93.98" y1="149.86" x2="93.98" y2="147.32" width="0.1524" layer="91"/>
<junction x="86.36" y="149.86"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="1"/>
<pinref part="P15" gate="G$1" pin="+3.3V"/>
<wire x1="-38.1" y1="96.52" x2="-38.1" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="VDD"/>
<pinref part="P18" gate="G$1" pin="+3.3V"/>
<wire x1="-20.32" y1="104.14" x2="-20.32" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="VDDIO"/>
<pinref part="P27" gate="G$1" pin="+3.3V"/>
<wire x1="-142.24" y1="99.06" x2="-142.24" y2="114.3" width="0.1524" layer="91"/>
<pinref part="B1" gate="G$1" pin="1"/>
<wire x1="-142.24" y1="114.3" x2="-142.24" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-144.78" y1="114.3" x2="-142.24" y2="114.3" width="0.1524" layer="91"/>
<junction x="-142.24" y="114.3"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="-137.16" y1="111.76" x2="-137.16" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-137.16" y1="114.3" x2="-142.24" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C23" gate="G$1" pin="1"/>
<wire x1="-129.54" y1="111.76" x2="-129.54" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="114.3" x2="-137.16" y2="114.3" width="0.1524" layer="91"/>
<junction x="-137.16" y="114.3"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="P33" gate="G$1" pin="+3.3V"/>
<wire x1="-63.5" y1="63.5" x2="-63.5" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P34" gate="G$1" pin="+3.3V"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="111.76" x2="-2.54" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="109.22" x2="-2.54" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="109.22" x2="5.08" y2="109.22" width="0.1524" layer="91"/>
<junction x="-2.54" y="109.22"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="5.08" y1="109.22" x2="5.08" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="P36" gate="G$1" pin="+3.3V"/>
</segment>
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="-96.52" y1="106.68" x2="-96.52" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="109.22" x2="-88.9" y2="109.22" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="-88.9" y1="109.22" x2="-81.28" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="106.68" x2="-81.28" y2="109.22" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="-88.9" y1="106.68" x2="-88.9" y2="109.22" width="0.1524" layer="91"/>
<junction x="-88.9" y="109.22"/>
<pinref part="P37" gate="G$1" pin="+3.3V"/>
<wire x1="-88.9" y1="109.22" x2="-88.9" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="-104.14" y1="109.22" x2="-104.14" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="109.22" x2="-104.14" y2="109.22" width="0.1524" layer="91"/>
<junction x="-96.52" y="109.22"/>
</segment>
<segment>
<pinref part="P40" gate="G$1" pin="+3.3V"/>
<wire x1="-55.88" y1="0" x2="-55.88" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="EN"/>
<wire x1="-55.88" y1="-5.08" x2="-58.42" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC5" gate="G$2" pin="+3.3V"/>
<pinref part="P41" gate="G$1" pin="+3.3V"/>
<wire x1="-71.12" y1="5.08" x2="-71.12" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="1"/>
<pinref part="P35" gate="G$1" pin="+3.3V"/>
<wire x1="-86.36" y1="5.08" x2="-86.36" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VREF+"/>
<wire x1="106.68" y1="2.54" x2="109.22" y2="2.54" width="0.1524" layer="91"/>
<wire x1="109.22" y1="2.54" x2="109.22" y2="0" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VBAT"/>
<wire x1="106.68" y1="0" x2="109.22" y2="0" width="0.1524" layer="91"/>
<pinref part="P44" gate="G$1" pin="+3.3V"/>
<wire x1="109.22" y1="2.54" x2="109.22" y2="5.08" width="0.1524" layer="91"/>
<junction x="109.22" y="2.54"/>
</segment>
<segment>
<pinref part="C21" gate="G$1" pin="1"/>
<pinref part="P28" gate="G$1" pin="+3.3V"/>
<wire x1="-48.26" y1="96.52" x2="-48.26" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="1"/>
<pinref part="P45" gate="G$1" pin="+3.3V"/>
<wire x1="53.34" y1="147.32" x2="53.34" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="S1" gate="G$1" pin="1"/>
<wire x1="144.78" y1="5.08" x2="144.78" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="!RESET!" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="15"/>
<wire x1="172.72" y1="-48.26" x2="152.4" y2="-48.26" width="0.1524" layer="91"/>
<label x="160.02" y="-48.26" size="1.778" layer="95"/>
<wire x1="152.4" y1="-48.26" x2="152.4" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="134.62" y1="7.62" x2="134.62" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="!RESET!"/>
<wire x1="134.62" y1="17.78" x2="106.68" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="144.78" y1="15.24" x2="144.78" y2="17.78" width="0.1524" layer="91"/>
<wire x1="144.78" y1="17.78" x2="134.62" y2="17.78" width="0.1524" layer="91"/>
<junction x="134.62" y="17.78"/>
<wire x1="152.4" y1="17.78" x2="144.78" y2="17.78" width="0.1524" layer="91"/>
<junction x="144.78" y="17.78"/>
<label x="109.22" y="17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWO" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="13"/>
<wire x1="172.72" y1="-45.72" x2="5.08" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-45.72" x2="5.08" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB3-TRACESWO"/>
<wire x1="5.08" y1="60.96" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
<label x="160.02" y="-45.72" size="1.778" layer="95"/>
<label x="30.48" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWCLK" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="9"/>
<wire x1="172.72" y1="-40.64" x2="7.62" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-40.64" x2="7.62" y2="76.2" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PA14-SWCLK"/>
<wire x1="7.62" y1="76.2" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<label x="160.02" y="-40.64" size="1.778" layer="95"/>
<label x="30.48" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PA13-SWDIO"/>
<wire x1="48.26" y1="78.74" x2="10.16" y2="78.74" width="0.1524" layer="91"/>
<wire x1="10.16" y1="78.74" x2="10.16" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="7"/>
<wire x1="10.16" y1="-38.1" x2="172.72" y2="-38.1" width="0.1524" layer="91"/>
<label x="160.02" y="-38.1" size="1.778" layer="95"/>
<label x="30.48" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="!TRESET!" class="0">
<segment>
<pinref part="U$1" gate="G$2" pin="5"/>
<wire x1="-25.4" y1="40.64" x2="-35.56" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="40.64" x2="-35.56" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="58.42" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB4"/>
<label x="30.48" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="UART1_RX" class="0">
<segment>
<pinref part="U$1" gate="G$2" pin="6"/>
<wire x1="-10.16" y1="40.64" x2="0" y2="40.64" width="0.1524" layer="91"/>
<wire x1="0" y1="40.64" x2="0" y2="86.36" width="0.1524" layer="91"/>
<wire x1="0" y1="86.36" x2="48.26" y2="86.36" width="0.1524" layer="91"/>
<label x="30.48" y="86.36" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PA10"/>
</segment>
</net>
<net name="UART1_TX" class="0">
<segment>
<pinref part="U$1" gate="G$2" pin="8"/>
<wire x1="-10.16" y1="38.1" x2="-2.54" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="38.1" x2="-2.54" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB6"/>
<wire x1="-2.54" y1="53.34" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
<label x="30.48" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="BOOT0" class="0">
<segment>
<wire x1="-53.34" y1="38.1" x2="-53.34" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="55.88" x2="48.26" y2="55.88" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB5"/>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="-45.72" y1="38.1" x2="-53.34" y2="38.1" width="0.1524" layer="91"/>
<label x="30.48" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PH0"/>
<pinref part="Q1" gate="G$1" pin="1"/>
<wire x1="106.68" y1="25.4" x2="109.22" y2="25.4" width="0.1524" layer="91"/>
<wire x1="109.22" y1="25.4" x2="109.22" y2="38.1" width="0.1524" layer="91"/>
<wire x1="109.22" y1="38.1" x2="111.76" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PH1"/>
<wire x1="106.68" y1="22.86" x2="129.54" y2="22.86" width="0.1524" layer="91"/>
<wire x1="129.54" y1="22.86" x2="129.54" y2="38.1" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="3"/>
<wire x1="129.54" y1="38.1" x2="127" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SPI3_MOSI" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC12"/>
<wire x1="-12.7" y1="-5.08" x2="48.26" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC2" gate="SPIFLASH" pin="SDI"/>
<label x="-10.16" y="-5.08" size="1.778" layer="95"/>
<label x="30.48" y="-5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="FLASH_CS" class="0">
<segment>
<pinref part="IC2" gate="SPIFLASH" pin="!SS!"/>
<wire x1="-12.7" y1="-7.62" x2="2.54" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PA15"/>
<wire x1="48.26" y1="73.66" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="2.54" y1="73.66" x2="2.54" y2="-7.62" width="0.1524" layer="91"/>
<label x="30.48" y="73.66" size="1.778" layer="95"/>
<label x="-10.16" y="-7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="UART3_RX" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="5"/>
<wire x1="172.72" y1="-35.56" x2="157.48" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-35.56" x2="157.48" y2="88.9" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD9"/>
<wire x1="157.48" y1="88.9" x2="106.68" y2="88.9" width="0.1524" layer="91"/>
<label x="109.22" y="88.9" size="1.778" layer="95"/>
<label x="160.02" y="-35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="UART3_TX" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="17"/>
<wire x1="172.72" y1="-50.8" x2="154.94" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-50.8" x2="154.94" y2="91.44" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD8"/>
<wire x1="154.94" y1="91.44" x2="106.68" y2="91.44" width="0.1524" layer="91"/>
<label x="109.22" y="91.44" size="1.778" layer="95"/>
<label x="160.02" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SDA"/>
<wire x1="-7.62" y1="91.44" x2="5.08" y2="91.44" width="0.1524" layer="91"/>
<wire x1="5.08" y1="91.44" x2="20.32" y2="91.44" width="0.1524" layer="91"/>
<wire x1="20.32" y1="91.44" x2="20.32" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB9"/>
<wire x1="20.32" y1="45.72" x2="48.26" y2="45.72" width="0.1524" layer="91"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="5.08" y1="91.44" x2="5.08" y2="96.52" width="0.1524" layer="91"/>
<junction x="5.08" y="91.44"/>
<label x="30.48" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SCK"/>
<wire x1="-7.62" y1="93.98" x2="-2.54" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="93.98" x2="22.86" y2="93.98" width="0.1524" layer="91"/>
<wire x1="22.86" y1="93.98" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB8"/>
<wire x1="22.86" y1="48.26" x2="48.26" y2="48.26" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="93.98" x2="-2.54" y2="96.52" width="0.1524" layer="91"/>
<junction x="-2.54" y="93.98"/>
<label x="30.48" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="TXP"/>
<pinref part="X2" gate="G$1" pin="TD+"/>
<wire x1="-170.18" y1="91.44" x2="-223.52" y2="91.44" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="-223.52" y1="91.44" x2="-248.92" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-223.52" y1="48.26" x2="-223.52" y2="91.44" width="0.1524" layer="91"/>
<junction x="-223.52" y="91.44"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="-223.52" y1="101.6" x2="-223.52" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="TXN"/>
<wire x1="-170.18" y1="88.9" x2="-195.58" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-195.58" y1="88.9" x2="-195.58" y2="76.2" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="TD-"/>
<wire x1="-195.58" y1="76.2" x2="-215.9" y2="76.2" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="-215.9" y1="76.2" x2="-248.92" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-215.9" y1="48.26" x2="-215.9" y2="76.2" width="0.1524" layer="91"/>
<junction x="-215.9" y="76.2"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="-215.9" y1="101.6" x2="-215.9" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="RXP"/>
<wire x1="-170.18" y1="86.36" x2="-193.04" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-193.04" y1="86.36" x2="-193.04" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="RD+"/>
<wire x1="-193.04" y1="71.12" x2="-208.28" y2="71.12" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="-208.28" y1="71.12" x2="-248.92" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-208.28" y1="48.26" x2="-208.28" y2="71.12" width="0.1524" layer="91"/>
<junction x="-208.28" y="71.12"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="-208.28" y1="101.6" x2="-208.28" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="RXN"/>
<pinref part="X2" gate="G$1" pin="RD-"/>
<wire x1="-170.18" y1="83.82" x2="-190.5" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-190.5" y1="83.82" x2="-190.5" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-190.5" y1="55.88" x2="-200.66" y2="55.88" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="-200.66" y1="55.88" x2="-248.92" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="48.26" x2="-200.66" y2="55.88" width="0.1524" layer="91"/>
<junction x="-200.66" y="55.88"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="-200.66" y1="101.6" x2="-200.66" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="C-L"/>
<pinref part="IC4" gate="G$1" pin="LED2/!INTSEL!"/>
<wire x1="-170.18" y1="76.2" x2="-185.42" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-185.42" y1="76.2" x2="-185.42" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-185.42" y1="17.78" x2="-248.92" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="-114.3" y1="20.32" x2="-114.3" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="RXERR/RXD4/PHYAD0"/>
<wire x1="-114.3" y1="43.18" x2="-116.84" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="RXCLK/PHYAD1"/>
<wire x1="-116.84" y1="73.66" x2="-99.06" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="-99.06" y1="73.66" x2="-99.06" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="RBIAS"/>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="-170.18" y1="71.12" x2="-180.34" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-180.34" y1="71.12" x2="-180.34" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="-109.22" y1="111.76" x2="-109.22" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="114.3" x2="-119.38" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="-119.38" y1="114.3" x2="-119.38" y2="111.76" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="VDDCR"/>
<wire x1="-119.38" y1="114.3" x2="-124.46" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-124.46" y1="114.3" x2="-124.46" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-124.46" y1="99.06" x2="-139.7" y2="99.06" width="0.1524" layer="91"/>
<junction x="-119.38" y="114.3"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="!RST!"/>
<wire x1="-116.84" y1="50.8" x2="-63.5" y2="50.8" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="-63.5" y1="50.8" x2="-63.5" y2="53.34" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="-63.5" y1="50.8" x2="-63.5" y2="48.26" width="0.1524" layer="91"/>
<junction x="-63.5" y="50.8"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="RXD2/RMIISEL"/>
<wire x1="-116.84" y1="66.04" x2="-104.14" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="66.04" x2="-104.14" y2="96.52" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="-106.68" y1="20.32" x2="-106.68" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="RXD3/PHYAD2"/>
<wire x1="-106.68" y1="63.5" x2="-116.84" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TXEN" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="TXEN"/>
<wire x1="-116.84" y1="88.9" x2="-76.2" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="91.44" x2="-76.2" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="25.4" y1="43.18" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB11"/>
<wire x1="27.94" y1="40.64" x2="48.26" y2="40.64" width="0.1524" layer="91"/>
<label x="30.48" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="TXD0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PB12"/>
<wire x1="27.94" y1="38.1" x2="48.26" y2="38.1" width="0.1524" layer="91"/>
<wire x1="25.4" y1="40.64" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
<label x="30.48" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="TXD0"/>
<wire x1="-116.84" y1="86.36" x2="-76.2" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="88.9" x2="-76.2" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TXD1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PB13"/>
<wire x1="27.94" y1="35.56" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
<wire x1="25.4" y1="38.1" x2="27.94" y2="35.56" width="0.1524" layer="91"/>
<label x="30.48" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="TXD1"/>
<wire x1="-116.84" y1="83.82" x2="-76.2" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="86.36" x2="-76.2" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RXD0" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="RXD0/MODE0"/>
<wire x1="-116.84" y1="71.12" x2="-96.52" y2="71.12" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="-96.52" y1="96.52" x2="-96.52" y2="71.12" width="0.1524" layer="91"/>
<junction x="-96.52" y="71.12"/>
<wire x1="-96.52" y1="71.12" x2="-76.2" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="73.66" x2="-76.2" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="PC4"/>
<wire x1="27.94" y1="15.24" x2="48.26" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="17.78" x2="27.94" y2="15.24" width="0.1524" layer="91"/>
<label x="30.48" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="RXD1" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="1"/>
<pinref part="IC4" gate="G$1" pin="RXD1/MODE1"/>
<wire x1="-116.84" y1="68.58" x2="-88.9" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="68.58" x2="-88.9" y2="96.52" width="0.1524" layer="91"/>
<junction x="-88.9" y="68.58"/>
<wire x1="-88.9" y1="68.58" x2="-76.2" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="71.12" x2="-76.2" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="PC5"/>
<wire x1="27.94" y1="12.7" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="25.4" y1="15.24" x2="27.94" y2="12.7" width="0.1524" layer="91"/>
<label x="30.48" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="CRSDV" class="0">
<segment>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="-73.66" y1="60.96" x2="-76.2" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="COL/CRS_DV/MODE2"/>
<wire x1="-116.84" y1="58.42" x2="-81.28" y2="58.42" width="0.1524" layer="91"/>
<junction x="-81.28" y="58.42"/>
<wire x1="-81.28" y1="58.42" x2="-76.2" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="58.42" x2="-81.28" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="PA7"/>
<wire x1="27.94" y1="93.98" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
<wire x1="25.4" y1="96.52" x2="27.94" y2="93.98" width="0.1524" layer="91"/>
<label x="30.48" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="MDIO" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PA2"/>
<wire x1="25.4" y1="109.22" x2="27.94" y2="106.68" width="0.1524" layer="91"/>
<wire x1="27.94" y1="106.68" x2="48.26" y2="106.68" width="0.1524" layer="91"/>
<label x="30.48" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="MDIO"/>
<wire x1="-116.84" y1="35.56" x2="-93.98" y2="35.56" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="1"/>
<junction x="-93.98" y="35.56"/>
<wire x1="-93.98" y1="35.56" x2="-76.2" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="38.1" x2="-76.2" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MDC" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC1"/>
<wire x1="25.4" y1="25.4" x2="27.94" y2="22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="22.86" x2="48.26" y2="22.86" width="0.1524" layer="91"/>
<label x="30.48" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="MDC"/>
<wire x1="-116.84" y1="33.02" x2="-76.2" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="35.56" x2="-76.2" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="REFCLK" class="0">
<segment>
<wire x1="25.4" y1="111.76" x2="27.94" y2="109.22" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PA1"/>
<wire x1="27.94" y1="109.22" x2="48.26" y2="109.22" width="0.1524" layer="91"/>
<label x="30.48" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-73.66" y1="30.48" x2="-76.2" y2="27.94" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="XTAL1/CLKIN"/>
<wire x1="-116.84" y1="27.94" x2="-81.28" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="27.94" x2="-81.28" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="OUT"/>
<wire x1="-81.28" y1="-5.08" x2="-78.74" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="27.94" x2="-81.28" y2="27.94" width="0.1524" layer="91"/>
<junction x="-81.28" y="27.94"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="MT2"/>
<wire x1="-271.78" y1="12.7" x2="-271.78" y2="10.16" width="0.1524" layer="91"/>
<pinref part="SJ1" gate="1" pin="2"/>
</segment>
</net>
<net name="SPI3_CLK" class="0">
<segment>
<pinref part="IC2" gate="SPIFLASH" pin="SCK"/>
<pinref part="IC1" gate="G$1" pin="PC10"/>
<wire x1="-12.7" y1="0" x2="48.26" y2="0" width="0.1524" layer="91"/>
<label x="-10.16" y="0" size="1.778" layer="95"/>
<label x="30.48" y="0" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI3_MISO" class="0">
<segment>
<pinref part="IC2" gate="SPIFLASH" pin="SDO"/>
<pinref part="IC1" gate="G$1" pin="PC11"/>
<wire x1="-12.7" y1="-2.54" x2="48.26" y2="-2.54" width="0.1524" layer="91"/>
<label x="-10.16" y="-2.54" size="1.778" layer="95"/>
<label x="30.48" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="-231.14" y1="48.26" x2="-231.14" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="CR"/>
<wire x1="-248.92" y1="63.5" x2="-231.14" y2="63.5" width="0.1524" layer="91"/>
<junction x="-231.14" y="63.5"/>
<wire x1="-231.14" y1="63.5" x2="-231.14" y2="83.82" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="CT"/>
<wire x1="-248.92" y1="83.82" x2="-231.14" y2="83.82" width="0.1524" layer="91"/>
<junction x="-231.14" y="83.82"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="-241.3" y1="106.68" x2="-241.3" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-231.14" y1="114.3" x2="-223.52" y2="114.3" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="-223.52" y1="114.3" x2="-215.9" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-215.9" y1="114.3" x2="-208.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-208.28" y1="114.3" x2="-200.66" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="114.3" x2="-200.66" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="-208.28" y1="114.3" x2="-208.28" y2="111.76" width="0.1524" layer="91"/>
<junction x="-208.28" y="114.3"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="-215.9" y1="114.3" x2="-215.9" y2="111.76" width="0.1524" layer="91"/>
<junction x="-215.9" y="114.3"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="-223.52" y1="114.3" x2="-223.52" y2="111.76" width="0.1524" layer="91"/>
<junction x="-223.52" y="114.3"/>
<pinref part="B1" gate="G$1" pin="2"/>
<wire x1="-200.66" y1="114.3" x2="-187.96" y2="114.3" width="0.1524" layer="91"/>
<junction x="-200.66" y="114.3"/>
<wire x1="-187.96" y1="114.3" x2="-180.34" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-180.34" y1="114.3" x2="-172.72" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-172.72" y1="114.3" x2="-165.1" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="114.3" x2="-154.94" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="114.3" x2="-152.4" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="114.3" x2="-154.94" y2="104.14" width="0.1524" layer="91"/>
<junction x="-154.94" y="114.3"/>
<pinref part="IC4" gate="G$1" pin="VDD1A"/>
<wire x1="-144.78" y1="99.06" x2="-144.78" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="104.14" x2="-147.32" y2="104.14" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="VDD2A"/>
<wire x1="-147.32" y1="104.14" x2="-144.78" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-147.32" y1="104.14" x2="-147.32" y2="99.06" width="0.1524" layer="91"/>
<junction x="-147.32" y="104.14"/>
<pinref part="C16" gate="G$1" pin="1"/>
<wire x1="-172.72" y1="111.76" x2="-172.72" y2="114.3" width="0.1524" layer="91"/>
<junction x="-172.72" y="114.3"/>
<pinref part="C17" gate="G$1" pin="1"/>
<wire x1="-180.34" y1="111.76" x2="-180.34" y2="114.3" width="0.1524" layer="91"/>
<junction x="-180.34" y="114.3"/>
<wire x1="-241.3" y1="114.3" x2="-231.14" y2="114.3" width="0.1524" layer="91"/>
<junction x="-231.14" y="114.3"/>
<pinref part="C24" gate="G$1" pin="1"/>
<wire x1="-187.96" y1="111.76" x2="-187.96" y2="114.3" width="0.1524" layer="91"/>
<junction x="-187.96" y="114.3"/>
<pinref part="C25" gate="G$1" pin="1"/>
<wire x1="-165.1" y1="111.76" x2="-165.1" y2="114.3" width="0.1524" layer="91"/>
<junction x="-165.1" y="114.3"/>
<wire x1="-231.14" y1="83.82" x2="-231.14" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="UART6_RX" class="0">
<segment>
<pinref part="U$1" gate="G$3" pin="1"/>
<wire x1="-10.16" y1="66.04" x2="12.7" y2="66.04" width="0.1524" layer="91"/>
<wire x1="12.7" y1="66.04" x2="12.7" y2="7.62" width="0.1524" layer="91"/>
<wire x1="12.7" y1="7.62" x2="48.26" y2="7.62" width="0.1524" layer="91"/>
<label x="30.48" y="7.62" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PC7"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VCAP2"/>
<pinref part="C26" gate="G$1" pin="1"/>
<wire x1="106.68" y1="7.62" x2="119.38" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VCAP1"/>
<wire x1="106.68" y1="10.16" x2="127" y2="10.16" width="0.1524" layer="91"/>
<pinref part="C27" gate="G$1" pin="1"/>
<wire x1="127" y1="10.16" x2="127" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="A-L"/>
<wire x1="-241.3" y1="22.86" x2="-248.92" y2="22.86" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="-241.3" y1="96.52" x2="-241.3" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="A-R"/>
<wire x1="-248.92" y1="33.02" x2="-187.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-187.96" y1="33.02" x2="-187.96" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="LED1/REGOFF"/>
<wire x1="-187.96" y1="78.74" x2="-170.18" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="C-R"/>
<wire x1="-248.92" y1="27.94" x2="-243.84" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="-243.84" y1="27.94" x2="-243.84" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALT_UART1_TX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PA9"/>
<wire x1="48.26" y1="88.9" x2="15.24" y2="88.9" width="0.1524" layer="91"/>
<wire x1="15.24" y1="88.9" x2="15.24" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-60.96" x2="-10.16" y2="-60.96" width="0.1524" layer="91"/>
<label x="27.94" y="88.9" size="1.778" layer="95"/>
<label x="-5.08" y="-60.96" size="1.778" layer="95"/>
<pinref part="U$3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="ALT_UART1_RX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PB7"/>
<wire x1="48.26" y1="50.8" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
<wire x1="17.78" y1="50.8" x2="17.78" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-63.5" x2="-10.16" y2="-63.5" width="0.1524" layer="91"/>
<label x="27.94" y="50.8" size="1.778" layer="95"/>
<label x="-5.08" y="-63.5" size="1.778" layer="95"/>
<pinref part="U$3" gate="G$1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
