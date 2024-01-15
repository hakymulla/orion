mod input_0;
mod output_0;


use orion::operators::tensor::{TensorTrait, Tensor};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::operators::tensor::FP8x23TensorPartialEq;
use core::array::{ArrayTrait, SpanTrait};

#[test]
#[available_gas(2000000000)]
fn test_reduce_sum_square_fp8x23_export_keepdims() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.reduce_sum_square(2, true);

    assert_eq(y, z);
}
