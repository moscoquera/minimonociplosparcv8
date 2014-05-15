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
static const char *ng0 = "C:/Users/Smith/Documents/xilinx/ProcesadorMonoSparc8/dataMemory.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3261551314_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 684U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 868U);
    t5 = *((char **)t1);
    t14 = (31 - 5);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t8 = (t17 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 5;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t18 = (0 - 5);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t20 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t17);
    t21 = (t20 - 0);
    t19 = (t21 * 1);
    t22 = (32U * t19);
    t23 = (0U + t22);
    t9 = (t0 + 2080);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_delta(t9, t23, 32U, 0LL);

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t8 = t1;
    memset(t8, (unsigned char)2, 32U);
    t9 = (t0 + 2044);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(1024U);
    memset(t1, 0, 1024U);
    t2 = t1;
    t5 = (t0 + 5055);
    t3 = (32U != 0);
    if (t3 == 1)
        goto LAB8;

LAB9:    t9 = (t0 + 2080);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 1024U);
    xsi_driver_first_trans_fast(t9);
    goto LAB6;

LAB8:    t14 = (1024U / 32U);
    xsi_mem_set_data(t2, t5, 32U, t14);
    goto LAB9;

LAB10:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1144U);
    t5 = *((char **)t1);
    t1 = (t0 + 868U);
    t8 = *((char **)t1);
    t14 = (31 - 5);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t8 + t16);
    t9 = (t17 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 5;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t18 = (0 - 5);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t19;
    t20 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t17);
    t21 = (t20 - 0);
    t19 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t20);
    t22 = (32U * t19);
    t23 = (0 + t22);
    t10 = (t5 + t23);
    t11 = (t0 + 2044);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t24 = (t13 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t10, 32U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB11;

}


extern void work_a_3261551314_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3261551314_3212880686_p_0};
	xsi_register_didat("work_a_3261551314_3212880686", "isim/Procesador_tb_isim_beh.exe.sim/work/a_3261551314_3212880686.didat");
	xsi_register_executes(pe);
}
