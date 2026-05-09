#!/bin/bash
echo "=== YXT-NavierStokes Verification ==="

echo "1. Running Vorticity Simulation..."
sage -python sage/ns_vorticity.py

echo "2. Building Lean 4 Formalization..."
cd lean && lake build && echo "✅ Lean 4 build successful!"

echo "All verifications completed!"
