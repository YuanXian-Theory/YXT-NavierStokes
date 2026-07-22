import Mathlib.Topology.Basic
import Mathlib.Topology.Compactness.Compact

namespace YXT

class T64 (M : Type _) [TopologicalSpace M] where
  compactSpace : CompactSpace M

class TCSCInvolution (M : Type _) [TopologicalSpace M] where
  ι : M → M
  is_involution : ι ∘ ι = id
  closed_chain_invariant : True

end YXT
