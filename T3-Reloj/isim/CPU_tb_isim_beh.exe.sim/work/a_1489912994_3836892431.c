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
static const char *ng0 = "/home/PORTOALEGRE/16171024/Documents/T3/T3_Arqui-/T3-Reloj/mrStd_tb.vhd";
extern char *IEEE_P_3620187407;
extern char *WORK_P_2180760208;

char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_1489912994_3836892431_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 1840U);
    t4 = *((char **)t2);
    t5 = (t0 + 23653);
    t7 = (t0 + 2616);
    t7 = *((char **)t7);
    t8 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t1, t3, t4, t5, t7);
    t9 = (t1 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (1U * t10);
    t12 = (32U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 4512);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 32U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 4400);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t11, 0);
    goto LAB6;

}

static void work_a_1489912994_3836892431_p_1(char *t0)
{
    char t23[16];
    char t43[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    int t21;
    unsigned char t22;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    char *t33;
    int t34;
    unsigned char t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;

LAB0:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4416);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(91, ng0);
    t4 = (t0 + 1192U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(92, ng0);
    t4 = (t0 + 2312U);
    t16 = *((char **)t4);
    t17 = (31 - 15);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t4 = (t16 + t19);
    t20 = (t0 + 7136U);
    t21 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t4, t20);
    t22 = (t21 >= 0);
    if (t22 == 1)
        goto LAB17;

LAB18:    t15 = (unsigned char)0;

LAB19:    if (t15 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB9;

LAB11:    t4 = (t0 + 1352U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t8 = t14;
    goto LAB13;

LAB14:    xsi_set_current_line(93, ng0);
    t32 = (t0 + 1672U);
    t36 = *((char **)t32);
    t37 = *((unsigned char *)t36);
    t38 = (t37 == (unsigned char)3);
    if (t38 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t17 = (31 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t4 + t19);
    t5 = (t0 + 2312U);
    t9 = *((char **)t5);
    t26 = (31 - 15);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t5 = (t9 + t28);
    t12 = (t0 + 7136U);
    t21 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t5, t12);
    t31 = (t21 - 0);
    t40 = (t31 * 1);
    t41 = (8U * t40);
    t42 = (0U + t41);
    t16 = (t0 + 4576);
    t20 = (t16 + 56U);
    t24 = *((char **)t20);
    t25 = (t24 + 56U);
    t29 = *((char **)t25);
    memcpy(t29, t2, 8U);
    xsi_driver_first_trans_delta(t16, t42, 8U, 0LL);
    goto LAB15;

LAB17:    t24 = (t0 + 2312U);
    t25 = *((char **)t24);
    t26 = (31 - 15);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t24 = (t25 + t28);
    t29 = (t0 + 7136U);
    t30 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t23, t24, t29, 3);
    t31 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t30, t23);
    t32 = ((WORK_P_2180760208) + 1168U);
    t33 = *((char **)t32);
    t34 = *((int *)t33);
    t35 = (t31 <= t34);
    t15 = t35;
    goto LAB19;

LAB20:    xsi_set_current_line(94, ng0);
    t32 = (t0 + 1992U);
    t39 = *((char **)t32);
    t40 = (31 - 31);
    t41 = (t40 * 1U);
    t42 = (0 + t41);
    t32 = (t39 + t42);
    t44 = (t0 + 2312U);
    t45 = *((char **)t44);
    t46 = (31 - 15);
    t47 = (t46 * 1U);
    t48 = (0 + t47);
    t44 = (t45 + t48);
    t49 = (t0 + 7136U);
    t50 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t43, t44, t49, 3);
    t51 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t50, t43);
    t52 = (t51 - 0);
    t53 = (t52 * 1);
    t54 = (8U * t53);
    t55 = (0U + t54);
    t56 = (t0 + 4576);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t32, 8U);
    xsi_driver_first_trans_delta(t56, t55, 8U, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t17 = (31 - 23);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t4 + t19);
    t5 = (t0 + 2312U);
    t9 = *((char **)t5);
    t26 = (31 - 15);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t5 = (t9 + t28);
    t12 = (t0 + 7136U);
    t16 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t23, t5, t12, 2);
    t21 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t16, t23);
    t31 = (t21 - 0);
    t40 = (t31 * 1);
    t41 = (8U * t40);
    t42 = (0U + t41);
    t20 = (t0 + 4576);
    t24 = (t20 + 56U);
    t25 = *((char **)t24);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t2, 8U);
    xsi_driver_first_trans_delta(t20, t42, 8U, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t17 = (31 - 15);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t4 + t19);
    t5 = (t0 + 2312U);
    t9 = *((char **)t5);
    t26 = (31 - 15);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t5 = (t9 + t28);
    t12 = (t0 + 7136U);
    t16 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t23, t5, t12, 1);
    t21 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t16, t23);
    t31 = (t21 - 0);
    t40 = (t31 * 1);
    t41 = (8U * t40);
    t42 = (0U + t41);
    t20 = (t0 + 4576);
    t24 = (t20 + 56U);
    t25 = *((char **)t24);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t2, 8U);
    xsi_driver_first_trans_delta(t20, t42, 8U, 0LL);
    goto LAB21;

}

static void work_a_1489912994_3836892431_p_2(char *t0)
{
    char t24[16];
    char t38[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    int t22;
    unsigned char t23;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;

LAB0:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4432);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(108, ng0);
    t4 = (t0 + 1192U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)2);
    if (t13 == 1)
        goto LAB17;

LAB18:    t10 = (unsigned char)0;

LAB19:    if (t10 == 1)
        goto LAB14;

LAB15:    t9 = (unsigned char)0;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(115, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t4 = t2;
    memset(t4, (unsigned char)4, 8U);
    t5 = (t0 + 4640);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t4 = t2;
    memset(t4, (unsigned char)4, 8U);
    t5 = (t0 + 4640);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t4 = t2;
    memset(t4, (unsigned char)4, 8U);
    t5 = (t0 + 4640);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_delta(t5, 16U, 8U, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t4 = t2;
    memset(t4, (unsigned char)4, 8U);
    t5 = (t0 + 4640);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t21 = *((char **)t17);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_delta(t5, 24U, 8U, 0LL);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(110, ng0);
    t33 = (t0 + 2152U);
    t37 = *((char **)t33);
    t33 = (t0 + 2312U);
    t39 = *((char **)t33);
    t40 = (31 - 15);
    t41 = (t40 * 1U);
    t42 = (0 + t41);
    t33 = (t39 + t42);
    t43 = (t0 + 7136U);
    t44 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t38, t33, t43, 3);
    t45 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t44, t38);
    t46 = (t45 - 0);
    t47 = (t46 * 1);
    xsi_vhdl_check_range_of_index(0, 2048, 1, t45);
    t48 = (8U * t47);
    t49 = (0 + t48);
    t50 = (t37 + t49);
    t51 = (t0 + 4640);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memcpy(t55, t50, 8U);
    xsi_driver_first_trans_delta(t51, 0U, 8U, 0LL);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t18 = (31 - 15);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t5 + t20);
    t11 = (t0 + 7136U);
    t14 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t24, t2, t11, 2);
    t22 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t14, t24);
    t32 = (t22 - 0);
    t27 = (t32 * 1);
    xsi_vhdl_check_range_of_index(0, 2048, 1, t22);
    t28 = (8U * t27);
    t29 = (0 + t28);
    t17 = (t4 + t29);
    t21 = (t0 + 4640);
    t25 = (t21 + 56U);
    t26 = *((char **)t25);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t17, 8U);
    xsi_driver_first_trans_delta(t21, 8U, 8U, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t18 = (31 - 15);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t5 + t20);
    t11 = (t0 + 7136U);
    t14 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t24, t2, t11, 1);
    t22 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t14, t24);
    t32 = (t22 - 0);
    t27 = (t32 * 1);
    xsi_vhdl_check_range_of_index(0, 2048, 1, t22);
    t28 = (8U * t27);
    t29 = (0 + t28);
    t17 = (t4 + t29);
    t21 = (t0 + 4640);
    t25 = (t21 + 56U);
    t26 = *((char **)t25);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t17, 8U);
    xsi_driver_first_trans_delta(t21, 16U, 8U, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t18 = (31 - 15);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t5 + t20);
    t11 = (t0 + 7136U);
    t22 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t2, t11);
    t32 = (t22 - 0);
    t27 = (t32 * 1);
    xsi_vhdl_check_range_of_index(0, 2048, 1, t22);
    t28 = (8U * t27);
    t29 = (0 + t28);
    t14 = (t4 + t29);
    t17 = (t0 + 4640);
    t21 = (t17 + 56U);
    t25 = *((char **)t21);
    t26 = (t25 + 56U);
    t30 = *((char **)t26);
    memcpy(t30, t14, 8U);
    xsi_driver_first_trans_delta(t17, 24U, 8U, 0LL);
    goto LAB9;

LAB11:    t25 = (t0 + 2312U);
    t26 = *((char **)t25);
    t27 = (31 - 15);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t25 = (t26 + t29);
    t30 = (t0 + 7136U);
    t31 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t24, t25, t30, 3);
    t32 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t31, t24);
    t33 = ((WORK_P_2180760208) + 1168U);
    t34 = *((char **)t33);
    t35 = *((int *)t34);
    t36 = (t32 <= t35);
    t8 = t36;
    goto LAB13;

LAB14:    t4 = (t0 + 2312U);
    t17 = *((char **)t4);
    t18 = (31 - 15);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t4 = (t17 + t20);
    t21 = (t0 + 7136U);
    t22 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t4, t21);
    t23 = (t22 >= 0);
    t9 = t23;
    goto LAB16;

LAB17:    t4 = (t0 + 1512U);
    t14 = *((char **)t4);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)2);
    t10 = t16;
    goto LAB19;

}


extern void work_a_1489912994_3836892431_init()
{
	static char *pe[] = {(void *)work_a_1489912994_3836892431_p_0,(void *)work_a_1489912994_3836892431_p_1,(void *)work_a_1489912994_3836892431_p_2};
	xsi_register_didat("work_a_1489912994_3836892431", "isim/CPU_tb_isim_beh.exe.sim/work/a_1489912994_3836892431.didat");
	xsi_register_executes(pe);
}
