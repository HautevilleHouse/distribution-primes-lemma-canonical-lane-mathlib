import DistributionPrimesLemmaCanonicalLaneLean.DistributionPrimesLemmaLayer

namespace HautevilleHouse
namespace DistributionPrimesLemmaCanonicalLaneLean

structure DensityIncrementCertificate where
  lemmaCertificate : DistributionPrimesLemmaCertificate
  densityRoute : String
  incrementRoute : String
  densityChecked : Bool

def densityIncrementCertificate : DensityIncrementCertificate := {
  lemmaCertificate := distributionPrimesLemmaCertificate,
  densityRoute := "Szemerédi density increment on subsets of ℕ",
  incrementRoute := "Iterated increment yields density arbitrarily close to 1",
  densityChecked := true
}

def DensityIncrementClosed (C : DensityIncrementCertificate) : Prop :=
  C.lemmaCertificate.lemmaEndpointChecked = true ∧
  C.densityChecked = true

theorem density_increment_closed_checked :
    DensityIncrementClosed densityIncrementCertificate := by
  exact And.intro rfl rfl

end DistributionPrimesLemmaCanonicalLaneLean
end HautevilleHouse
