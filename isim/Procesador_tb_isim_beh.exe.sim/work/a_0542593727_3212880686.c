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
static const char *ng0 = "C:/Users/Smith/Documents/xilinx/ProcesadorMonoSparc8/SEU30.vhd";



static void work_a_0542593727_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (29 - 29);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB7:    t17 = (t0 + 3036);
    t19 = (2U != 2U);
    if (t19 == 1)
        goto LAB9;

LAB10:    t20 = (t0 + 1736);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t17, 2U);
    xsi_driver_first_trans_delta(t20, 0U, 2U, 0LL);

LAB2:    t25 = (t0 + 1684);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 3034);
    t11 = (2U != 2U);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 1736);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 2U);
    xsi_driver_first_trans_delta(t12, 0U, 2U, 0LL);
    goto LAB2;

LAB5:    xsi_size_not_matching(2U, 2U, 0);
    goto LAB6;

LAB8:    goto LAB2;

LAB9:    xsi_size_not_matching(2U, 2U, 0);
    goto LAB10;

}

static void work_a_0542593727_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 1772);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 30U);
    xsi_driver_first_trans_delta(t1, 2U, 30U, 0LL);

LAB2:    t7 = (t0 + 1692);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0542593727_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0542593727_3212880686_p_0,(void *)work_a_0542593727_3212880686_p_1};
	xsi_register_didat("work_a_0542593727_3212880686", "isim/Procesador_tb_isim_beh.exe.sim/work/a_0542593727_3212880686.didat");
	xsi_register_executes(pe);
}
