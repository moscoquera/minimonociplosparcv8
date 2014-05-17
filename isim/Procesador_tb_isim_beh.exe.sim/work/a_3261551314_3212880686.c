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
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3261551314_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 868U);
    t5 = *((char **)t1);
    t11 = (31 - 5);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t5 + t13);
    t6 = (t14 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 5;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t15 = (0 - 5);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t16;
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t14);
    t18 = (t17 - 0);
    t16 = (t18 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t17);
    t19 = (32U * t16);
    t20 = (0 + t19);
    t7 = (t2 + t20);
    t8 = (t0 + 2196);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t21 = (t10 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 32U);
    xsi_driver_first_trans_fast_port(t8);

LAB3:    t1 = (t0 + 2144);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 2196);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

}

static void work_a_3261551314_3212880686_p_1(char *t0)
{
    char t19[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    int t20;
    unsigned int t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 776U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(71, ng0);
    t3 = xsi_get_transient_memory(2048U);
    memset(t3, 0, 2048U);
    t7 = t3;
    t8 = (t0 + 6303);
    t10 = (32U != 0);
    if (t10 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 2232);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 2048U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB8:    t11 = (2048U / 32U);
    xsi_mem_set_data(t7, t8, 32U, t11);
    goto LAB9;

LAB10:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 960U);
    t4 = *((char **)t1);
    t1 = (t0 + 868U);
    t7 = *((char **)t1);
    t11 = (31 - 5);
    t17 = (t11 * 1U);
    t18 = (0 + t17);
    t1 = (t7 + t18);
    t8 = (t19 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 5;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t20 = (0 - 5);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t21;
    t22 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t19);
    t23 = (t22 - 0);
    t21 = (t23 * 1);
    t24 = (32U * t21);
    t25 = (0U + t24);
    t9 = (t0 + 2232);
    t12 = (t9 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 32U);
    xsi_driver_first_trans_delta(t9, t25, 32U, 0LL);
    goto LAB6;

}


extern void work_a_3261551314_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3261551314_3212880686_p_0,(void *)work_a_3261551314_3212880686_p_1};
	xsi_register_didat("work_a_3261551314_3212880686", "isim/Procesador_tb_isim_beh.exe.sim/work/a_3261551314_3212880686.didat");
	xsi_register_executes(pe);
}
