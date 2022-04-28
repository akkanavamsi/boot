/* 
 * File:   register_map.h
 * Author: RFord7
 *
 * Created on 30 November 2021, 14:23
 */

#ifndef REGISTER_MAP_H
#define	REGISTER_MAP_H

// *** Input registers ***
#define SYS_PROD_TYPE 0
#define SYS_SERIAL_NO 1
#define SYS_SW_VER_MAJ 3
#define SYS_SW_VER_MIN 4
#define SYS_HW_VER_MAJ 5
#define SYS_HW_VER_MIN 6
#define SYS_STATE 7
#define SYS_APP_STATE 8
#define SYS_APP_CRC 9
#define SYS_APP_SW_VER_MAJ 10
#define SYS_APP_SW_VER_MIN 11
#define SYS_APP_CURR_BLOCK 12
#define SYS_ACTIVE_BANK 13
#define SYS_CALC_CRC 14

// *** Holding registers ***
#define BL_COMMAND_REG 0
#define BL_DATA_TABLE_TOTAL 1
#define BL_DATA_TABLE_CURRENT 2
#define BL_DATA_TABLE_SW_MAJ 3
#define BL_DATA_TABLE_SW_MIN 4
#define BL_DATA_TABLE_CRC 5
#define BL_DATA_TABLE_HEAD 6


#endif	/* REGISTER_MAP_H */

