import DistributionPrimesLemmaCanonicalLaneLean.DistributionPrimesGateLemmas

namespace HautevilleHouse
namespace DistributionPrimesLemmaCanonicalLaneLean

def DistributionPrimesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem distribution_primes_endgame (A : AdmissibleClass) :
    DistributionPrimesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionPrimesLemmaCanonicalLaneLean
end HautevilleHouse
