# Optical Sensor for High-Precision Measurement of Axial Rotation (Roll)

This repository contains MATLAB code and supporting documents for analysing experimental data from a fibre optic Sagnac interferometer designed to measure axial rotation (roll) with high precision.

This project was developed as part of an individual research project for the *Robotics, Mechatronics and Control Engineering* programme at Loughborough University, in collaboration with the Wolfson School of Mechanical, Electrical and Manufacturing Engineering.

---

## Project Overview

Accurate measurement of roll angle (axial rotation) is essential in applications such as navigation, structural health monitoring, and aerospace systems. This project implements an optical sensing system based on a fibre optic Sagnac interferometer, which detects angular velocity by observing interference patterns caused by rotation.

The system processes light intensity signals to calculate:
- Phase angle  
- Angular velocity  
- Integrated roll angle (angular distance)  

⚠️ The current version estimates angular distance but does not yet resolve the direction of rotation. Planned future improvements will address this.

---

## Features

✅ Phase angle calculation from light intensity measurements  
✅ Angular velocity computation using interferometric principles  
✅ Signal smoothing with moving average filters  
✅ Integration of angular velocity to estimate roll angle  
✅ Mean and standard deviation calculation for roll angle  
✅ Visualisation of intensity, phase angle, angular velocity, and roll angle  

---

## Repository Contents

- `interferometer_roll_analysis.m` — MATLAB script for signal processing and visualisation  
- `Report.pdf` — Full technical report including theory, design, setup, and results  
- `Poster.pdf` — Project summary poster for presentations or quick reference  

---

## Requirements

- MATLAB (developed and tested using recent versions)  
- MATLAB Signal Processing Toolbox (for smoothing functions)  
- Experimental data variables:
  - `I` — Measured light intensity (vector, in Volts)  
  - `t` — Time vector corresponding to intensity measurements (in seconds)  

---

## How to Use

1. Load your experimental data into the MATLAB workspace with variables `I` (intensity) and `t` (time).
2. Run the provided script:

```matlab
interferometer_roll_analysis
