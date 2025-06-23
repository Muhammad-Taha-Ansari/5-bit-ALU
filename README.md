<p align="center">
  <img src="https://img.shields.io/badge/Verilog-5bit--ALU-blueviolet?style=for-the-badge&logo=verilog&logoColor=white" alt="ALU Badge"/>
</p>

<h1 align="center">🔢 5-Bit ALU – Verilog (Structural Design)</h1>

<p align="center">
  A modular 5-bit Arithmetic Logic Unit designed using Verilog HDL with structural modeling. <br>
  Performs addition, subtraction, and multiplication with register-based I/O. <br>
  Simulated in <strong>ModelSim</strong> and synthesized using <strong>Quartus Prime</strong>.
</p>

<p align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=Muhammad-Taha-Ansari&show_icons=true&theme=radical&hide=contribs" height="150"/> &nbsp;
  <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=Muhammad-Taha-Ansari&layout=compact&theme=radical" height="150"/>
</p>

---

## ✅ Key Features

- 🔢 5-bit Ripple-Carry **Addition**
- ➖ 5-bit **Subtraction** using 2’s Complement
- ✖️ 5-bit **Multiplication** using Shift-and-Add logic
- 🧪 Fully tested using ModelSim testbench
- 🏗️ Synthesizable using Intel Quartus Prime

---

## 🔧 Tools Used

| Tool            | Purpose                      |
|-----------------|------------------------------|
| **Verilog HDL** | RTL Design (Structural)      |
| **ModelSim**    | Simulation & Waveform Debug  |
| **Quartus Prime** | RTL Synthesis + FPGA Design |

---

## 🧪 How to Simulate (ModelSim)

```bash
vlog alu.v adder.v subtractor.v multiplier.v register.v testbench.v
vsim work.testbench
run -all
