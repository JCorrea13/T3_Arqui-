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

/* This file is designed for use with ISim build 0xb4d1ced7 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



char *work_p_2180760208_sub_15661773956858227124_658403332(char *t1, char *t2, char *t3, int t4)
{
    char t5[128];
    char t6[24];
    char t7[16];
    char t12[16];
    char t17[8];
    char *t0;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    int t30;
    int t31;
    char *t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned char t37;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    static char *nl0[] = {&&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB15, &&LAB16, &&LAB17, &&LAB18, &&LAB19, &&LAB20, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB15, &&LAB16, &&LAB17, &&LAB18, &&LAB19, &&LAB20, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21, &&LAB21};

LAB0:    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 200;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (200 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t12 + 0U);
    t13 = (t9 + 0U);
    *((int *)t13) = 3;
    t13 = (t9 + 4U);
    *((int *)t13) = 0;
    t13 = (t9 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 3);
    t11 = (t14 * -1);
    t11 = (t11 + 1);
    t13 = (t9 + 12U);
    *((unsigned int *)t13) = t11;
    t13 = (t5 + 4U);
    t15 = (t1 + 2912);
    t16 = (t13 + 88U);
    *((char **)t16) = t15;
    t18 = (t13 + 56U);
    *((char **)t18) = t17;
    xsi_type_set_default_value(t15, t17, 0);
    t19 = (t13 + 64U);
    t20 = (t15 + 72U);
    t21 = *((char **)t20);
    *((char **)t19) = t21;
    t22 = (t13 + 80U);
    *((unsigned int *)t22) = 4U;
    t23 = (t6 + 4U);
    t24 = (t3 != 0);
    if (t24 == 1)
        goto LAB3;

LAB2:    t25 = (t6 + 12U);
    *((char **)t25) = t7;
    t26 = (t6 + 20U);
    *((int *)t26) = t4;
    t27 = (t7 + 0U);
    t28 = *((int *)t27);
    t29 = (t7 + 8U);
    t30 = *((int *)t29);
    t31 = (t4 - t28);
    t11 = (t31 * t30);
    t32 = (t7 + 4U);
    t33 = *((int *)t32);
    xsi_vhdl_check_range_of_index(t28, t33, t30, t4);
    t34 = (1U * t11);
    t35 = (0 + t34);
    t36 = (t3 + t35);
    t37 = *((unsigned char *)t36);
    t38 = (char *)((nl0) + t37);
    goto **((char **)t38);

LAB3:    *((char **)t23) = t3;
    goto LAB2;

LAB4:    t8 = (t13 + 56U);
    t9 = *((char **)t8);
    t0 = xsi_get_transient_memory(4U);
    memcpy(t0, t9, 4U);
    t8 = (t2 + 0U);
    t15 = (t8 + 0U);
    *((int *)t15) = 3;
    t15 = (t8 + 4U);
    *((int *)t15) = 0;
    t15 = (t8 + 8U);
    *((int *)t15) = -1;
    t10 = (0 - 3);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t15 = (t8 + 12U);
    *((unsigned int *)t15) = t11;

LAB1:    return t0;
LAB5:    t39 = (t1 + 4640);
    t41 = (t13 + 56U);
    t42 = *((char **)t41);
    t41 = (t42 + 0);
    memcpy(t41, t39, 4U);
    goto LAB4;

LAB6:    t8 = (t1 + 4644);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB7:    t8 = (t1 + 4648);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB8:    t8 = (t1 + 4652);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB9:    t8 = (t1 + 4656);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB10:    t8 = (t1 + 4660);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB11:    t8 = (t1 + 4664);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB12:    t8 = (t1 + 4668);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB13:    t8 = (t1 + 4672);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB14:    t8 = (t1 + 4676);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB15:    t8 = (t1 + 4680);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB16:    t8 = (t1 + 4684);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB17:    t8 = (t1 + 4688);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB18:    t8 = (t1 + 4692);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB19:    t8 = (t1 + 4696);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB20:    t8 = (t1 + 4700);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB21:    t8 = (t1 + 4704);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t8, 4U);
    goto LAB4;

LAB22:;
}


void ieee_p_2592010699_sub_7991387870887201249_503743352();

void ieee_p_2592010699_sub_7991387870887201249_503743352();

void ieee_p_2592010699_sub_7991387870887201249_503743352();

void ieee_p_2592010699_sub_7991387870887201249_503743352();

extern void work_p_2180760208_init()
{
	static char *se[] = {(void *)work_p_2180760208_sub_15661773956858227124_658403332};
	xsi_register_didat("work_p_2180760208", "isim/CPU_tb_isim_beh.exe.sim/work/p_2180760208.didat");
	xsi_register_subprogram_executes(se);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 3);
	xsi_register_resolution_function(2, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 3);
	xsi_register_resolution_function(3, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 3);
	xsi_register_resolution_function(4, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 3);
}
