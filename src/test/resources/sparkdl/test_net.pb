
F
inputPlaceholder*
dtype0*
_output_shapes
: *
shape: 
^
ConstConst*%
valueB"   <   (      *
dtype0*
_output_shapes
:
g
	DecodeRaw	DecodeRawinput*
little_endian(*
out_type0*#
_output_shapes
:���������
c
ReshapeReshape	DecodeRawConst*
T0*
Tshape0*&
_output_shapes
:<(
`
ResizeArea/sizeConst*
valueB"      *
dtype0*
_output_shapes
:
x

ResizeArea
ResizeAreaReshapeResizeArea/size*&
_output_shapes
:*
align_corners( *
T0
l
strided_slice/stackConst*
dtype0*
_output_shapes
:*%
valueB"                
n
strided_slice/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
n
strided_slice/stack_2Const*%
valueB"         ����*
dtype0*
_output_shapes
:
�
strided_sliceStridedSlice
ResizeAreastrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*&
_output_shapes
:
e
rgb_to_grayscale/IdentityIdentitystrided_slice*
T0*&
_output_shapes
:
W
rgb_to_grayscale/RankConst*
value	B :*
dtype0*
_output_shapes
: 
X
rgb_to_grayscale/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
k
rgb_to_grayscale/subSubrgb_to_grayscale/Rankrgb_to_grayscale/sub/y*
_output_shapes
: *
T0
a
rgb_to_grayscale/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
rgb_to_grayscale/ExpandDims
ExpandDimsrgb_to_grayscale/subrgb_to_grayscale/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
k
rgb_to_grayscale/mul/yConst*
_output_shapes
:*!
valueB"l	�>�E?�x�=*
dtype0

rgb_to_grayscale/mulMulrgb_to_grayscale/Identityrgb_to_grayscale/mul/y*
T0*&
_output_shapes
:
�
rgb_to_grayscale/SumSumrgb_to_grayscale/mulrgb_to_grayscale/ExpandDims*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
c
rgb_to_grayscaleIdentityrgb_to_grayscale/Sum*
T0*&
_output_shapes
:
Y
Reshape_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
j
	Reshape_1Reshapergb_to_grayscaleReshape_1/shape*
Tshape0*
_output_shapes
:*
T0
>
RoundRound	Reshape_1*
T0*
_output_shapes
:
S
sparkdl_output__CastRound*

SrcT0*
_output_shapes
:*

DstT0"