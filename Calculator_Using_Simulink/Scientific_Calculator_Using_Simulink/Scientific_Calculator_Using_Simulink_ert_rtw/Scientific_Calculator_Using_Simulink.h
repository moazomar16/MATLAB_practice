/*
 * File: Scientific_Calculator_Using_Simulink.h
 *
 * Code generated for Simulink model 'Scientific_Calculator_Using_Simulink'.
 *
 * Model version                  : 1.2
 * Simulink Coder version         : 9.0 (R2018b) 24-May-2018
 * C/C++ source code generated on : Sat Dec 24 20:16:42 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. ROM efficiency
 *    3. RAM efficiency
 *    4. MISRA C:2012 guidelines
 * Validation result: Not run
 */

#ifndef RTW_HEADER_Scientific_Calculator_Using_Simulink_h_
#define RTW_HEADER_Scientific_Calculator_Using_Simulink_h_
#include <string.h>
#include <stddef.h>
#ifndef Scientific_Calculator_Using_Simulink_COMMON_INCLUDES_
# define Scientific_Calculator_Using_Simulink_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* Scientific_Calculator_Using_Simulink_COMMON_INCLUDES_ */

#include "Scientific_Calculator_Using_Simulink_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

/* External inputs (root inport signals with default storage) */
typedef struct {
  uint8_T In1;                         /* '<Root>/In1' */
  uint8_T In2;                         /* '<Root>/In2' */
} ExtU_Scientific_Calculator_Us_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  uint8_T Out1;                        /* '<Root>/Out1' */
  uint8_T Out2;                        /* '<Root>/Out2' */
  uint16_T Out3;                       /* '<Root>/Out3' */
  uint8_T Out4;                        /* '<Root>/Out4' */
  uint8_T Out5;                        /* '<Root>/Out5' */
  uint8_T Out6;                        /* '<Root>/Out6' */
  uint8_T Out7;                        /* '<Root>/Out7' */
  uint8_T Out8;                        /* '<Root>/Out8' */
} ExtY_Scientific_Calculator_Us_T;

/* Real-time Model Data Structure */
struct tag_RTM_Scientific_Calculator_T {
  const char_T * volatile errorStatus;
};

/* External inputs (root inport signals with default storage) */
extern ExtU_Scientific_Calculator_Us_T Scientific_Calculator_Using_S_U;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_Scientific_Calculator_Us_T Scientific_Calculator_Using_S_Y;

/* Model entry point functions */
extern void Scientific_Calculator_Using_Simulink_initialize(void);
extern void Scientific_Calculator_Using_Simulink_step(void);
extern void Scientific_Calculator_Using_Simulink_terminate(void);

/* Real-time Model object */
extern RT_MODEL_Scientific_Calculato_T *const Scientific_Calculator_Using__M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Scientific_Calculator_Using_Simulink'
 * '<S1>'   : 'Scientific_Calculator_Using_Simulink/Compare To Constant'
 */
#endif                                 /* RTW_HEADER_Scientific_Calculator_Using_Simulink_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
