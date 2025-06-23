<p align="center">
  <img src="https://img.shields.io/badge/Verilog-5bit--ALU-blueviolet?style=for-the-badge&logo=verilog&logoColor=white" alt="ALU Badge"/>
</p>

<h1 align="center">🔢 5-Bit ALU – Verilog (Structural Design)</h1> 

<p align="center">
  A modular 5-bit Arithmetic Logic Unit designed using Verilog HDL with structural modeling. <br>
  Performs addition, subtraction, and multiplication with register-based I/O. <br>
  Simulated in <strong>ModelSim</strong> and synthesized using <strong>Quartus Prime</strong>.
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

```bash``
vlog alu.v adder.v subtractor.v multiplier.v testbench.v
vsim work.testbench
run -all

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).  
You are free to use, modify, and distribute it with attribution.

---

## 👨‍💻 Author

**Muhammad Taha Ansari**  
Electrical Engineering Student | Digital Logic Developer  
📧 tahaansari1703@gmail.com  
🌐 GitHub: [Muhammad-Taha-Ansari](https://github.com/Muhammad-Taha-Ansari)  
📍 Karachi, Pakistan
