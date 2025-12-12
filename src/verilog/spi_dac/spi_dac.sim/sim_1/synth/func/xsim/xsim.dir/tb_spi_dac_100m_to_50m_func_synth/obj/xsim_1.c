/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_705(char*, char *);
IKI_DLLESPEC extern void execute_706(char*, char *);
IKI_DLLESPEC extern void execute_1504(char*, char *);
IKI_DLLESPEC extern void execute_1505(char*, char *);
IKI_DLLESPEC extern void execute_1506(char*, char *);
IKI_DLLESPEC extern void execute_1507(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_for_reg(char*, char*, char*);
IKI_DLLESPEC extern void execute_1495(char*, char *);
IKI_DLLESPEC extern void execute_1496(char*, char *);
IKI_DLLESPEC extern void execute_1497(char*, char *);
IKI_DLLESPEC extern void execute_1498(char*, char *);
IKI_DLLESPEC extern void execute_1499(char*, char *);
IKI_DLLESPEC extern void execute_1500(char*, char *);
IKI_DLLESPEC extern void execute_1501(char*, char *);
IKI_DLLESPEC extern void execute_1502(char*, char *);
IKI_DLLESPEC extern void execute_1503(char*, char *);
IKI_DLLESPEC extern void execute_712(char*, char *);
IKI_DLLESPEC extern void execute_713(char*, char *);
IKI_DLLESPEC extern void execute_714(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_716(char*, char *);
IKI_DLLESPEC extern void execute_717(char*, char *);
IKI_DLLESPEC extern void execute_718(char*, char *);
IKI_DLLESPEC extern void execute_719(char*, char *);
IKI_DLLESPEC extern void execute_715(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void execute_720(char*, char *);
IKI_DLLESPEC extern void execute_721(char*, char *);
IKI_DLLESPEC extern void execute_722(char*, char *);
IKI_DLLESPEC extern void execute_723(char*, char *);
IKI_DLLESPEC extern void execute_15(char*, char *);
IKI_DLLESPEC extern void execute_16(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_24(char*, char *);
IKI_DLLESPEC extern void execute_727(char*, char *);
IKI_DLLESPEC extern void execute_728(char*, char *);
IKI_DLLESPEC extern void execute_726(char*, char *);
IKI_DLLESPEC extern void execute_27(char*, char *);
IKI_DLLESPEC extern void execute_28(char*, char *);
IKI_DLLESPEC extern void execute_30(char*, char *);
IKI_DLLESPEC extern void execute_31(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_730(char*, char *);
IKI_DLLESPEC extern void execute_731(char*, char *);
IKI_DLLESPEC extern void execute_732(char*, char *);
IKI_DLLESPEC extern void execute_733(char*, char *);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_745(char*, char *);
IKI_DLLESPEC extern void execute_746(char*, char *);
IKI_DLLESPEC extern void execute_747(char*, char *);
IKI_DLLESPEC extern void execute_748(char*, char *);
IKI_DLLESPEC extern void execute_749(char*, char *);
IKI_DLLESPEC extern void execute_750(char*, char *);
IKI_DLLESPEC extern void execute_751(char*, char *);
IKI_DLLESPEC extern void execute_752(char*, char *);
IKI_DLLESPEC extern void execute_744(char*, char *);
IKI_DLLESPEC extern void execute_65(char*, char *);
IKI_DLLESPEC extern void execute_66(char*, char *);
IKI_DLLESPEC extern void execute_848(char*, char *);
IKI_DLLESPEC extern void execute_849(char*, char *);
IKI_DLLESPEC extern void execute_708(char*, char *);
IKI_DLLESPEC extern void execute_709(char*, char *);
IKI_DLLESPEC extern void execute_710(char*, char *);
IKI_DLLESPEC extern void execute_711(char*, char *);
IKI_DLLESPEC extern void execute_1508(char*, char *);
IKI_DLLESPEC extern void execute_1509(char*, char *);
IKI_DLLESPEC extern void execute_1510(char*, char *);
IKI_DLLESPEC extern void execute_1511(char*, char *);
IKI_DLLESPEC extern void execute_1512(char*, char *);
IKI_DLLESPEC extern void execute_1513(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_315(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_330(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_384(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_389(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_394(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_399(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_414(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_419(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_424(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_429(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_434(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_459(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_464(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_474(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_479(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_484(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_494(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_499(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_504(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_509(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_514(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_519(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_529(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_549(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_554(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_564(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_569(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_579(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_584(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_589(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_594(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_599(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_604(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_609(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_619(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_624(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_629(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_639(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_644(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_649(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_654(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_659(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_669(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_679(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_689(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_724(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1017(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1022(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1027(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1032(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1037(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1042(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1047(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1052(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1057(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1062(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1067(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1072(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1077(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1082(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1087(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1092(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1097(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1102(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1107(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1112(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1117(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1122(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1127(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[176] = {(funcp)execute_2, (funcp)execute_705, (funcp)execute_706, (funcp)execute_1504, (funcp)execute_1505, (funcp)execute_1506, (funcp)execute_1507, (funcp)vlog_const_rhs_process_execute_0_fast_for_reg, (funcp)execute_1495, (funcp)execute_1496, (funcp)execute_1497, (funcp)execute_1498, (funcp)execute_1499, (funcp)execute_1500, (funcp)execute_1501, (funcp)execute_1502, (funcp)execute_1503, (funcp)execute_712, (funcp)execute_713, (funcp)execute_714, (funcp)execute_7, (funcp)execute_716, (funcp)execute_717, (funcp)execute_718, (funcp)execute_719, (funcp)execute_715, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_720, (funcp)execute_721, (funcp)execute_722, (funcp)execute_723, (funcp)execute_15, (funcp)execute_16, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_24, (funcp)execute_727, (funcp)execute_728, (funcp)execute_726, (funcp)execute_27, (funcp)execute_28, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_730, (funcp)execute_731, (funcp)execute_732, (funcp)execute_733, (funcp)execute_41, (funcp)execute_745, (funcp)execute_746, (funcp)execute_747, (funcp)execute_748, (funcp)execute_749, (funcp)execute_750, (funcp)execute_751, (funcp)execute_752, (funcp)execute_744, (funcp)execute_65, (funcp)execute_66, (funcp)execute_848, (funcp)execute_849, (funcp)execute_708, (funcp)execute_709, (funcp)execute_710, (funcp)execute_711, (funcp)execute_1508, (funcp)execute_1509, (funcp)execute_1510, (funcp)execute_1511, (funcp)execute_1512, (funcp)execute_1513, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_174, (funcp)transaction_209, (funcp)transaction_215, (funcp)transaction_233, (funcp)transaction_253, (funcp)transaction_310, (funcp)transaction_315, (funcp)transaction_320, (funcp)transaction_325, (funcp)transaction_330, (funcp)transaction_335, (funcp)transaction_367, (funcp)transaction_373, (funcp)transaction_384, (funcp)transaction_389, (funcp)transaction_394, (funcp)transaction_399, (funcp)transaction_404, (funcp)transaction_409, (funcp)transaction_414, (funcp)transaction_419, (funcp)transaction_424, (funcp)transaction_429, (funcp)transaction_434, (funcp)transaction_439, (funcp)transaction_444, (funcp)transaction_449, (funcp)transaction_454, (funcp)transaction_459, (funcp)transaction_464, (funcp)transaction_469, (funcp)transaction_474, (funcp)transaction_479, (funcp)transaction_484, (funcp)transaction_489, (funcp)transaction_494, (funcp)transaction_499, (funcp)transaction_504, (funcp)transaction_509, (funcp)transaction_514, (funcp)transaction_519, (funcp)transaction_524, (funcp)transaction_529, (funcp)transaction_534, (funcp)transaction_539, (funcp)transaction_544, (funcp)transaction_549, (funcp)transaction_554, (funcp)transaction_559, (funcp)transaction_564, (funcp)transaction_569, (funcp)transaction_574, (funcp)transaction_579, (funcp)transaction_584, (funcp)transaction_589, (funcp)transaction_594, (funcp)transaction_599, (funcp)transaction_604, (funcp)transaction_609, (funcp)transaction_614, (funcp)transaction_619, (funcp)transaction_624, (funcp)transaction_629, (funcp)transaction_634, (funcp)transaction_639, (funcp)transaction_644, (funcp)transaction_649, (funcp)transaction_654, (funcp)transaction_659, (funcp)transaction_664, (funcp)transaction_669, (funcp)transaction_674, (funcp)transaction_679, (funcp)transaction_684, (funcp)transaction_689, (funcp)transaction_694, (funcp)transaction_699, (funcp)transaction_711, (funcp)transaction_724, (funcp)transaction_1017, (funcp)transaction_1022, (funcp)transaction_1027, (funcp)transaction_1032, (funcp)transaction_1037, (funcp)transaction_1042, (funcp)transaction_1047, (funcp)transaction_1052, (funcp)transaction_1057, (funcp)transaction_1062, (funcp)transaction_1067, (funcp)transaction_1072, (funcp)transaction_1077, (funcp)transaction_1082, (funcp)transaction_1087, (funcp)transaction_1092, (funcp)transaction_1097, (funcp)transaction_1102, (funcp)transaction_1107, (funcp)transaction_1112, (funcp)transaction_1117, (funcp)transaction_1122, (funcp)transaction_1127};
const int NumRelocateId= 176;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_spi_dac_100m_to_50m_func_synth/xsim.reloc",  (void **)funcTab, 176);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_spi_dac_100m_to_50m_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_spi_dac_100m_to_50m_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_spi_dac_100m_to_50m_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_spi_dac_100m_to_50m_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_spi_dac_100m_to_50m_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
