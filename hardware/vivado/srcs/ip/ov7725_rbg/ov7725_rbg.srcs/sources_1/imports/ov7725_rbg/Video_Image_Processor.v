/*-----------------------------------------------------------------------
								 \\\|///
							   \\  - -  //
								(  @ @  )
+-----------------------------oOOo-(_)-oOOo-----------------------------+
CONFIDENTIAL IN CONFIDENCE
This confidential and proprietary software may be only used as authorized
by a licensing agreement from CrazyBingo (Thereturnofbingo).
In the event of publication, the following notice is applicable:
Copyright (C) 2013-20xx CrazyBingo Corporation
The entire notice above must be reproduced on all authorized copies.
Author				:		CrazyBingo
Technology blogs 	: 		http://blog.chinaaet.com/crazybingo
Email Address 		: 		thereturnofbingo@gmail.com
Filename			:		Video_Image_Processor.v
Data				:		2013-05-26
Description			:		Video Image processor module.
Modification History	:
Data			By			Version			Change Description
=========================================================================
13/05/25		CrazyBingo	1.0				Original
14/03/16		CrazyBingo	2.0				Modification
-------------------------------------------------------------------------
|                                     Oooo								|
+-------------------------------oooO--(   )-----------------------------+
                               (   )   ) /
                                \ (   (_/
                                 \_)
-----------------------------------------------------------------------*/   

`timescale 1ns/1ns
module Video_Image_Processor
#(
	parameter	[9:0]	IMG_HDISP = 10'd640,	//640*480
	parameter	[9:0]	IMG_VDISP = 10'd480
)
(
	//global clock
	input				clk,  				//cmos video pixel clock
	input				rst_n,				//global reset

	//Image data prepred to be processd
	input				per_frame_vsync,	//Prepared Image data vsync valid signal
	input				per_frame_href,		//Prepared Image data href vaild  signal
	input		[7:0]	per_img_RAW,		//Prepared Image data of YCbCr 4:2:2 {CbY} {CrY}

	//Image data has been processd
	output				post_frame_vsync,	//Processed Image data vsync valid signal
	output				post_frame_href,	//Processed Image data href vaild  signal
	output		[7:0]	post_img_red,		//Processed Image Red output
	output		[7:0]	post_img_green,		//Processed Image Green output
	output		[7:0]	post_img_blue		//Processed Image Blue output
);

//-------------------------------------
//Convert the RAW format to RGB888 format.
RAW_RGB888	
#(
	.IMG_HDISP	(IMG_HDISP),	//640*480
	.IMG_VDISP	(IMG_VDISP)
)
RAW8_RGB888
(
	//global clock
	.clk					(clk),					//cmos video pixel clock
	.rst_n					(rst_n),				//system reset

	//Image data prepred to be processd
	.per_frame_vsync		(per_frame_vsync),		//Prepared Image data vsync valid signal
	.per_frame_href			(per_frame_href),		//Prepared Image data href vaild  signal
	.per_img_RAW			(per_img_RAW),			//Prepared Image data 8 Bit RAW Data
	
	//Image data has been processd
	.post_frame_vsync		(post_frame_vsync),		//Processed Image data vsync valid signal
	.post_frame_href		(post_frame_href),		//Processed Image data href vaild  signal
	.post_img_red			(post_img_red),			//Prepared Image green data to be processed	
	.post_img_green			(post_img_green),		//Prepared Image green data to be processed
	.post_img_blue			(post_img_blue)			//Prepared Image blue data to be processed
);

endmodule
