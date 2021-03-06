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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_1382328370_3212880686_init();
    work_a_2096391741_3212880686_init();
    work_a_0123541133_3212880686_init();
    work_a_1007874614_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_2312708891_3212880686_init();
    work_a_0401794615_3212880686_init();
    work_a_0104209521_3212880686_init();
    work_a_2877832509_3212880686_init();
    work_a_3961274036_3212880686_init();
    work_a_1585446616_3212880686_init();
    work_a_3781366023_3212880686_init();
    work_a_0542593727_3212880686_init();
    work_a_3030031889_3212880686_init();
    work_a_3261551314_3212880686_init();
    work_a_1896358254_3212880686_init();
    work_a_0731188317_3212880686_init();
    work_a_3863512822_3212880686_init();
    work_a_0327277337_2372691052_init();


    xsi_register_tops("work_a_0327277337_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
