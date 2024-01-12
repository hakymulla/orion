use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::{FixedTrait, FP8x23};

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);
    shape.append(4);
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 11485245, sign: true });
    data.append(FP8x23 { mag: 8639736, sign: false });
    data.append(FP8x23 { mag: 9066761, sign: false });
    data.append(FP8x23 { mag: 1246285, sign: false });
    data.append(FP8x23 { mag: 8785751, sign: false });
    data.append(FP8x23 { mag: 22458580, sign: false });
    data.append(FP8x23 { mag: 7798869, sign: false });
    data.append(FP8x23 { mag: 9335609, sign: true });
    data.append(FP8x23 { mag: 8762101, sign: false });
    data.append(FP8x23 { mag: 7044940, sign: false });
    data.append(FP8x23 { mag: 17548656, sign: true });
    data.append(FP8x23 { mag: 1433318, sign: true });
    data.append(FP8x23 { mag: 29332314, sign: false });
    data.append(FP8x23 { mag: 9109826, sign: true });
    data.append(FP8x23 { mag: 2201931, sign: false });
    data.append(FP8x23 { mag: 8615226, sign: false });
    data.append(FP8x23 { mag: 10650534, sign: true });
    data.append(FP8x23 { mag: 13610117, sign: true });
    data.append(FP8x23 { mag: 5870152, sign: true });
    data.append(FP8x23 { mag: 282205, sign: true });
    data.append(FP8x23 { mag: 8192649, sign: true });
    data.append(FP8x23 { mag: 19142176, sign: true });
    data.append(FP8x23 { mag: 2631691, sign: true });
    data.append(FP8x23 { mag: 12334894, sign: false });
    data.append(FP8x23 { mag: 7174919, sign: true });
    data.append(FP8x23 { mag: 7215017, sign: false });
    data.append(FP8x23 { mag: 3412223, sign: false });
    data.append(FP8x23 { mag: 1059551, sign: false });
    data.append(FP8x23 { mag: 11556768, sign: false });
    data.append(FP8x23 { mag: 4721233, sign: true });
    data.append(FP8x23 { mag: 4836688, sign: false });
    data.append(FP8x23 { mag: 18053380, sign: false });
    data.append(FP8x23 { mag: 8322237, sign: true });
    data.append(FP8x23 { mag: 4030251, sign: true });
    data.append(FP8x23 { mag: 11736265, sign: false });
    data.append(FP8x23 { mag: 4467248, sign: false });
    data.append(FP8x23 { mag: 21199784, sign: true });
    data.append(FP8x23 { mag: 8911549, sign: false });
    data.append(FP8x23 { mag: 13309004, sign: false });
    data.append(FP8x23 { mag: 1906941, sign: false });
    data.append(FP8x23 { mag: 16291191, sign: false });
    data.append(FP8x23 { mag: 9102967, sign: true });
    data.append(FP8x23 { mag: 6868689, sign: false });
    data.append(FP8x23 { mag: 1406769, sign: false });
    data.append(FP8x23 { mag: 15510274, sign: true });
    data.append(FP8x23 { mag: 12477229, sign: false });
    data.append(FP8x23 { mag: 1801263, sign: true });
    data.append(FP8x23 { mag: 12190927, sign: true });
    data.append(FP8x23 { mag: 8150830, sign: true });
    data.append(FP8x23 { mag: 16296984, sign: false });
    data.append(FP8x23 { mag: 151497, sign: true });
    data.append(FP8x23 { mag: 4624143, sign: true });
    data.append(FP8x23 { mag: 4093028, sign: false });
    data.append(FP8x23 { mag: 3575281, sign: true });
    data.append(FP8x23 { mag: 3333834, sign: true });
    data.append(FP8x23 { mag: 10688711, sign: false });
    data.append(FP8x23 { mag: 3136147, sign: true });
    data.append(FP8x23 { mag: 13927308, sign: false });
    data.append(FP8x23 { mag: 5320165, sign: false });
    data.append(FP8x23 { mag: 4522953, sign: true });
    data.append(FP8x23 { mag: 6562536, sign: true });
    data.append(FP8x23 { mag: 302568, sign: false });
    data.append(FP8x23 { mag: 365858, sign: true });
    data.append(FP8x23 { mag: 8333322, sign: true });
    data.append(FP8x23 { mag: 24012324, sign: false });
    data.append(FP8x23 { mag: 3941235, sign: true });
    data.append(FP8x23 { mag: 12585527, sign: false });
    data.append(FP8x23 { mag: 2108236, sign: false });
    data.append(FP8x23 { mag: 2180042, sign: false });
    data.append(FP8x23 { mag: 809995, sign: false });
    data.append(FP8x23 { mag: 10706503, sign: true });
    data.append(FP8x23 { mag: 11768835, sign: true });
    data.append(FP8x23 { mag: 4368724, sign: false });
    data.append(FP8x23 { mag: 37121360, sign: false });
    data.append(FP8x23 { mag: 1690481, sign: false });
    data.append(FP8x23 { mag: 12472568, sign: true });
    data.append(FP8x23 { mag: 5896973, sign: false });
    data.append(FP8x23 { mag: 3128197, sign: true });
    data.append(FP8x23 { mag: 2706830, sign: false });
    data.append(FP8x23 { mag: 3121650, sign: false });
    data.append(FP8x23 { mag: 11032154, sign: true });
    data.append(FP8x23 { mag: 1400313, sign: true });
    data.append(FP8x23 { mag: 9391938, sign: true });
    data.append(FP8x23 { mag: 14493685, sign: true });
    data.append(FP8x23 { mag: 7510374, sign: false });
    data.append(FP8x23 { mag: 8488401, sign: false });
    data.append(FP8x23 { mag: 11134086, sign: false });
    data.append(FP8x23 { mag: 20440816, sign: true });
    data.append(FP8x23 { mag: 4187458, sign: false });
    data.append(FP8x23 { mag: 15662241, sign: false });
    data.append(FP8x23 { mag: 1227645, sign: true });
    data.append(FP8x23 { mag: 20756332, sign: true });
    data.append(FP8x23 { mag: 6096698, sign: true });
    data.append(FP8x23 { mag: 32393544, sign: true });
    data.append(FP8x23 { mag: 16110731, sign: false });
    data.append(FP8x23 { mag: 2419478, sign: false });
    data.append(FP8x23 { mag: 5840805, sign: true });
    data.append(FP8x23 { mag: 30053754, sign: false });
    data.append(FP8x23 { mag: 2156172, sign: false });
    data.append(FP8x23 { mag: 4688839, sign: true });
    data.append(FP8x23 { mag: 2943892, sign: false });
    data.append(FP8x23 { mag: 2536186, sign: false });
    data.append(FP8x23 { mag: 2204937, sign: true });
    data.append(FP8x23 { mag: 3688586, sign: false });
    data.append(FP8x23 { mag: 4819133, sign: true });
    data.append(FP8x23 { mag: 12194435, sign: false });
    data.append(FP8x23 { mag: 2196191, sign: true });
    data.append(FP8x23 { mag: 11984318, sign: false });
    data.append(FP8x23 { mag: 3501392, sign: true });
    data.append(FP8x23 { mag: 19567274, sign: false });
    data.append(FP8x23 { mag: 7228652, sign: true });
    data.append(FP8x23 { mag: 6148920, sign: true });
    data.append(FP8x23 { mag: 9655568, sign: true });
    data.append(FP8x23 { mag: 8030332, sign: false });
    data.append(FP8x23 { mag: 8497492, sign: false });
    data.append(FP8x23 { mag: 18119870, sign: true });
    data.append(FP8x23 { mag: 11121997, sign: true });
    data.append(FP8x23 { mag: 6433851, sign: false });
    data.append(FP8x23 { mag: 24247440, sign: true });
    data.append(FP8x23 { mag: 1697336, sign: false });
    TensorTrait::new(shape.span(), data.span())
}