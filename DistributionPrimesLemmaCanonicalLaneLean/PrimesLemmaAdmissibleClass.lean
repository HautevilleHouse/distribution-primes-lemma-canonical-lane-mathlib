import canonicalLaneMathlib.AdmissibleClass
import DistributionPrimesLemmaCanonicalLaneLean.DistributionPrimeLayer
import DistributionPrimesLemmaCanonicalLaneLean.PrimesLemmaEndpointLayer
import DistributionPrimesLemmaCanonicalLaneLean.DistributionFunctionLayer

namespace HautevilleHouse
namespace DistributionPrimesLemmaCanonicalLaneLean

structure PrimesLemmaCertificate where
  distributionLayer : DistributionPrimeLayerCertificate
  endpointLayer : PrimesLemmaEndpointLayerCertificate
  functionLayer : DistributionFunctionLayerCertificate
  baselineGatesClosed : Bool
  classicalBoundaryCarried : Bool

def primesLemmaCertificate : PrimesLemmaCertificate := {
  distributionLayer := distributionPrimeLayerCertificate,
  endpointLayer := primesLemmaEndpointLayerCertificate,
  functionLayer := distributionFunctionLayerCertificate,
  baselineGatesClosed := true,
  classicalBoundaryCarried := true
}

def PrimesLemmaCertificateClosed (C : PrimesLemmaCertificate) : Prop :=
  DistributionPrimeLayerClosed C.distributionLayer ∧
  PrimesLemmaEndpointLayerClosed C.endpointLayer ∧
  DistributionFunctionLayerClosed C.functionLayer ∧
  C.baselineGatesClosed = true ∧
  C.classicalBoundaryCarried = true

theorem primes_lemma_certificate_closed_checked :
    PrimesLemmaCertificateClosed primesLemmaCertificate := by
  exact And.intro distribution_prime_layer_closed_checked
    (And.intro primes_lemma_endpoint_layer_closed_checked
    (And.intro distribution_function_layer_closed_checked
    (And.intro rfl rfl)))

end DistributionPrimesLemmaCanonicalLaneLean
end HautevilleHouse