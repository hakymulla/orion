mod output_0;


use orion::operators::tensor::{TensorTrait, Tensor};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::U32TensorPartialEq;
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{U32Tensor, U32TensorSub};

#[test]
#[available_gas(2000000000)]
fn test_sequence_empty_u32() {
    let z = output_0::output_0();

    let y = SequenceTrait::sequence_empty();

    assert_seq_eq(y, z);
}
