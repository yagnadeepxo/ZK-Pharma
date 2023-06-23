pragma circom 2.1.5;
include "../node_modules/circomlib/circuits/comparators.circom";
template VaccineParamsCheck() {
    signal input preservative;
    signal input adjuvant;
    signal input stabilizer;
    signal input excipient;
    signal output isValid;

    signal preservative_valid;
    signal adjuvant_valid;
    signal stabilizer_valid;
    signal excipient_valid;

    component LT1 = LessThan(10);
    component GT1 = GreaterThan(10);

    component LT2 = LessThan(10);
    component GT2 = GreaterThan(10);

    component LT3 = LessThan(12);
    component GT3 = GreaterThan(12);

    component LT4 = LessThan(12);
    component GT4 = GreaterThan(12);

    LT1.in[0] <== preservative;
    LT1.in[1] <== 50;

    GT1.in[0] <== preservative;
    GT1.in[1] <== 1;

    preservative_valid <== LT1.out*GT1.out;

    LT2.in[0] <== adjuvant;
    LT2.in[1] <== 125;

    GT2.in[0] <== adjuvant;
    GT2.in[1] <== 20;

    adjuvant_valid <== LT2.out*GT2.out;

    LT3.in[0] <== stabilizer;
    LT3.in[1] <== 500;

    GT3.in[0] <== stabilizer;
    GT3.in[1] <== 10;

    stabilizer_valid <== LT3.out*GT3.out;

    LT4.in[0] <== excipient;
    LT4.in[1] <== 900;

    GT4.in[0] <== excipient;
    GT4.in[1] <== 50;

    excipient_valid <== LT4.out*GT4.out;

     signal int1 <== preservative_valid*adjuvant_valid;
     signal int2 <== stabilizer_valid*adjuvant_valid;
    
    isValid <== int1*int2;
    
}
component main = VaccineParamsCheck();
