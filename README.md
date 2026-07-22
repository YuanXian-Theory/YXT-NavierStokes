# YXT-NavierStokes

**Navier-Stokes Existence and Smoothness**  
via YuanXian Theory (YD-T64 Geometric Flow + TCSC Framework)

This repository contains materials for the constructive proof of the Navier-Stokes Millennium Prize Problem.

### Papers Included

1. **Paper 1** (Earlier Version): *Existence and Smoothness of Navier-Stokes: A Geometric Flow Proof via YD-T64* (May 9, 2026)
2. **Paper 2** (Latest Version): *Navier-Stokes Smoothness via SRM Law and Geometric Measure Theory* (July 22, 2026)

### Core Ideas
- Embed 3D fluid into the tangent bundle of compact $T^{64}$
- TCSC involution creates "Singularity Taboo" via paired energy explosion
- SRM Law explains turbulence birth/decay through topological entropy
- Global boundedness and smoothness proven via compactness + dual core constraints

### Repository Structure
YXT-NavierStokes/ ├── README.md ├── main.tex                    # Latest paper (SRM + Geometric Measure) ├── main_v1.tex                 # First paper (Basic Geometric Flow) ├── sage/ │   └── ns_vorticity.py         # Vorticity transport simulation ├── lean/ │   ├── T64.lean │   ├── ClosedChain.lean │   ├── SRM.lean │   ├── Stress.lean │   ├── Regularity.lean │   └── NavierStokesProof.lean ├── scripts/ │   └── verify.sh ├── figures/ ├── .gitignore └── LICENSE

# YXT-NavierStokes

**Constructive Proof of the Navier-Stokes Millennium Problem**  
Existence and Smoothness via YuanXian Theory (YD-T64 + TCSC)

### Zenodo Preprints
- **Paper 1: [https://doi.org/10.5281/zenodo.20094610]
- **paper 2:[Link to be added]

**Key Results**:  
• Velocity field globally bounded by compactness of $T^{64}$
•  Singularity taboo via TCSC symmetry
•  Turbulence as bounded topological entropy dynamics (SRM Law)
•  Global smooth solutions proven

### Quick Start
```bash
git clone https://github.com/yuanxian-theory/YXT-NavierStokes.git
cd YXT-NavierStokes

# Numerical simulation
sage -python sage/ns_vorticity.py

# Lean 4 formalization
cd lean && lake build


