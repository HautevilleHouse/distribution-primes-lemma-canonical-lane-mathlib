import DistributionPrimesLemmaCanonicalLaneLean.DistributionPrimesFinalTheorem

namespace HautevilleHouse
namespace DistributionPrimesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DistributionPrimesLemmaCanonicalLaneLean
end HautevilleHouse
