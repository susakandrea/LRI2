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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/LRI2/lab1_UART/UART_transmitter.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_3885157396_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5808);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 9414);
    t5 = (t0 + 5984);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 9418);
    t5 = (t0 + 6048);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 9421);
    t5 = (t0 + 6112);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 6176);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2312U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t2 = (t0 + 5920);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = t12;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5984);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 3U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 6112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB9;

}

static void work_a_3885157396_3212880686_p_1(char *t0)
{
    char t12[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    unsigned int t17;
    char *t18;
    unsigned int t20;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6};

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6240);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 6304);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 6368);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 3U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 6432);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6496);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 6560);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5824);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(91, ng0);
    t4 = (t0 + 6496);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB2;

LAB4:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 6496);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB5:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t16 = (0 - 7);
    t13 = (t16 * -1);
    t14 = (1U * t13);
    t17 = (0 + t14);
    t1 = (t2 + t17);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 6496);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB2;

LAB6:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 6496);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB34;

LAB36:
LAB35:    goto LAB2;

LAB7:    goto LAB2;

LAB8:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 6240);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 9429);
    t4 = (t0 + 6304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6432);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 9304U);
    t10 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t1, 15);
    if (t10 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 9304U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (4U != t14);
    if (t3 == 1)
        goto LAB17;

LAB18:    t6 = (t0 + 6304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);

LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(102, ng0);
    t5 = (t0 + 6240);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 9433);
    t4 = (t0 + 6304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 9437);
    t4 = (t0 + 6368);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB15;

LAB17:    xsi_size_not_matching(4U, t14, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 9304U);
    t10 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t1, 15);
    if (t10 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 9304U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (4U != t14);
    if (t3 == 1)
        goto LAB32;

LAB33:    t6 = (t0 + 6304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);

LAB23:    goto LAB20;

LAB22:    xsi_set_current_line(114, ng0);
    t5 = (t0 + 9440);
    t7 = (t0 + 6304);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t15 = (t11 + 56U);
    t18 = *((char **)t15);
    memcpy(t18, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t13 = (7 - 7);
    t14 = (t13 * 1U);
    t17 = (0 + t14);
    t1 = (t2 + t17);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t19 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t16 = (1 - 7);
    t20 = (t16 * -1);
    t20 = (t20 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t20;
    t4 = xsi_base_array_concat(t4, t12, t5, (char)99, (unsigned char)2, (char)97, t1, t19, (char)101);
    t20 = (1U + 7U);
    t3 = (8U != t20);
    if (t3 == 1)
        goto LAB25;

LAB26:    t7 = (t0 + 6432);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t15 = (t11 + 56U);
    t18 = *((char **)t15);
    memcpy(t18, t4, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 9320U);
    t16 = (8 - 1);
    t3 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t16);
    if (t3 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 9320U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (3U != t14);
    if (t3 == 1)
        goto LAB30;

LAB31:    t6 = (t0 + 6368);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 3U);
    xsi_driver_first_trans_fast(t6);

LAB28:    goto LAB23;

LAB25:    xsi_size_not_matching(8U, t20, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(117, ng0);
    t4 = (t0 + 6240);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    goto LAB28;

LAB30:    xsi_size_not_matching(3U, t14, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(4U, t14, 0);
    goto LAB33;

LAB34:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 9304U);
    t16 = (16 - 1);
    t10 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t1, t16);
    if (t10 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 9304U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (4U != t14);
    if (t3 == 1)
        goto LAB40;

LAB41:    t6 = (t0 + 6304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);

LAB38:    goto LAB35;

LAB37:    xsi_set_current_line(130, ng0);
    t5 = (t0 + 6240);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6560);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB38;

LAB40:    xsi_size_not_matching(4U, t14, 0);
    goto LAB41;

}

static void work_a_3885157396_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(140, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6624);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5840);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3885157396_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3885157396_3212880686_p_0,(void *)work_a_3885157396_3212880686_p_1,(void *)work_a_3885157396_3212880686_p_2};
	xsi_register_didat("work_a_3885157396_3212880686", "isim/UART_full_isim_beh.exe.sim/work/a_3885157396_3212880686.didat");
	xsi_register_executes(pe);
}
