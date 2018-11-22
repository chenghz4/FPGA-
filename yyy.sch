<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="PartialBusOnly|BaseDashIndex" name="RenameBusIO" />
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4(7:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_6(3:0)" />
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="clk" />
        <signal name="left" />
        <signal name="right" />
        <signal name="rest" />
        <signal name="nandu" />
        <signal name="HS" />
        <signal name="VS" />
        <signal name="leda" />
        <signal name="RED(2:0)" />
        <signal name="GREEN(2:0)" />
        <signal name="BLUE(1:0)" />
        <signal name="XLXN_22(7:0)" />
        <signal name="XLXN_23(3:0)" />
        <signal name="digit_anode(3:0)" />
        <signal name="segment(7:0)" />
        <signal name="a" />
        <signal name="c" />
        <signal name="LL(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="left" />
        <port polarity="Input" name="right" />
        <port polarity="Input" name="rest" />
        <port polarity="Input" name="nandu" />
        <port polarity="Output" name="HS" />
        <port polarity="Output" name="VS" />
        <port polarity="Output" name="leda" />
        <port polarity="Output" name="RED(2:0)" />
        <port polarity="Output" name="GREEN(2:0)" />
        <port polarity="Output" name="BLUE(1:0)" />
        <port polarity="Output" name="digit_anode(3:0)" />
        <port polarity="Output" name="segment(7:0)" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="c" />
        <port polarity="Output" name="LL(1:0)" />
        <blockdef name="bcd">
            <timestamp>2013-11-8T0:33:27</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="fenpin">
            <timestamp>2013-11-8T0:33:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="shumaguan">
            <timestamp>2013-11-8T0:33:3</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="suiji">
            <timestamp>2013-11-8T0:31:40</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="test">
            <timestamp>2016-10-31T16:4:22</timestamp>
            <rect width="64" x="368" y="148" height="24" />
            <line x2="432" y1="160" y2="160" x1="368" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-512" height="704" />
        </blockdef>
        <block symbolname="bcd" name="XLXI_1">
            <blockpin signalname="XLXN_23(3:0)" name="life(3:0)" />
            <blockpin signalname="XLXN_22(7:0)" name="fenshu(7:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="fenshu2(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="fenshu1(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="fenshu0(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="shengming(3:0)" />
        </block>
        <block symbolname="fenpin" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_2" name="clk_50M" />
            <blockpin signalname="XLXN_1" name="clk_25M" />
            <blockpin signalname="XLXN_3" name="clk_50M1" />
        </block>
        <block symbolname="shumaguan" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="CLK" />
            <blockpin signalname="XLXN_5(3:0)" name="fenshu2(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="fenshu1(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="fenshu0(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="shengming(3:0)" />
            <blockpin signalname="digit_anode(3:0)" name="digit_anode(3:0)" />
            <blockpin signalname="segment(7:0)" name="segment(7:0)" />
        </block>
        <block symbolname="suiji" name="XLXI_4">
            <blockpin signalname="XLXN_1" name="clk_25M" />
            <blockpin signalname="XLXN_4(7:0)" name="rand_num(7:0)" />
        </block>
        <block symbolname="test" name="XLXI_16">
            <blockpin signalname="XLXN_3" name="CLK" />
            <blockpin signalname="left" name="left" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="rest" name="rest" />
            <blockpin signalname="a" name="a" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="nandu" name="nandu" />
            <blockpin signalname="XLXN_4(7:0)" name="rand_num(7:0)" />
            <blockpin signalname="HS" name="HS" />
            <blockpin signalname="VS" name="VS" />
            <blockpin signalname="leda" name="leda" />
            <blockpin signalname="RED(2:0)" name="RED(2:0)" />
            <blockpin signalname="GREEN(2:0)" name="GREEN(2:0)" />
            <blockpin signalname="BLUE(1:0)" name="BLUE(1:0)" />
            <blockpin signalname="XLXN_22(7:0)" name="fenshu(7:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="life(3:0)" />
            <blockpin signalname="LL(1:0)" name="LL(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1184" y="1104" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1184" y1="1072" y2="1072" x1="1136" />
        </branch>
        <instance x="976" y="832" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1440" y1="1008" y2="1008" x1="1136" />
            <wire x2="1440" y1="544" y2="1008" x1="1440" />
            <wire x2="1600" y1="544" y2="544" x1="1440" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1152" y1="1136" y2="1136" x1="1136" />
            <wire x2="1584" y1="1136" y2="1136" x1="1152" />
            <wire x2="1584" y1="1056" y2="1136" x1="1584" />
            <wire x2="1888" y1="1056" y2="1056" x1="1584" />
        </branch>
        <branch name="XLXN_4(7:0)">
            <wire x2="1584" y1="1072" y2="1072" x1="1568" />
            <wire x2="1728" y1="1072" y2="1072" x1="1584" />
            <wire x2="1728" y1="1072" y2="1328" x1="1728" />
            <wire x2="1728" y1="1328" y2="1392" x1="1728" />
            <wire x2="1728" y1="1392" y2="1456" x1="1728" />
            <wire x2="1888" y1="1456" y2="1456" x1="1728" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="1600" y1="608" y2="608" x1="1408" />
        </branch>
        <instance x="1600" y="832" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_6(3:0)">
            <wire x2="1600" y1="672" y2="672" x1="1408" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="1600" y1="736" y2="736" x1="1408" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="1600" y1="800" y2="800" x1="1408" />
        </branch>
        <branch name="clk">
            <wire x2="752" y1="1008" y2="1008" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="1008" name="clk" orien="R180" />
        <branch name="left">
            <wire x2="1872" y1="1136" y2="1136" x1="1856" />
            <wire x2="1888" y1="1136" y2="1136" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1136" name="left" orien="R180" />
        <branch name="right">
            <wire x2="1872" y1="1216" y2="1216" x1="1856" />
            <wire x2="1888" y1="1216" y2="1216" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1216" name="right" orien="R180" />
        <branch name="rest">
            <wire x2="1872" y1="1296" y2="1296" x1="1856" />
            <wire x2="1888" y1="1296" y2="1296" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1296" name="rest" orien="R180" />
        <branch name="nandu">
            <wire x2="1872" y1="1376" y2="1376" x1="1856" />
            <wire x2="1888" y1="1376" y2="1376" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1376" name="nandu" orien="R180" />
        <branch name="HS">
            <wire x2="2336" y1="1056" y2="1056" x1="2320" />
            <wire x2="2352" y1="1056" y2="1056" x1="2336" />
        </branch>
        <branch name="VS">
            <wire x2="2336" y1="1120" y2="1120" x1="2320" />
            <wire x2="2352" y1="1120" y2="1120" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1120" name="VS" orien="R0" />
        <branch name="leda">
            <wire x2="2336" y1="1184" y2="1184" x1="2320" />
            <wire x2="2352" y1="1184" y2="1184" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1184" name="leda" orien="R0" />
        <branch name="RED(2:0)">
            <wire x2="2336" y1="1248" y2="1248" x1="2320" />
            <wire x2="2352" y1="1248" y2="1248" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1248" name="RED(2:0)" orien="R0" />
        <branch name="GREEN(2:0)">
            <wire x2="2336" y1="1312" y2="1312" x1="2320" />
            <wire x2="2352" y1="1312" y2="1312" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1312" name="GREEN(2:0)" orien="R0" />
        <branch name="BLUE(1:0)">
            <wire x2="2336" y1="1376" y2="1376" x1="2320" />
            <wire x2="2352" y1="1376" y2="1376" x1="2336" />
        </branch>
        <branch name="XLXN_22(7:0)">
            <wire x2="640" y1="800" y2="1664" x1="640" />
            <wire x2="1296" y1="1664" y2="1664" x1="640" />
            <wire x2="2400" y1="1664" y2="1664" x1="1296" />
            <wire x2="960" y1="800" y2="800" x1="640" />
            <wire x2="976" y1="800" y2="800" x1="960" />
            <wire x2="2336" y1="1440" y2="1440" x1="2320" />
            <wire x2="2400" y1="1440" y2="1440" x1="2336" />
            <wire x2="2400" y1="1440" y2="1664" x1="2400" />
        </branch>
        <branch name="XLXN_23(3:0)">
            <wire x2="624" y1="608" y2="1648" x1="624" />
            <wire x2="704" y1="1648" y2="1648" x1="624" />
            <wire x2="1296" y1="1648" y2="1648" x1="704" />
            <wire x2="1728" y1="1648" y2="1648" x1="1296" />
            <wire x2="2384" y1="1648" y2="1648" x1="1728" />
            <wire x2="960" y1="608" y2="608" x1="624" />
            <wire x2="976" y1="608" y2="608" x1="960" />
            <wire x2="2336" y1="1504" y2="1504" x1="2320" />
            <wire x2="2384" y1="1504" y2="1504" x1="2336" />
            <wire x2="2384" y1="1504" y2="1648" x1="2384" />
        </branch>
        <branch name="digit_anode(3:0)">
            <wire x2="2096" y1="544" y2="544" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="544" name="digit_anode(3:0)" orien="R0" />
        <branch name="segment(7:0)">
            <wire x2="2096" y1="800" y2="800" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="800" name="segment(7:0)" orien="R0" />
        <branch name="a">
            <wire x2="1888" y1="1568" y2="1568" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1568" name="a" orien="R180" />
        <branch name="c">
            <wire x2="1888" y1="1632" y2="1632" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1632" name="c" orien="R180" />
        <instance x="1888" y="1536" name="XLXI_16" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2352" y="1376" name="BLUE(1:0)" orien="R0" />
        <branch name="LL(1:0)">
            <wire x2="2416" y1="1696" y2="1696" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1056" name="HS" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1696" name="LL(1:0)" orien="R0" />
    </sheet>
</drawing>