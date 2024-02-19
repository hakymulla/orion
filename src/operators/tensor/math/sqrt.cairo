use orion::numbers::NumberTrait;
use orion::numbers::fixed_point::core::FixedTrait;
use orion::operators::tensor::core::{Tensor, TensorTrait};

fn sqrt<
    T,
    MAG,
    impl TNumberTrait: NumberTrait<T, MAG>,
    impl TTensor: TensorTrait<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    mut self: Tensor<T>
) -> Tensor<T> {
    let mut result: Array<T> = array![];

    loop {
        match self.data.pop_front() {
            Option::Some(item) => { result.append((*item).sqrt()); },
            Option::None => { break; }
        };
    };

    TensorTrait::new(self.shape, result.span())
}
