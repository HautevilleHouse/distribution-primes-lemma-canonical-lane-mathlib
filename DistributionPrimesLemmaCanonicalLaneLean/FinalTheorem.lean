import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionPrimesLemmaCanonicalLaneLean

def distributionPrimeDistributionBridge : Prop :=
  DistributionPrimeLayerClosed primitiveDistributionPrimeDatum

def dirichletCharacterBridge : Prop :=
  DirichletCharacterLayerClosed primitiveDirichletCharacterCertificate

def lFunctionBridge : Prop :=
  LFunctionLayerClosed primitiveLFunctionDatum

def ConstrainedDistributionPrimeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ distributionPrimeDistributionBridge ∧ dirichletCharacterBridge ∧ lFunctionBridge

theorem constrained_distribution_prime_endgame (A : AdmissibleClass) :
    ConstrainedDistributionPrimeClosure A := by
  have hBridge : bridgeClosed A := bridge_from_admissible_class A
  have hGate : gateClosed A := gate_from_admissible_class A
  have hDist : distributionPrimeDistributionBridge := distribution_prime_layer_closed_checked
  have hDir : dirichletCharacterBridge := dirichlet_character_layer_closed_checked
  have hL : lFunctionBridge := l_function_layer_closed_checked
  exact And.intro hBridge (And.intro hGate (And.intro hDist (And.intro hDir hL)))

end HautevilleHouse
end DistributionPrimesLemmaCanonicalLaneLean
