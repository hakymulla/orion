use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::numbers::{FixedTrait, FP8x23};

fn input_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 536870912, sign: false });
    data.append(FP8x23 { mag: 947912704, sign: false });
    data.append(FP8x23 { mag: 998244352, sign: false });
    data.append(FP8x23 { mag: 1056964608, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
