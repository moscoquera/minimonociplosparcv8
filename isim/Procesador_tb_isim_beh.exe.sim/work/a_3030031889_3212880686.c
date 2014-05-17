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
static const char *ng0 = "C:/Users/Smith/Documents/xilinx/ProcesadorMonoSparc8/muxPcSource.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3030031889_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4072U);
    t4 = (t0 + 776U);
    t5 = *((char **)t4);
    t4 = (t0 + 4104U);
    t6 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (32U != t9);
    if (t10 == 1)
        goto LAB2;

LAB3:    t11 = (t0 + 2228);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4088U);
    t4 = (t0 + 776U);
    t5 = *((char **)t4);
    t4 = (t0 + 4104U);
    t6 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (32U != t9);
    if (t10 == 1)
        goto LAB4;

LAB5:    t11 = (t0 + 2264);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 4450);
    t16 = xsi_mem_cmp(t2, t3, 2U);
    if (t16 == 1)
        goto LAB7;

LAB12:    t5 = (t0 + 4452);
    t17 = xsi_mem_cmp(t5, t3, 2U);
    if (t17 == 1)
        goto LAB8;

LAB13:    t7 = (t0 + 4454);
    t18 = xsi_mem_cmp(t7, t3, 2U);
    if (t18 == 1)
        goto LAB9;

LAB14:    t12 = (t0 + 4456);
    t19 = xsi_mem_cmp(t12, t3, 2U);
    if (t19 == 1)
        goto LAB10;

LAB15:
LAB11:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t2 = (t0 + 2300);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);

LAB6:    t2 = (t0 + 2184);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, t9, 0);
    goto LAB3;

LAB4:    xsi_size_not_matching(32U, t9, 0);
    goto LAB5;

LAB7:    xsi_set_current_line(57, ng0);
    t14 = (t0 + 960U);
    t15 = *((char **)t14);
    t14 = (t0 + 2300);
    t20 = (t14 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB6;

LAB8:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1236U);
    t3 = *((char **)t2);
    t2 = (t0 + 2300);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB6;

LAB9:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t2 = (t0 + 2300);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB6;

LAB10:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t2 = (t0 + 2300);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB6;

LAB16:;
}


extern void work_a_3030031889_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3030031889_3212880686_p_0};
	xsi_register_didat("work_a_3030031889_3212880686", "isim/Procesador_tb_isim_beh.exe.sim/work/a_3030031889_3212880686.didat");
	xsi_register_executes(pe);
}
