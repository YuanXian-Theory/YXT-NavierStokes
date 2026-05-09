# YXT-NavierStokes

**Constructive Proof of the Navier-Stokes Millennium Problem**  
Existence and Smoothness via YuanXian Theory (YD-T64 + TCSC)

### Core Innovations
- **T⁶⁴ Compactification**: Provides global boundedness via Extreme Value Theorem
- **TCSC Involution**: Proves "Singularity Taboo" through symmetry and energy conservation
- **Vorticity Simulation**: High-frequency modes decay exponentially
- **Lean 4 Formalization**: Pressure field existence and smoothness

**Full Paper**: [main.tex](main.tex)  
**Zenodo**: (待上传后补充)

### Quick Start
```bash
git clone https://github.com/yuanxian-theory/YXT-NavierStokes.git
cd YXT-NavierStokes

sage -python sage/ns_vorticity.py
cd lean && lake build
