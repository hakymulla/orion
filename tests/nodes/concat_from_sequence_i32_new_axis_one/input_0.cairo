use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{I32Tensor, I32TensorAdd};

fn input_0() -> Array<Tensor<i32>> {
    let mut sequence = ArrayTrait::new();

    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(5);
    data.append(-1);
    data.append(-1);
    data.append(1);
    data.append(3);
    data.append(5);
    data.append(-3);
    data.append(-3);
    data.append(0);

    sequence.append(TensorTrait::new(shape.span(), data.span()));

    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(-5);
    data.append(3);
    data.append(2);
    data.append(1);
    data.append(5);
    data.append(-4);
    data.append(0);
    data.append(-6);
    data.append(-4);

    sequence.append(TensorTrait::new(shape.span(), data.span()));

    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(-1);
    data.append(-3);
    data.append(3);
    data.append(1);
    data.append(-2);
    data.append(-2);
    data.append(-6);
    data.append(0);
    data.append(-2);

    sequence.append(TensorTrait::new(shape.span(), data.span()));

    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(1);
    data.append(-3);
    data.append(3);
    data.append(2);
    data.append(0);
    data.append(5);
    data.append(2);
    data.append(0);
    data.append(2);

    sequence.append(TensorTrait::new(shape.span(), data.span()));

    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(-4);
    data.append(-1);
    data.append(-4);
    data.append(4);
    data.append(-5);
    data.append(-3);
    data.append(-4);
    data.append(0);
    data.append(-2);

    sequence.append(TensorTrait::new(shape.span(), data.span()));

    sequence
}
