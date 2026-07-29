import canonicalLaneMathlib.AdmissibleClass
import DistributionPrimesLemmaCanonicalLaneLean.PrimesLemmaClosureBridge
import DistributionPrimesLemmaCanonicalLaneLean.PrimesLemmaAdmissibleClass

namespace HautevilleHouse
namespace DistributionPrimesLemmaCanonicalLaneLean

def ConstrainedPrimesLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ PrimesLemmaCertificateClosed primesLemmaCertificate

theorem constrained_primes_lemma_endgame (A : AdmissibleClass) :
    ConstrainedPrimesLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) primes_lemma_certificate_closed_checked)

end DistributionPrimesLemmaCanonicalLaneLean
end HautevilleHouse