// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XSOBEL_H
#define XSOBEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsobel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XSobel_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XSobel;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSobel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSobel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSobel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSobel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSobel_Initialize(XSobel *InstancePtr, u16 DeviceId);
XSobel_Config* XSobel_LookupConfig(u16 DeviceId);
int XSobel_CfgInitialize(XSobel *InstancePtr, XSobel_Config *ConfigPtr);
#else
int XSobel_Initialize(XSobel *InstancePtr, const char* InstanceName);
int XSobel_Release(XSobel *InstancePtr);
#endif

void XSobel_Start(XSobel *InstancePtr);
u32 XSobel_IsDone(XSobel *InstancePtr);
u32 XSobel_IsIdle(XSobel *InstancePtr);
u32 XSobel_IsReady(XSobel *InstancePtr);
void XSobel_EnableAutoRestart(XSobel *InstancePtr);
void XSobel_DisableAutoRestart(XSobel *InstancePtr);

void XSobel_Set_rows(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_rows(XSobel *InstancePtr);
void XSobel_Set_cols(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_cols(XSobel *InstancePtr);
void XSobel_Set_C_XR0C0(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR0C0(XSobel *InstancePtr);
void XSobel_Set_C_XR0C1(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR0C1(XSobel *InstancePtr);
void XSobel_Set_C_XR0C2(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR0C2(XSobel *InstancePtr);
void XSobel_Set_C_XR1C0(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR1C0(XSobel *InstancePtr);
void XSobel_Set_C_XR1C1(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR1C1(XSobel *InstancePtr);
void XSobel_Set_C_XR1C2(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR1C2(XSobel *InstancePtr);
void XSobel_Set_C_XR2C0(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR2C0(XSobel *InstancePtr);
void XSobel_Set_C_XR2C1(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR2C1(XSobel *InstancePtr);
void XSobel_Set_C_XR2C2(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_XR2C2(XSobel *InstancePtr);
void XSobel_Set_C_YR0C0(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR0C0(XSobel *InstancePtr);
void XSobel_Set_C_YR0C1(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR0C1(XSobel *InstancePtr);
void XSobel_Set_C_YR0C2(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR0C2(XSobel *InstancePtr);
void XSobel_Set_C_YR1C0(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR1C0(XSobel *InstancePtr);
void XSobel_Set_C_YR1C1(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR1C1(XSobel *InstancePtr);
void XSobel_Set_C_YR1C2(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR1C2(XSobel *InstancePtr);
void XSobel_Set_C_YR2C0(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR2C0(XSobel *InstancePtr);
void XSobel_Set_C_YR2C1(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR2C1(XSobel *InstancePtr);
void XSobel_Set_C_YR2C2(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_C_YR2C2(XSobel *InstancePtr);
void XSobel_Set_c_high_thresh(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_c_high_thresh(XSobel *InstancePtr);
void XSobel_Set_c_low_thresh(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_c_low_thresh(XSobel *InstancePtr);
void XSobel_Set_c_invert(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_c_invert(XSobel *InstancePtr);
void XSobel_Set_threshold(XSobel *InstancePtr, u32 Data);
u32 XSobel_Get_threshold(XSobel *InstancePtr);

void XSobel_InterruptGlobalEnable(XSobel *InstancePtr);
void XSobel_InterruptGlobalDisable(XSobel *InstancePtr);
void XSobel_InterruptEnable(XSobel *InstancePtr, u32 Mask);
void XSobel_InterruptDisable(XSobel *InstancePtr, u32 Mask);
void XSobel_InterruptClear(XSobel *InstancePtr, u32 Mask);
u32 XSobel_InterruptGetEnabled(XSobel *InstancePtr);
u32 XSobel_InterruptGetStatus(XSobel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
