/*
 * File: Programer_Calculator_Using_Simulink.h
 *
 * Code generated for Simulink model 'Programer_Calculator_Using_Simulink'.
 *
 * Model version                  : 1.0
 * Simulink Coder version         : 9.0 (R2018b) 24-May-2018
 * C/C++ source code generated on : Sat Dec 24 20:30:23 2022
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

#ifndef RTW_HEADER_Programer_Calculator_Using_Simulink_h_
#define RTW_HEADER_Programer_Calculator_Using_Simulink_h_
#include <string.h>
#include <stddef.h>
#ifndef Programer_Calculator_Using_Simulink_COMMON_INCLUDES_
# define Programer_Calculator_Using_Simulink_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* Programer_Calculator_Using_Simulink_COMMON_INCLUDES_ */

#include "Programer_Calculator_Using_Simulink_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

/* External inputs (root inport signals with default storage) */
typedef struct {
  boolean_T In1;                       /* '<Root>/In1' */
  boolean_T In2;                       /* '<Root>/In2' */
} ExtU_Programer_Calculator_Usi_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  boolean_T Out1;                      /* '<Root>/Out1' */
  boolean_T Out2;                      /* '<Root>/Out2' */
  boolean_T Out3;                      /* '<Root>/Out3' */
  boolean_T Out4;                      /* '<Root>/Out4' */
  boolean_T Out5;                      /* '<Root>/Out5' */
  boolean_T Out6;                      /* '<Root>/Out6' */
  boolean_T Out7;                      /* '<Root>/Out7' */
  boolean_T Out8;                      /* '<Root>/Out8' */
  boolean_T Out9;                      /* '<Root>/Out9' */
  boolean_T Out10;                     /* '<Root>/Out10' */
  boolean_T Out11;                     /* '<Root>/Out11' */
  boolean_T Out12;                     /* '<Root>/Out12' */
  boolean_T Out13;                     /* '<Root>/Out13' */
  boolean_T Out14;                     /* '<Root>/Out14' */
  boolean_T Out15;                     /* '<Root>/Out15' */
} ExtY_Programer_Calculator_Usi_T;

/* Real-time Model Data Structure */
struct tag_RTM_Programer_Calculator__T {
  const char_T * volatile errorStatus;
};

/* External inputs (root inport signals with default storage) */
extern ExtU_Programer_Calculator_Usi_T Programer_Calculator_Using_Si_U;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_Programer_Calculator_Usi_T Programer_Calculator_Using_Si_Y;

/* Model entry point functions */
extern void Programer_Calculator_Using_Simulink_initialize(void);
extern void Programer_Calculator_Using_Simulink_step(void);
extern void Programer_Calculator_Using_Simulink_terminate(void);

/* Real-time Model object */
extern RT_MODEL_Programer_Calculator_T *const Programer_Calculator_Using_S_M;

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
 * '<Root>' : 'Programer_Calculator_Using_Simulink'
 */
#endif                                 /* RTW_HEADER_Programer_Calculator_Using_Simulink_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
