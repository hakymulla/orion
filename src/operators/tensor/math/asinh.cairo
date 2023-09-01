use array::ArrayTrait;
use array::SpanTrait;
use option::OptionTrait;
use traits::Into;

use orion::numbers::NumberTrait;
use orion::numbers::fixed_point::core::FixedTrait;
use orion::operators::tensor::core::{Tensor, TensorTrait};

/// Cf: TensorTrait::asinh docstring
fn asinh_from_int<
    T,
    F,
    INTMAG,
    FPMAG,
    impl TNumber: NumberTrait<T, INTMAG>,
    impl FFixedTrait: FixedTrait<F, FPMAG>,
    impl FTensor: TensorTrait<F, F>,
    impl MAGInto: Into<INTMAG, FPMAG>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
    impl FDrop: Drop<F>,
    impl FPMAGDrop: Drop<FPMAG>
>(
    mut self: Tensor<T>
) -> Tensor<F> {
    let mut result = ArrayTrait::new();

    loop {
        match self.data.pop_front() {
            Option::Some(item) => {
                result
                    .append(
                        FixedTrait::<F,
                        FPMAG>::new_unscaled(((*item).mag()).into(), (*item).is_neg())
                            .asinh()
                    );
            },
            Option::None(_) => {
                break;
            }
        };
    };

    return TensorTrait::new(self.shape, result.span());
}

/// Cf: TensorTrait::asinh docstring
fn asinh_from_fp<
    F,
    MAG,
    impl FFixedTrait: FixedTrait<F, MAG>,
    impl FTensor: TensorTrait<F, F>,
    impl FCopy: Copy<F>,
    impl FDrop: Drop<F>,
>(
    mut self: Tensor<F>
) -> Tensor<F> {
    let mut result = ArrayTrait::new();

    loop {
        match self.data.pop_front() {
            Option::Some(item) => {
                result.append((*item).asinh());
            },
            Option::None(_) => {
                break;
            }
        };
    };

    return TensorTrait::new(self.shape, result.span());
}

