**Two-Link Robotic Manipulator Control Project** 

# 🤖 Two-Link Robotic Manipulator Control

A simulation-based study and control system implementation for a two-link robotic arm using **Lagrangian mechanics** and **PID-based control algorithms**. Developed as a part of the *Systems Thinking Mini Project* by the "Super Cool System Thinkers" team.

---

## 📚 Overview

This project models the **dynamics of a two-link robotic manipulator** and explores **control techniques** to stabilize and guide the system's motion. It includes:

- Analytical derivation using the **Euler-Lagrange method**
- Modeling the system in **MATLAB** and **Simulink**
- Comparative analysis of **P, PD, PI, and PID controllers**
- Code-based and Simulink-based simulations

---

---

## 🧠 Team Members

| Name              | ID         | Email                                                                             |
| ----------------- | ---------- | --------------------------------------------------------------------------------- |
| Nilavra Ghosh     | 2023102006 | [nilavra.ghosh@students.iiit.ac.in](mailto:nilavra.ghosh@students.iiit.ac.in)     |
| Aman Kesharwani   | 2023102003 | [aman.kesharwani@students.iiit.ac.in](mailto:aman.kesharwani@students.iiit.ac.in) |
| Krrish Goenka     | 2023112023 | [krrish.goenka@research.iiit.ac.in](mailto:krrish.goenka@research.iiit.ac.in)     |
| Prakhar Gupta     | 2023112019 | [prakhar.gup@research.iiit.ac.in](mailto:prakhar.gup@research.iiit.ac.in)         |
| Aryan Shrivastava | 2023102025 | [aryan.s@students.iiit.ac.in](mailto:aryan.s@students.iiit.ac.in)                 |
| Gautam Batra      | 2021112007 | [gautam.batra@research.iiit.ac.in](mailto:gautam.batra@research.iiit.ac.in)       |
| Pranav Shankar    | 2023112011 | [pranav.shankar@research.iiit.ac.in](mailto:pranav.shankar@research.iiit.ac.in)   |
| Sajiv Singh       | 2023112003 | [sajiv.singh@research.iiit.ac.in](mailto:sajiv.singh@research.iiit.ac.in)         |

---

## 📐 Features & Techniques

### ✅ System Modeling

* **Two-link manipulator** modeled using **Lagrangian mechanics**
* Conversion to **state-space form** and **ODE formulation**

### ✅ Control Algorithms

* Implemented P, PD, PI, and PID controllers
* Mathematical formulation of controller dynamics
* Simulation of step responses and stability analysis

### ✅ MATLAB Implementation

* Simulation using `ode45`
* Real-time plot of joint angles and errors
* Dynamic computation of torques via PID formulas

### ✅ Simulink Integration

* Modular PID block implementation
* Simulation of control effectiveness on physical system
* Comparison of transient & steady-state behavior

---

## 🔍 Simulations & Analysis

| Controller | Settling Time | Steady-State Error | Overshoot | Remarks                         |
| ---------- | ------------- | ------------------ | --------- | ------------------------------- |
| P          | Medium        | High               | Low       | Cannot reach setpoint           |
| PD         | Fast          | Medium             | Medium    | Improves damping                |
| PI         | Slow          | Low                | High      | Eliminates error but overshoots |
| PID        | Fast          | Minimal            | Low       | Best balance overall            |

---

## 📊 Sample Output (from Simulink & MATLAB)

* **PID-controlled step response** shows accurate and fast convergence.
* **Joint angle plots** demonstrate effective tracking.
* **Error curves** converge to zero with PID.

---


## 🧾 Mathematical Background

* Dynamics derived via **Euler-Lagrange Equations**
* Control laws implemented:

  $$
  f = K_p e + K_d \\dot{e} + K_i \\int e \\,dt
  $$
* State-space transformation performed for ODE simulation

---


## 🏁 Conclusion

This project provides a complete simulation environment for analyzing and controlling robotic arms using classical control theory. The PID controller proved most effective in ensuring stable and accurate tracking of desired joint positions.

---
