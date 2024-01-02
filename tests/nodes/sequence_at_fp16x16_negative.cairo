mod input_0;
mod input_1;
mod output_0;


use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::{I32Tensor, I32TensorSub};
use orion::operators::tensor::FP16x16TensorPartialEq;
use orion::operators::tensor::I32TensorPartialEq;
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorSub};

#[test]
#[available_gas(2000000000)]
fn test_sequence_at_fp16x16_negative() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let z = output_0::output_0();

    let y = TensorTrait::sequence_at(input_0, input_1);

    assert_eq(y, z);
}
