# NN::linear

Performs a linear transformation of the input tensor using the provided weights and bias.

````rust
fn linear(inputs: Tensor<T>, weights: Tensor<T>, bias: Tensor<T>, quantized: bool) -> Tensor<T>
```

#### Args

| Name     | Type         | Description       |
| -------- | ------------ | ----------------- |
| `tensor` | `@Tensor<T>` | A 1D tensor representing the input tensor. |
| `weights` | `@Tensor<T>` | A 2D tensor representing the weights. |
| `bias` | `@Tensor<T>` | A 1D tensor representing the bias. |
| `quantized` | `bool` | A boolean flag indicating whether or not to quantize the result. |

> _`<T>` generic type depends on NN dtype._

#### Panics

| TypeError                                                            |
| -------------------------------------------------------------------- |
| This function asserts that the input tensor `inputs` must be 1D, weights tensor must be 2D, and bias tensor must be 1D. |

#### Returns

A `Tensor<T>` representing the result of the linear transformation, possibly quantized.

> _`<T>` generic type depends on NN dtype._

#### Examples

```rust
use onnx_cairo::operators::nn::nn_i32::NN;

fn linear_layer_example() -> Tensor<u32> {
    // We instantiate inputs here.
    // inputs = [-71, 38, 62]
    let inputs = u32_inputs_helper();

    // We instantiate weights here.
    // weights = [[-8, 64, 40], [-33, -34, -20]]
    let weights = u32_weights_helper();

    // We instantiate bias here.
    // weights = [61, -71]
    let weights = u32_bias_helper();

    // We can call `linear` function as follows.
    return NN::linear(inputs, weights, bias, true);
}
>>> [127, -6]
````