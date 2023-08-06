# Zero Knowledge Drug verification system

The ZK Drug Verification System is a web application that uses zero-knowledge proofs to verify the safety of pharmaceutical drugs. It allows drug designers to input drug components and generates a proof and public signals based on the input. Users can then verify the proof to determine if the drug is safe. The system ensures privacy and trust in drug verification processes.

## working

There are 4 different parameters that are taken into consideration before valuating the safety of the drug

#### preservative (expected range 1 - 50)
#### adjuvant  (expected range 20 - 125)
#### stabilizer  (expected range 10 - 500)
#### excipient   (expected range 50 - 900)

any values out of the range will not be accepted by the circuit and no proof will be generated indicating the drug is unsafe


[zk-pharma.vercel.app](https://zk-pharma.vercel.app/)


to read more about it, check out [blog](https://dev.to/yagnadeepxo/stealth-in-science-leveraging-zero-knowledge-proofs-to-safeguard-drug-design-intellectual-property-2eab)
