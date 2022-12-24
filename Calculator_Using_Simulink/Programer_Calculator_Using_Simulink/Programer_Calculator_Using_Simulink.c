/*
 * File: Programer_Calculator_Using_Simulink.c
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

#include "Programer_Calculator_Using_Simulink.h"
#include "Programer_Calculator_Using_Simulink_private.h"

/* External inputs (root inport signals with default storage) */
ExtU_Programer_Calculator_Usi_T Programer_Calculator_Using_Si_U;

/* External outputs (root outports fed by signals with default storage) */
ExtY_Programer_Calculator_Usi_T Programer_Calculator_Using_Si_Y;

/* Real-time model */
RT_MODEL_Programer_Calculator_T Programer_Calculator_Using_S_M_;
RT_MODEL_Programer_Calculator_T *const Programer_Calculator_Using_S_M =
  &Programer_Calculator_Using_S_M_;

/* Model step function */
void Programer_Calculator_Using_Simulink_step(void)
{
  /* S-Function (sfix_bitop): '<Root>/Bitwise Operator' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Logic: '<Root>/Logical Operator'
   */
  Programer_Calculator_Using_Si_Y.Out1 = (Programer_Calculator_Using_Si_U.In1 &&
    Programer_Calculator_Using_Si_U.In2);

  /* S-Function (sfix_bitop): '<Root>/Bitwise Operator1' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Logic: '<Root>/Logical Operator1'
   */
  Programer_Calculator_Using_Si_Y.Out2 = (Programer_Calculator_Using_Si_U.In1 ||
    Programer_Calculator_Using_Si_U.In2);

  /* S-Function (sfix_bitop): '<Root>/Bitwise Operator2' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Logic: '<Root>/Logical Operator2'
   *  Logic: '<Root>/Logical Operator6'
   *  Logic: '<Root>/Logical Operator7'
   *  S-Function (sfix_bitop): '<Root>/Bitwise Operator3'
   *  S-Function (sfix_bitop): '<Root>/Bitwise Operator5'
   *  S-Function (sfix_bitop): '<Root>/Bitwise Operator6'
   */
  Programer_Calculator_Using_Si_Y.Out6 = !Programer_Calculator_Using_Si_U.In1;
  Programer_Calculator_Using_Si_Y.Out7 = !Programer_Calculator_Using_Si_U.In2;
  Programer_Calculator_Using_Si_Y.Out3 = (Programer_Calculator_Using_Si_Y.Out6 ||
    Programer_Calculator_Using_Si_Y.Out7);

  /* S-Function (sfix_bitop): '<Root>/Bitwise Operator3' incorporates:
   *  Logic: '<Root>/Logical Operator3'
   */
  Programer_Calculator_Using_Si_Y.Out4 = (Programer_Calculator_Using_Si_Y.Out6 &&
    Programer_Calculator_Using_Si_Y.Out7);

  /* S-Function (sfix_bitop): '<Root>/Bitwise Operator4' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Logic: '<Root>/Logical Operator4'
   */
  Programer_Calculator_Using_Si_Y.Out5 = Programer_Calculator_Using_Si_U.In1 ^
    Programer_Calculator_Using_Si_U.In2;

  /* Outport: '<Root>/Out8' */
  Programer_Calculator_Using_Si_Y.Out8 = Programer_Calculator_Using_Si_Y.Out1;

  /* Outport: '<Root>/Out9' */
  Programer_Calculator_Using_Si_Y.Out9 = Programer_Calculator_Using_Si_Y.Out2;

  /* Outport: '<Root>/Out10' */
  Programer_Calculator_Using_Si_Y.Out10 = Programer_Calculator_Using_Si_Y.Out3;

  /* Outport: '<Root>/Out11' */
  Programer_Calculator_Using_Si_Y.Out11 = Programer_Calculator_Using_Si_Y.Out4;

  /* Outport: '<Root>/Out12' */
  Programer_Calculator_Using_Si_Y.Out12 = Programer_Calculator_Using_Si_Y.Out5;

  /* Outport: '<Root>/Out13' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Logic: '<Root>/Logical Operator5'
   */
  Programer_Calculator_Using_Si_Y.Out13 = (Programer_Calculator_Using_Si_U.In1 ==
    Programer_Calculator_Using_Si_U.In2);

  /* Outport: '<Root>/Out14' */
  Programer_Calculator_Using_Si_Y.Out14 = Programer_Calculator_Using_Si_Y.Out6;

  /* Outport: '<Root>/Out15' */
  Programer_Calculator_Using_Si_Y.Out15 = Programer_Calculator_Using_Si_Y.Out7;
}

/* Model initialize function */
void Programer_Calculator_Using_Simulink_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(Programer_Calculator_Using_S_M, (NULL));

  /* external inputs */
  (void)memset(&Programer_Calculator_Using_Si_U, 0, sizeof
               (ExtU_Programer_Calculator_Usi_T));

  /* external outputs */
  (void) memset((void *)&Programer_Calculator_Using_Si_Y, 0,
                sizeof(ExtY_Programer_Calculator_Usi_T));
}

/* Model terminate function */
void Programer_Calculator_Using_Simulink_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
