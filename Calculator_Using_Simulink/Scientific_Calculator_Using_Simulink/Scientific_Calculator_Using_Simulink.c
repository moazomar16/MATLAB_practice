/*
 * File: Scientific_Calculator_Using_Simulink.c
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

#include "Scientific_Calculator_Using_Simulink.h"
#include "Scientific_Calculator_Using_Simulink_private.h"

/* External inputs (root inport signals with default storage) */
ExtU_Scientific_Calculator_Us_T Scientific_Calculator_Using_S_U;

/* External outputs (root outports fed by signals with default storage) */
ExtY_Scientific_Calculator_Us_T Scientific_Calculator_Using_S_Y;

/* Real-time model */
RT_MODEL_Scientific_Calculato_T Scientific_Calculator_Using__M_;
RT_MODEL_Scientific_Calculato_T *const Scientific_Calculator_Using__M =
  &Scientific_Calculator_Using__M_;
uint8_T rt_sqrt_Uu8_Yu8_Iu32_f_s(uint8_T u)
{
  uint8_T y;
  uint8_T tmp01_y;
  uint8_T shiftMask;
  int32_T iBit;

  /* Fixed-Point Sqrt Computation by the bisection method. */
  if (u > 0) {
    y = 0U;
    shiftMask = 128U;
    for (iBit = 0; iBit < 8; iBit++) {
      tmp01_y = (uint8_T)(y | shiftMask);
      if ((uint32_T)tmp01_y * tmp01_y <= u) {
        y = tmp01_y;
      }

      shiftMask = (uint8_T)((uint32_T)shiftMask >> 1U);
    }
  } else {
    y = 0U;
  }

  return y;
}

/* Model step function */
void Scientific_Calculator_Using_Simulink_step(void)
{
  int32_T tmp;

  /* Outport: '<Root>/Out1' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Sum: '<Root>/Add'
   */
  Scientific_Calculator_Using_S_Y.Out1 = (uint8_T)((uint32_T)
    Scientific_Calculator_Using_S_U.In1 + Scientific_Calculator_Using_S_U.In2);

  /* Outport: '<Root>/Out2' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Sum: '<Root>/Subtract'
   */
  Scientific_Calculator_Using_S_Y.Out2 = (uint8_T)
    (Scientific_Calculator_Using_S_U.In1 - Scientific_Calculator_Using_S_U.In2);

  /* Outport: '<Root>/Out3' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Product: '<Root>/Multiply'
   */
  Scientific_Calculator_Using_S_Y.Out3 = (uint16_T)((uint32_T)
    Scientific_Calculator_Using_S_U.In1 * Scientific_Calculator_Using_S_U.In2);

  /* Product: '<Root>/Divide' incorporates:
   *  Constant: '<S1>/Constant'
   *  Inport: '<Root>/In2'
   *  RelationalOperator: '<S1>/Compare'
   */
  tmp = (Scientific_Calculator_Using_S_U.In2 > 0);

  /* Outport: '<Root>/Out4' incorporates:
   *  Inport: '<Root>/In1'
   *  Product: '<Root>/Divide'
   */
  Scientific_Calculator_Using_S_Y.Out4 = (uint8_T)((uint32_T)tmp == 0U ?
    MAX_uint32_T : (uint32_T)Scientific_Calculator_Using_S_U.In1 / tmp);

  /* Outport: '<Root>/Out5' incorporates:
   *  Inport: '<Root>/In1'
   *  Sqrt: '<Root>/Sqrt1'
   */
  Scientific_Calculator_Using_S_Y.Out5 = rt_sqrt_Uu8_Yu8_Iu32_f_s
    (Scientific_Calculator_Using_S_U.In1);

  /* Outport: '<Root>/Out6' incorporates:
   *  Inport: '<Root>/In2'
   *  Sqrt: '<Root>/Sqrt'
   */
  Scientific_Calculator_Using_S_Y.Out6 = rt_sqrt_Uu8_Yu8_Iu32_f_s
    (Scientific_Calculator_Using_S_U.In2);

  /* MinMax: '<Root>/Min' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   */
  if (Scientific_Calculator_Using_S_U.In1 < Scientific_Calculator_Using_S_U.In2)
  {
    /* Outport: '<Root>/Out7' */
    Scientific_Calculator_Using_S_Y.Out7 = Scientific_Calculator_Using_S_U.In1;
  } else {
    /* Outport: '<Root>/Out7' */
    Scientific_Calculator_Using_S_Y.Out7 = Scientific_Calculator_Using_S_U.In2;
  }

  /* End of MinMax: '<Root>/Min' */

  /* MinMax: '<Root>/Max' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   */
  if (Scientific_Calculator_Using_S_U.In1 > Scientific_Calculator_Using_S_U.In2)
  {
    /* Outport: '<Root>/Out8' */
    Scientific_Calculator_Using_S_Y.Out8 = Scientific_Calculator_Using_S_U.In1;
  } else {
    /* Outport: '<Root>/Out8' */
    Scientific_Calculator_Using_S_Y.Out8 = Scientific_Calculator_Using_S_U.In2;
  }

  /* End of MinMax: '<Root>/Max' */
}

/* Model initialize function */
void Scientific_Calculator_Using_Simulink_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(Scientific_Calculator_Using__M, (NULL));

  /* external inputs */
  (void)memset(&Scientific_Calculator_Using_S_U, 0, sizeof
               (ExtU_Scientific_Calculator_Us_T));

  /* external outputs */
  (void) memset((void *)&Scientific_Calculator_Using_S_Y, 0,
                sizeof(ExtY_Scientific_Calculator_Us_T));
}

/* Model terminate function */
void Scientific_Calculator_Using_Simulink_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
