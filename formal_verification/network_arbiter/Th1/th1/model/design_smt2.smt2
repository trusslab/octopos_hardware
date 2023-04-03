; SMT-LIBv2 description generated by Yosys 0.10+40 (git sha1 5cebf6a8, clang 8.0.0-3 -fPIC -Os)
; yosys-smt2-module network_arbiter_main_logic
(declare-sort |network_arbiter_main_logic_s| 0)
(declare-fun |network_arbiter_main_logic_is| (|network_arbiter_main_logic_s|) Bool)
(declare-fun |network_arbiter_main_logic#0| (|network_arbiter_main_logic_s|) (_ BitVec 32)) ; \state_reg
(define-fun |network_arbiter_main_logic#1| ((state |network_arbiter_main_logic_s|)) Bool (= (|network_arbiter_main_logic#0| state) #b11110000111100001111000011110000)) ; $procmux$42_CMP
(define-fun |network_arbiter_main_logic#2| ((state |network_arbiter_main_logic_s|)) (_ BitVec 1) (ite (|network_arbiter_main_logic#1| state) #b0 #b1)) ; \TRUSTED
; yosys-smt2-wire trusted 1
(define-fun |network_arbiter_main_logic_n trusted| ((state |network_arbiter_main_logic_s|)) Bool (= ((_ extract 0 0) (|network_arbiter_main_logic#2| state)) #b1))
; yosys-smt2-register state_reg 32
; yosys-smt2-wire state_reg 32
(define-fun |network_arbiter_main_logic_n state_reg| ((state |network_arbiter_main_logic_s|)) (_ BitVec 32) (|network_arbiter_main_logic#0| state))
(declare-fun |network_arbiter_main_logic#3| (|network_arbiter_main_logic_s|) Bool) ; \RESETN
; yosys-smt2-wire resetn 1
(define-fun |network_arbiter_main_logic_n resetn| ((state |network_arbiter_main_logic_s|)) Bool (|network_arbiter_main_logic#3| state))
(declare-fun |network_arbiter_main_logic#4| (|network_arbiter_main_logic_s|) Bool) ; \CLK
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
(define-fun |network_arbiter_main_logic_n clk| ((state |network_arbiter_main_logic_s|)) Bool (|network_arbiter_main_logic#4| state))
(declare-fun |network_arbiter_main_logic#5| (|network_arbiter_main_logic_s|) (_ BitVec 32)) ; \WRITE_STATE_VALUE
; yosys-smt2-input WRITE_STATE_VALUE 32
; yosys-smt2-wire WRITE_STATE_VALUE 32
(define-fun |network_arbiter_main_logic_n WRITE_STATE_VALUE| ((state |network_arbiter_main_logic_s|)) (_ BitVec 32) (|network_arbiter_main_logic#5| state))
; yosys-smt2-output TRUSTED 1
; yosys-smt2-wire TRUSTED 1
(define-fun |network_arbiter_main_logic_n TRUSTED| ((state |network_arbiter_main_logic_s|)) Bool (= ((_ extract 0 0) (|network_arbiter_main_logic#2| state)) #b1))
; yosys-smt2-input RESETN 1
; yosys-smt2-wire RESETN 1
(define-fun |network_arbiter_main_logic_n RESETN| ((state |network_arbiter_main_logic_s|)) Bool (|network_arbiter_main_logic#3| state))
; yosys-smt2-input CLK 1
; yosys-smt2-wire CLK 1
; yosys-smt2-clock CLK posedge
(define-fun |network_arbiter_main_logic_n CLK| ((state |network_arbiter_main_logic_s|)) Bool (|network_arbiter_main_logic#4| state))
(define-fun |network_arbiter_main_logic#6| ((state |network_arbiter_main_logic_s|)) (_ BitVec 32) (ite (|network_arbiter_main_logic#3| state) (|network_arbiter_main_logic#5| state) #b00000000000000000000000000000000)) ; $auto$rtlil.cc:2409:Mux$59
(define-fun |network_arbiter_main_logic_a| ((state |network_arbiter_main_logic_s|)) Bool true)
(define-fun |network_arbiter_main_logic_u| ((state |network_arbiter_main_logic_s|)) Bool true)
(define-fun |network_arbiter_main_logic_i| ((state |network_arbiter_main_logic_s|)) Bool true)
(define-fun |network_arbiter_main_logic_h| ((state |network_arbiter_main_logic_s|)) Bool true)
(define-fun |network_arbiter_main_logic_t| ((state |network_arbiter_main_logic_s|) (next_state |network_arbiter_main_logic_s|)) Bool 
  (= (|network_arbiter_main_logic#6| state) (|network_arbiter_main_logic#0| next_state)) ; $auto$ff.cc:262:slice$54 \state_reg
) ; end of module network_arbiter_main_logic
; yosys-smt2-module testbench
(declare-sort |testbench_s| 0)
(declare-fun |testbench_is| (|testbench_s|) Bool)
(declare-fun |testbench#0| (|testbench_s|) (_ BitVec 32)) ; \write_state_value
; yosys-smt2-input write_state_value 32
; yosys-smt2-wire write_state_value 32
(define-fun |testbench_n write_state_value| ((state |testbench_s|)) (_ BitVec 32) (|testbench#0| state))
; yosys-smt2-cell network_arbiter_main_logic uut
(declare-fun |testbench#1| (|testbench_s|) Bool) ; \trusted
(declare-fun |testbench_h uut| (|testbench_s|) |network_arbiter_main_logic_s|)
; yosys-smt2-output trusted 1
; yosys-smt2-wire trusted 1
(define-fun |testbench_n trusted| ((state |testbench_s|)) Bool (|testbench#1| state))
(declare-fun |testbench#2| (|testbench_s|) (_ BitVec 1)) ; \should_be_trusted
; yosys-smt2-register should_be_trusted 1
; yosys-smt2-wire should_be_trusted 1
(define-fun |testbench_n should_be_trusted| ((state |testbench_s|)) Bool (= ((_ extract 0 0) (|testbench#2| state)) #b1))
(declare-fun |testbench#3| (|testbench_s|) Bool) ; \resetn
; yosys-smt2-input resetn 1
; yosys-smt2-wire resetn 1
(define-fun |testbench_n resetn| ((state |testbench_s|)) Bool (|testbench#3| state))
(declare-fun |testbench#4| (|testbench_s|) (_ BitVec 1)) ; \init
; yosys-smt2-register init 1
; yosys-smt2-wire init 1
(define-fun |testbench_n init| ((state |testbench_s|)) Bool (= ((_ extract 0 0) (|testbench#4| state)) #b1))
(declare-fun |testbench#5| (|testbench_s|) Bool) ; \clk
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
(define-fun |testbench_n clk| ((state |testbench_s|)) Bool (|testbench#5| state))
(declare-fun |testbench#6| (|testbench_s|) (_ BitVec 1)) ; $formal$th1.sv:27$2_EN
; yosys-smt2-register $formal$th1.sv:27$2_EN 1
(define-fun |testbench_n $formal$th1.sv:27$2_EN| ((state |testbench_s|)) Bool (= ((_ extract 0 0) (|testbench#6| state)) #b1))
(declare-fun |testbench#7| (|testbench_s|) (_ BitVec 1)) ; $formal$th1.sv:27$2_CHECK
; yosys-smt2-register $formal$th1.sv:27$2_CHECK 1
(define-fun |testbench_n $formal$th1.sv:27$2_CHECK| ((state |testbench_s|)) Bool (= ((_ extract 0 0) (|testbench#7| state)) #b1))
; yosys-smt2-anyseq testbench#8 1 $auto$setundef.cc:501:execute$50
(declare-fun |testbench#8| (|testbench_s|) (_ BitVec 1)) ; $auto$rtlil.cc:3063:Anyseq$51
(define-fun |testbench#9| ((state |testbench_s|)) (_ BitVec 1) (bvnot (ite (|testbench#3| state) #b1 #b0))) ; $eq$th1.sv:22$8_Y
(define-fun |testbench#10| ((state |testbench_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|testbench#4| state)) #b1) (|testbench#9| state) (|testbench#8| state))) ; $0$formal$th1.sv:22$1_CHECK[0:0]$4
(define-fun |testbench#11| ((state |testbench_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|testbench#4| state)) #b1) #b1 #b0)) ; $0$formal$th1.sv:22$1_EN[0:0]$5
; yosys-smt2-assume 0 th1.sv:22.14-22.38
(define-fun |testbench_u 0| ((state |testbench_s|)) Bool (or (= ((_ extract 0 0) (|testbench#10| state)) #b1) (not (= ((_ extract 0 0) (|testbench#11| state)) #b1)))) ; $assume$th1.sv:22$11
; yosys-smt2-assert 0 th1.sv:27.26-29.38
(define-fun |testbench_a 0| ((state |testbench_s|)) Bool (or (= ((_ extract 0 0) (|testbench#7| state)) #b1) (not (= ((_ extract 0 0) (|testbench#6| state)) #b1)))) ; $assert$th1.sv:27$12
; yosys-smt2-anyseq testbench#12 1 $auto$setundef.cc:501:execute$52
(declare-fun |testbench#12| (|testbench_s|) (_ BitVec 1)) ; $auto$rtlil.cc:3063:Anyseq$53
(define-fun |testbench#13| ((state |testbench_s|)) Bool (= (|testbench#2| state) (ite (|testbench#1| state) #b1 #b0))) ; $eq$th1.sv:29$10_Y
(define-fun |testbench#14| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#3| state) (ite (|testbench#13| state) #b1 #b0) (|testbench#12| state))) ; $0$formal$th1.sv:27$2_CHECK[0:0]$6
(define-fun |testbench#15| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#3| state) #b1 #b0)) ; $0$formal$th1.sv:27$2_EN[0:0]$7
(define-fun |testbench#16| ((state |testbench_s|)) Bool (= (|testbench#0| state) #b11110000111100001111000011110000)) ; $eq$th1.sv:24$9_Y
(define-fun |testbench#17| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#16| state) #b0 #b1)) ; $procmux$23_Y
(define-fun |testbench#18| ((state |testbench_s|)) (_ BitVec 1) (ite (|testbench#3| state) (|testbench#17| state) #b1)) ; $auto$rtlil.cc:2409:Mux$57
(define-fun |testbench_a| ((state |testbench_s|)) Bool (and
  (|testbench_a 0| state)
  (|network_arbiter_main_logic_a| (|testbench_h uut| state))
))
(define-fun |testbench_u| ((state |testbench_s|)) Bool (and
  (|testbench_u 0| state)
  (|network_arbiter_main_logic_u| (|testbench_h uut| state))
))
(define-fun |testbench_i| ((state |testbench_s|)) Bool (and
  (= (= ((_ extract 0 0) (|testbench#4| state)) #b1) true) ; init
  (= (= ((_ extract 0 0) (|testbench#6| state)) #b1) false) ; $formal$th1.sv:27$2_EN
  (|network_arbiter_main_logic_i| (|testbench_h uut| state))
))
(define-fun |testbench_h| ((state |testbench_s|)) Bool (and
  (= (|testbench_is| state) (|network_arbiter_main_logic_is| (|testbench_h uut| state)))
  (= (|testbench#0| state) (|network_arbiter_main_logic_n WRITE_STATE_VALUE| (|testbench_h uut| state))) ; network_arbiter_main_logic.WRITE_STATE_VALUE
  (= (|testbench#1| state) (|network_arbiter_main_logic_n TRUSTED| (|testbench_h uut| state))) ; network_arbiter_main_logic.TRUSTED
  (= (|testbench#3| state) (|network_arbiter_main_logic_n RESETN| (|testbench_h uut| state))) ; network_arbiter_main_logic.RESETN
  (= (|testbench#5| state) (|network_arbiter_main_logic_n CLK| (|testbench_h uut| state))) ; network_arbiter_main_logic.CLK
  (|network_arbiter_main_logic_h| (|testbench_h uut| state))
))
(define-fun |testbench_t| ((state |testbench_s|) (next_state |testbench_s|)) Bool (and
  (= (|testbench#14| state) (|testbench#7| next_state)) ; $procdff$47 $formal$th1.sv:27$2_CHECK
  (= (|testbench#15| state) (|testbench#6| next_state)) ; $procdff$48 $formal$th1.sv:27$2_EN
  (= #b0 (|testbench#4| next_state)) ; $procdff$43 \init
  (= (|testbench#18| state) (|testbench#2| next_state)) ; $auto$ff.cc:262:slice$55 \should_be_trusted
  (|network_arbiter_main_logic_t| (|testbench_h uut| state) (|testbench_h uut| next_state))
)) ; end of module testbench
; yosys-smt2-topmod testbench
; end of yosys output
