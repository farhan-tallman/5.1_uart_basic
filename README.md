# 5.1_uart_basic
 basic uart module in Verilog

[02.06.2022]
SOURCE: FPGA PROTOTYPING WITH VERILOG EXAMPLES

Lest first generate a 19,200 baud assuming a clock frequency of 50Mhz
@50Mhz, clock time period is: 20ns
for over sampling 19,200 16 times, we need a sampling frequency of 19,200 * 16 = 307,200
this means (1/307,200)/20ns counts. Which is approx 163 counts of 20ns.

4.3.2 Binary counter [pg126 on pdf]
8.2.2 Baud rate generator [pg 250]

