import canonicalLaneMathlib.AdmissibleClass
import DistributionPrimesLemmaCanonicalLaneLean.PrimesLemmaAdmissibleClass

namespace HautevilleHouse
namespace DistributionPrimesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

distributable
end DistributionPrimesLemmaCanonicalLaneLean
end HautevilleHouse