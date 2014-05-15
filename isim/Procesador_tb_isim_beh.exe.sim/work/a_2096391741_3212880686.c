/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Smith/Documents/xilinx/ProcesadorMonoSparc8/ControlUnit.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2096391741_3212880686_p_0(char *t0)
{
    char t5[16];
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 4224U);
    t3 = (t0 + 4340);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4342);
    t3 = (t0 + 2228);
    t4 = (t3 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 4224U);
    t3 = (t0 + 4348);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 4224U);
    t3 = (t0 + 4350);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 4224U);
    t3 = (t0 + 4354);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 4224U);
    t3 = (t0 + 4358);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t17 == 1)
        goto LAB17;

LAB18:    t10 = (unsigned char)0;

LAB19:    if (t10 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4368);
    t3 = (t0 + 2300);
    t4 = (t3 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);

LAB15:
LAB12:
LAB9:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 4224U);
    t3 = (t0 + 4370);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2372);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2336);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4376);
    t3 = (t0 + 2408);
    t4 = (t3 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);

LAB21:    t1 = (t0 + 2184);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t7 = (t0 + 684U);
    t11 = *((char **)t7);
    t7 = (t0 + 2228);
    t12 = (t7 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 6U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    xsi_set_current_line(33, ng0);
    t7 = (t0 + 2264);
    t11 = (t7 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB6;

LAB8:    xsi_set_current_line(41, ng0);
    t7 = (t0 + 4352);
    t12 = (t0 + 2300);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 2U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(44, ng0);
    t7 = (t0 + 4356);
    t12 = (t0 + 2300);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 2U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB12;

LAB14:    xsi_set_current_line(47, ng0);
    t15 = (t0 + 4366);
    t21 = (t0 + 2300);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t15, 2U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB15;

LAB17:    t7 = (t0 + 684U);
    t11 = *((char **)t7);
    t7 = (t0 + 4240U);
    t12 = (t0 + 4360);
    t14 = (t18 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 5;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t19 = (5 - 0);
    t9 = (t19 * 1);
    t9 = (t9 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t9;
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t11, t7, t12, t18);
    t10 = t20;
    goto LAB19;

LAB20:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 684U);
    t11 = *((char **)t7);
    t19 = (2 - 5);
    t9 = (t19 * -1);
    t26 = (1U * t9);
    t27 = (0 + t26);
    t7 = (t11 + t27);
    t17 = *((unsigned char *)t7);
    t12 = (t0 + 2336);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t17;
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t8 = (2 - 5);
    t9 = (t8 * -1);
    t26 = (1U * t9);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t10 = *((unsigned char *)t1);
    t17 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t3 = (t0 + 2372);
    t4 = (t3 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = t17;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t8 = (2 - 5);
    t9 = (t8 * -1);
    t26 = (1U * t9);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t10 = *((unsigned char *)t1);
    t17 = (t10 == (unsigned char)2);
    if (t17 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4374);
    t3 = (t0 + 2408);
    t4 = (t3 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);

LAB24:    goto LAB21;

LAB23:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 4372);
    t6 = (t0 + 2408);
    t7 = (t6 + 32U);
    t11 = *((char **)t7);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 2U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB24;

}


extern void work_a_2096391741_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2096391741_3212880686_p_0};
	xsi_register_didat("work_a_2096391741_3212880686", "isim/Procesador_tb_isim_beh.exe.sim/work/a_2096391741_3212880686.didat");
	xsi_register_executes(pe);
}
