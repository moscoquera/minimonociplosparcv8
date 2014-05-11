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
static const char *ng0 = "C:/Users/Smith/Documents/xilinx/ProcesadorMonoSparc8/RegisterFile.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2166523021_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 5619);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB2;

LAB3:    t4 = (t0 + 2136);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, 0LL);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB4;

LAB6:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t4 = *((char **)t1);
    t1 = (t0 + 4152U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 39, 1, t11);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t5 = (t2 + t15);
    t6 = (t0 + 2172);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t16 = *((char **)t10);
    memcpy(t16, t5, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 684U);
    t4 = *((char **)t1);
    t1 = (t0 + 4168U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 39, 1, t11);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t5 = (t2 + t15);
    t6 = (t0 + 2208);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t16 = *((char **)t10);
    memcpy(t16, t5, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 4184U);
    t4 = (t0 + 5715);
    t6 = (t17 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 4;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t11 = (4 - 0);
    t13 = (t11 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t4, t17);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:
LAB5:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 4184U);
    t4 = (t0 + 5720);
    t6 = (t17 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 4;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t11 = (4 - 0);
    t13 = (t11 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t4, t17);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2092);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 5651);
    t5 = (t0 + 2172);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 5683);
    t4 = (t0 + 2208);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB7:    xsi_set_current_line(34, ng0);
    t7 = (t0 + 868U);
    t8 = *((char **)t7);
    t7 = (t0 + 776U);
    t10 = *((char **)t7);
    t7 = (t0 + 4184U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t7);
    t18 = (t12 - 0);
    t13 = (t18 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t16 = (t0 + 2136);
    t19 = (t16 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 32U);
    xsi_driver_first_trans_delta(t16, t15, 32U, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(41, ng0);
    t7 = (t0 + 868U);
    t8 = *((char **)t7);
    t7 = (t0 + 776U);
    t10 = *((char **)t7);
    t7 = (t0 + 4184U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t7);
    t18 = (t12 - 0);
    t13 = (t18 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t16 = (t0 + 2136);
    t19 = (t16 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 32U);
    xsi_driver_first_trans_delta(t16, t15, 32U, 0LL);
    goto LAB11;

}


extern void work_a_2166523021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166523021_3212880686_p_0};
	xsi_register_didat("work_a_2166523021_3212880686", "isim/Procesador_tb_isim_beh.exe.sim/work/a_2166523021_3212880686.didat");
	xsi_register_executes(pe);
}
