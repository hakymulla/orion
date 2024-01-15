use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{I32Tensor, I32TensorSub};

fn output_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();

    let mut data = ArrayTrait::new();
    data.append(0);
    TensorTrait::new(shape.span(), data.span())
}
