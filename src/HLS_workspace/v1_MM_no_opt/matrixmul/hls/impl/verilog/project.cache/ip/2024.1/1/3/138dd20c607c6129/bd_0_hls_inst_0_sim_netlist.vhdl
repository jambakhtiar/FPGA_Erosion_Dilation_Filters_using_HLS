-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Sat Jul 19 16:49:48 2025
-- Host        : jam-Precision-5510 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \ap_CS_fsm_reg[7]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp_reg_114_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0 is
  signal \^p\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ap_cs_fsm_reg[7]\ : STD_LOGIC;
  signal p_reg_reg_i_10_n_0 : STD_LOGIC;
  signal p_reg_reg_i_11_n_0 : STD_LOGIC;
  signal p_reg_reg_i_12_n_0 : STD_LOGIC;
  signal p_reg_reg_i_13_n_0 : STD_LOGIC;
  signal p_reg_reg_i_14_n_0 : STD_LOGIC;
  signal p_reg_reg_i_15_n_0 : STD_LOGIC;
  signal p_reg_reg_i_16_n_0 : STD_LOGIC;
  signal p_reg_reg_i_1_n_0 : STD_LOGIC;
  signal p_reg_reg_i_2_n_0 : STD_LOGIC;
  signal p_reg_reg_i_3_n_0 : STD_LOGIC;
  signal p_reg_reg_i_4_n_0 : STD_LOGIC;
  signal p_reg_reg_i_5_n_0 : STD_LOGIC;
  signal p_reg_reg_i_6_n_0 : STD_LOGIC;
  signal p_reg_reg_i_7_n_0 : STD_LOGIC;
  signal p_reg_reg_i_8_n_0 : STD_LOGIC;
  signal p_reg_reg_i_9_n_0 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of p_reg_reg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of p_reg_reg_i_10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of p_reg_reg_i_11 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of p_reg_reg_i_12 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of p_reg_reg_i_13 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of p_reg_reg_i_14 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of p_reg_reg_i_15 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of p_reg_reg_i_16 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of p_reg_reg_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of p_reg_reg_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of p_reg_reg_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of p_reg_reg_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of p_reg_reg_i_7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of p_reg_reg_i_8 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of p_reg_reg_i_9 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmp_reg_114[15]_i_2\ : label is "soft_lutpair0";
begin
  P(15 downto 0) <= \^p\(15 downto 0);
  \ap_CS_fsm_reg[7]\ <= \^ap_cs_fsm_reg[7]\;
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => b_q0(7),
      A(28) => b_q0(7),
      A(27) => b_q0(7),
      A(26) => b_q0(7),
      A(25) => b_q0(7),
      A(24) => b_q0(7),
      A(23) => b_q0(7),
      A(22) => b_q0(7),
      A(21) => b_q0(7),
      A(20) => b_q0(7),
      A(19) => b_q0(7),
      A(18) => b_q0(7),
      A(17) => b_q0(7),
      A(16) => b_q0(7),
      A(15) => b_q0(7),
      A(14) => b_q0(7),
      A(13) => b_q0(7),
      A(12) => b_q0(7),
      A(11) => b_q0(7),
      A(10) => b_q0(7),
      A(9) => b_q0(7),
      A(8) => b_q0(7),
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a_q0(7),
      B(16) => a_q0(7),
      B(15) => a_q0(7),
      B(14) => a_q0(7),
      B(13) => a_q0(7),
      B(12) => a_q0(7),
      B(11) => a_q0(7),
      B(10) => a_q0(7),
      B(9) => a_q0(7),
      B(8) => a_q0(7),
      B(7 downto 0) => a_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15) => p_reg_reg_i_1_n_0,
      C(14) => p_reg_reg_i_2_n_0,
      C(13) => p_reg_reg_i_3_n_0,
      C(12) => p_reg_reg_i_4_n_0,
      C(11) => p_reg_reg_i_5_n_0,
      C(10) => p_reg_reg_i_6_n_0,
      C(9) => p_reg_reg_i_7_n_0,
      C(8) => p_reg_reg_i_8_n_0,
      C(7) => p_reg_reg_i_9_n_0,
      C(6) => p_reg_reg_i_10_n_0,
      C(5) => p_reg_reg_i_11_n_0,
      C(4) => p_reg_reg_i_12_n_0,
      C(3) => p_reg_reg_i_13_n_0,
      C(2) => p_reg_reg_i_14_n_0,
      C(1) => p_reg_reg_i_15_n_0,
      C(0) => p_reg_reg_i_16_n_0,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => \^ap_cs_fsm_reg[7]\,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => \^p\(15 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
p_reg_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(15),
      O => p_reg_reg_i_1_n_0
    );
p_reg_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(6),
      O => p_reg_reg_i_10_n_0
    );
p_reg_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(5),
      O => p_reg_reg_i_11_n_0
    );
p_reg_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(4),
      O => p_reg_reg_i_12_n_0
    );
p_reg_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(3),
      O => p_reg_reg_i_13_n_0
    );
p_reg_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(2),
      O => p_reg_reg_i_14_n_0
    );
p_reg_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(1),
      O => p_reg_reg_i_15_n_0
    );
p_reg_reg_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(0),
      O => p_reg_reg_i_16_n_0
    );
p_reg_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(14),
      O => p_reg_reg_i_2_n_0
    );
p_reg_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(13),
      O => p_reg_reg_i_3_n_0
    );
p_reg_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(12),
      O => p_reg_reg_i_4_n_0
    );
p_reg_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(11),
      O => p_reg_reg_i_5_n_0
    );
p_reg_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(10),
      O => p_reg_reg_i_6_n_0
    );
p_reg_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(9),
      O => p_reg_reg_i_7_n_0
    );
p_reg_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(8),
      O => p_reg_reg_i_8_n_0
    );
p_reg_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^p\(7),
      O => p_reg_reg_i_9_n_0
    );
\tmp_reg_114[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => Q(1),
      I1 => \tmp_reg_114_reg[0]\(0),
      I2 => \tmp_reg_114_reg[0]\(1),
      I3 => Q(0),
      O => \^ap_cs_fsm_reg[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \ap_CS_fsm_reg[7]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp_reg_114_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1 is
begin
matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0
     port map (
      P(15 downto 0) => P(15 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      a_q0(7 downto 0) => a_q0(7 downto 0),
      \ap_CS_fsm_reg[7]\ => \ap_CS_fsm_reg[7]\,
      ap_clk => ap_clk,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      \tmp_reg_114_reg[0]\(1 downto 0) => \tmp_reg_114_reg[0]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_ce0 : out STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b_ce0 : out STD_LOGIC;
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    res_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    res_ce0 : out STD_LOGIC;
    res_we0 : out STD_LOGIC;
    res_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b00000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b00000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b00000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b00001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b00010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b00100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b01000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "8'b10000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul is
  signal add_ln19_reg_271 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \add_ln19_reg_271[0]_i_1_n_0\ : STD_LOGIC;
  signal add_ln21_fu_171_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln21_reg_285 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln24_fu_201_p2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal add_ln24_reg_303 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln28_fu_181_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ap_CS_fsm[4]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[4]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[5]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[6]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm11_out : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal j_reg_92 : STD_LOGIC;
  signal \j_reg_92_reg_n_0_[0]\ : STD_LOGIC;
  signal \j_reg_92_reg_n_0_[1]\ : STD_LOGIC;
  signal k_reg_103 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_0 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_1 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_10 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_11 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_12 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_13 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_14 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_15 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_16 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_2 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_3 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_4 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_5 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_6 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_7 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_8 : STD_LOGIC;
  signal mac_muladd_8s_8s_16ns_16_4_1_U1_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_shl7_fu_151_p3 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal p_shl_fu_221_p3 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^res_ce0\ : STD_LOGIC;
  signal \^res_we0\ : STD_LOGIC;
  signal sub_ln26_reg_276 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sub_ln26_reg_276[1]_i_1_n_0\ : STD_LOGIC;
  signal \sub_ln26_reg_276[2]_i_1_n_0\ : STD_LOGIC;
  signal \sub_ln26_reg_276[3]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_reg_114[15]_i_1_n_0\ : STD_LOGIC;
  signal zext_ln28_reg_290 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_address0[0]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \a_address0[1]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \a_address0[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \add_ln19_reg_271[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \add_ln21_reg_285[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \add_ln24_reg_303[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \add_ln24_reg_303[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair13";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \b_address0[0]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \b_address0[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \b_address0[2]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \b_address0[3]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \res_addr_reg_295[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \res_addr_reg_295[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \res_addr_reg_295[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sub_ln26_reg_276[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sub_ln26_reg_276[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sub_ln26_reg_276[3]_i_1\ : label is "soft_lutpair16";
begin
  a_ce0 <= \^res_ce0\;
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
  b_ce0 <= \^res_ce0\;
  res_ce0 <= \^res_ce0\;
  res_we0 <= \^res_we0\;
\a_address0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_ln26_reg_276(0),
      I1 => p_shl_fu_221_p3(2),
      O => a_address0(0)
    );
\a_address0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => sub_ln26_reg_276(0),
      I1 => p_shl_fu_221_p3(2),
      I2 => p_shl_fu_221_p3(3),
      I3 => sub_ln26_reg_276(1),
      O => a_address0(1)
    );
\a_address0[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"077FF880"
    )
        port map (
      I0 => p_shl_fu_221_p3(2),
      I1 => sub_ln26_reg_276(0),
      I2 => sub_ln26_reg_276(1),
      I3 => p_shl_fu_221_p3(3),
      I4 => sub_ln26_reg_276(2),
      O => a_address0(2)
    );
\a_address0[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777FFFFE8880000"
    )
        port map (
      I0 => p_shl_fu_221_p3(3),
      I1 => sub_ln26_reg_276(1),
      I2 => sub_ln26_reg_276(0),
      I3 => p_shl_fu_221_p3(2),
      I4 => sub_ln26_reg_276(2),
      I5 => sub_ln26_reg_276(3),
      O => a_address0(3)
    );
\add_ln19_reg_271[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_shl7_fu_151_p3(2),
      O => \add_ln19_reg_271[0]_i_1_n_0\
    );
\add_ln19_reg_271_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \add_ln19_reg_271[0]_i_1_n_0\,
      Q => add_ln19_reg_271(0),
      R => '0'
    );
\add_ln21_reg_285[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_92_reg_n_0_[0]\,
      O => add_ln21_fu_171_p2(0)
    );
\add_ln21_reg_285[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \j_reg_92_reg_n_0_[0]\,
      I1 => \j_reg_92_reg_n_0_[1]\,
      O => add_ln21_fu_171_p2(1)
    );
\add_ln21_reg_285_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln21_fu_171_p2(0),
      Q => add_ln21_reg_285(0),
      R => '0'
    );
\add_ln21_reg_285_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln21_fu_171_p2(1),
      Q => add_ln21_reg_285(1),
      R => '0'
    );
\add_ln24_reg_303[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_shl_fu_221_p3(2),
      O => p_0_in(0)
    );
\add_ln24_reg_303[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_shl_fu_221_p3(2),
      I1 => p_shl_fu_221_p3(3),
      O => add_ln24_fu_201_p2(1)
    );
\add_ln24_reg_303_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^res_ce0\,
      D => p_0_in(0),
      Q => add_ln24_reg_303(0),
      R => '0'
    );
\add_ln24_reg_303_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^res_ce0\,
      D => add_ln24_fu_201_p2(1),
      Q => add_ln24_reg_303(1),
      R => '0'
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2222222"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => p_shl7_fu_151_p3(3),
      I3 => p_shl7_fu_151_p3(2),
      I4 => ap_CS_fsm_state2,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => ap_CS_fsm_state3,
      I3 => \j_reg_92_reg_n_0_[1]\,
      I4 => \j_reg_92_reg_n_0_[0]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70707070707070"
    )
        port map (
      I0 => p_shl7_fu_151_p3(3),
      I1 => p_shl7_fu_151_p3(2),
      I2 => ap_CS_fsm_state2,
      I3 => \^res_ce0\,
      I4 => p_shl_fu_221_p3(3),
      I5 => p_shl_fu_221_p3(2),
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \j_reg_92_reg_n_0_[1]\,
      I2 => \j_reg_92_reg_n_0_[0]\,
      I3 => ap_CS_fsm_state8,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => p_shl_fu_221_p3(2),
      I1 => p_shl_fu_221_p3(3),
      I2 => \^res_ce0\,
      O => \ap_CS_fsm[4]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => \^res_ce0\,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[4]_i_1_n_0\,
      Q => \ap_CS_fsm_reg_n_0_[4]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[4]\,
      Q => \ap_CS_fsm_reg_n_0_[5]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[5]\,
      Q => \ap_CS_fsm_reg_n_0_[6]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[6]\,
      Q => ap_CS_fsm_state8,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_shl7_fu_151_p3(3),
      I1 => p_shl7_fu_151_p3(2),
      I2 => ap_CS_fsm_state2,
      O => \^ap_ready\
    );
\b_address0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => zext_ln28_reg_290(0),
      I1 => p_shl_fu_221_p3(2),
      O => b_address0(0)
    );
\b_address0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => p_shl_fu_221_p3(2),
      I1 => zext_ln28_reg_290(0),
      I2 => p_shl_fu_221_p3(3),
      I3 => zext_ln28_reg_290(1),
      O => b_address0(1)
    );
\b_address0[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E30"
    )
        port map (
      I0 => zext_ln28_reg_290(0),
      I1 => zext_ln28_reg_290(1),
      I2 => p_shl_fu_221_p3(3),
      I3 => p_shl_fu_221_p3(2),
      O => b_address0(2)
    );
\b_address0[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => zext_ln28_reg_290(1),
      I1 => p_shl_fu_221_p3(2),
      I2 => p_shl_fu_221_p3(3),
      O => b_address0(3)
    );
\i_fu_50[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_NS_fsm11_out
    );
\i_fu_50[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \j_reg_92_reg_n_0_[1]\,
      I2 => \j_reg_92_reg_n_0_[0]\,
      O => ap_NS_fsm1
    );
\i_fu_50_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => add_ln19_reg_271(0),
      Q => p_shl7_fu_151_p3(2),
      R => ap_NS_fsm11_out
    );
\i_fu_50_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln26_reg_276(1),
      Q => p_shl7_fu_151_p3(3),
      R => ap_NS_fsm11_out
    );
\j_reg_92[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070707070707070"
    )
        port map (
      I0 => p_shl7_fu_151_p3(2),
      I1 => p_shl7_fu_151_p3(3),
      I2 => ap_CS_fsm_state2,
      I3 => p_shl_fu_221_p3(2),
      I4 => p_shl_fu_221_p3(3),
      I5 => \^res_ce0\,
      O => j_reg_92
    );
\j_reg_92_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^res_we0\,
      D => add_ln21_reg_285(0),
      Q => \j_reg_92_reg_n_0_[0]\,
      R => j_reg_92
    );
\j_reg_92_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^res_we0\,
      D => add_ln21_reg_285(1),
      Q => \j_reg_92_reg_n_0_[1]\,
      R => j_reg_92
    );
\k_reg_103[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => \j_reg_92_reg_n_0_[0]\,
      I1 => \j_reg_92_reg_n_0_[1]\,
      I2 => ap_CS_fsm_state3,
      I3 => ap_CS_fsm_state8,
      O => k_reg_103
    );
\k_reg_103_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => add_ln24_reg_303(0),
      Q => p_shl_fu_221_p3(2),
      R => k_reg_103
    );
\k_reg_103_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => add_ln24_reg_303(1),
      Q => p_shl_fu_221_p3(3),
      R => k_reg_103
    );
mac_muladd_8s_8s_16ns_16_4_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_mac_muladd_8s_8s_16ns_16_4_1
     port map (
      P(15) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_0,
      P(14) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_1,
      P(13) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_2,
      P(12) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_3,
      P(11) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_4,
      P(10) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_5,
      P(9) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_6,
      P(8) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_7,
      P(7) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_8,
      P(6) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_9,
      P(5) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_10,
      P(4) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_11,
      P(3) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_12,
      P(2) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_13,
      P(1) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_14,
      P(0) => mac_muladd_8s_8s_16ns_16_4_1_U1_n_15,
      Q(1) => ap_CS_fsm_state8,
      Q(0) => ap_CS_fsm_state3,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      \ap_CS_fsm_reg[7]\ => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      ap_clk => ap_clk,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      \tmp_reg_114_reg[0]\(1) => \j_reg_92_reg_n_0_[1]\,
      \tmp_reg_114_reg[0]\(0) => \j_reg_92_reg_n_0_[0]\
    );
\res_addr_reg_295[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_ln26_reg_276(0),
      I1 => \j_reg_92_reg_n_0_[0]\,
      O => add_ln28_fu_181_p2(0)
    );
\res_addr_reg_295[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => sub_ln26_reg_276(0),
      I1 => \j_reg_92_reg_n_0_[0]\,
      I2 => \j_reg_92_reg_n_0_[1]\,
      I3 => sub_ln26_reg_276(1),
      O => add_ln28_fu_181_p2(1)
    );
\res_addr_reg_295[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"077FF880"
    )
        port map (
      I0 => \j_reg_92_reg_n_0_[0]\,
      I1 => sub_ln26_reg_276(0),
      I2 => sub_ln26_reg_276(1),
      I3 => \j_reg_92_reg_n_0_[1]\,
      I4 => sub_ln26_reg_276(2),
      O => add_ln28_fu_181_p2(2)
    );
\res_addr_reg_295[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777FFFFE8880000"
    )
        port map (
      I0 => \j_reg_92_reg_n_0_[1]\,
      I1 => sub_ln26_reg_276(1),
      I2 => sub_ln26_reg_276(0),
      I3 => \j_reg_92_reg_n_0_[0]\,
      I4 => sub_ln26_reg_276(2),
      I5 => sub_ln26_reg_276(3),
      O => add_ln28_fu_181_p2(3)
    );
\res_addr_reg_295_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln28_fu_181_p2(0),
      Q => res_address0(0),
      R => '0'
    );
\res_addr_reg_295_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln28_fu_181_p2(1),
      Q => res_address0(1),
      R => '0'
    );
\res_addr_reg_295_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln28_fu_181_p2(2),
      Q => res_address0(2),
      R => '0'
    );
\res_addr_reg_295_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln28_fu_181_p2(3),
      Q => res_address0(3),
      R => '0'
    );
res_we0_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^res_ce0\,
      I1 => p_shl_fu_221_p3(3),
      I2 => p_shl_fu_221_p3(2),
      O => \^res_we0\
    );
\sub_ln26_reg_276[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_shl7_fu_151_p3(2),
      I1 => p_shl7_fu_151_p3(3),
      O => \sub_ln26_reg_276[1]_i_1_n_0\
    );
\sub_ln26_reg_276[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_shl7_fu_151_p3(3),
      I1 => p_shl7_fu_151_p3(2),
      O => \sub_ln26_reg_276[2]_i_1_n_0\
    );
\sub_ln26_reg_276[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_shl7_fu_151_p3(2),
      I1 => p_shl7_fu_151_p3(3),
      O => \sub_ln26_reg_276[3]_i_1_n_0\
    );
\sub_ln26_reg_276_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_shl7_fu_151_p3(2),
      Q => sub_ln26_reg_276(0),
      R => '0'
    );
\sub_ln26_reg_276_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \sub_ln26_reg_276[1]_i_1_n_0\,
      Q => sub_ln26_reg_276(1),
      R => '0'
    );
\sub_ln26_reg_276_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \sub_ln26_reg_276[2]_i_1_n_0\,
      Q => sub_ln26_reg_276(2),
      R => '0'
    );
\sub_ln26_reg_276_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \sub_ln26_reg_276[3]_i_1_n_0\,
      Q => sub_ln26_reg_276(3),
      R => '0'
    );
\tmp_reg_114[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \j_reg_92_reg_n_0_[1]\,
      I2 => \j_reg_92_reg_n_0_[0]\,
      I3 => ap_CS_fsm_state8,
      O => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_15,
      Q => res_d0(0),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_5,
      Q => res_d0(10),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_4,
      Q => res_d0(11),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_3,
      Q => res_d0(12),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_2,
      Q => res_d0(13),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_1,
      Q => res_d0(14),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_0,
      Q => res_d0(15),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_14,
      Q => res_d0(1),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_13,
      Q => res_d0(2),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_12,
      Q => res_d0(3),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_11,
      Q => res_d0(4),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_10,
      Q => res_d0(5),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_9,
      Q => res_d0(6),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_8,
      Q => res_d0(7),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_7,
      Q => res_d0(8),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\tmp_reg_114_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mac_muladd_8s_8s_16ns_16_4_1_U1_n_16,
      D => mac_muladd_8s_8s_16ns_16_4_1_U1_n_6,
      Q => res_d0(9),
      R => \tmp_reg_114[15]_i_1_n_0\
    );
\zext_ln28_reg_290_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => \j_reg_92_reg_n_0_[0]\,
      Q => zext_ln28_reg_290(0),
      R => '0'
    );
\zext_ln28_reg_290_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => \j_reg_92_reg_n_0_[1]\,
      Q => zext_ln28_reg_290(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a_ce0 : out STD_LOGIC;
    b_ce0 : out STD_LOGIC;
    res_ce0 : out STD_LOGIC;
    res_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    res_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    res_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,matrixmul,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "matrixmul,Vivado 2024.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "8'b00000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "8'b00000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "8'b00000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "8'b00001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "8'b00010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "8'b00100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "8'b01000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "8'b10000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of a_address0 : signal is "xilinx.com:signal:data:1.0 a_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_address0 : signal is "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_q0 : signal is "xilinx.com:signal:data:1.0 a_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_q0 : signal is "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_address0 : signal is "xilinx.com:signal:data:1.0 b_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_address0 : signal is "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_q0 : signal is "xilinx.com:signal:data:1.0 b_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_q0 : signal is "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of res_address0 : signal is "xilinx.com:signal:data:1.0 res_address0 DATA";
  attribute X_INTERFACE_PARAMETER of res_address0 : signal is "XIL_INTERFACENAME res_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of res_d0 : signal is "xilinx.com:signal:data:1.0 res_d0 DATA";
  attribute X_INTERFACE_PARAMETER of res_d0 : signal is "XIL_INTERFACENAME res_d0, LAYERED_METADATA undef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul
     port map (
      a_address0(3 downto 0) => a_address0(3 downto 0),
      a_ce0 => a_ce0,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_address0(3 downto 0) => b_address0(3 downto 0),
      b_ce0 => b_ce0,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      res_address0(3 downto 0) => res_address0(3 downto 0),
      res_ce0 => res_ce0,
      res_d0(15 downto 0) => res_d0(15 downto 0),
      res_we0 => res_we0
    );
end STRUCTURE;
