��
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
�
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0���������"
value_indexint(0���������"+

vocab_sizeint���������(0���������"
	delimiterstring	�
+
IsNan
x"T
y
"
Ttype:
2
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
2
LookupTableSizeV2
table_handle
size	�
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(�
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
&
	ZerosLike
x"T
y"T"	
Ttype"	transform*2.0.02v2.0.0-rc2-26-g64c3d38��
�
ConstConst*
dtype0*
_output_shapes
: *�
value�B� B�gs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp_final/Transform/transform_output/42/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
�
Const_1Const*�
value�B� B�gs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp_final/Transform/transform_output/42/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
x
Const_2Const*=
value4B2
"(]o��uY�R���N�L���H�D���C�@���=��*
dtype0*
_output_shapes
:

t
Const_3Const*9
value0B.	"$)W'Bw�'B#�'BN�'B�'B1�'Bհ'B�'BM�'B*
dtype0*
_output_shapes
:	
t
Const_4Const*
dtype0*
_output_shapes
:	*9
value0B.	"$�U'B�x'B#�'BN�'B��'B֚'B��'B��'BM�'B
x
Const_5Const*
dtype0*
_output_shapes
:
*=
value4B2
"(hr��`�W��.R��YN�¼J�F���C�@���=��
L
Const_6Const*
valueB
 *�{?@*
dtype0*
_output_shapes
: 
L
Const_7Const*
valueB
 *�T�A*
dtype0*
_output_shapes
: 
L
Const_8Const*
valueB
 *��FA*
dtype0*
_output_shapes
: 
L
Const_9Const*
dtype0*
_output_shapes
: *
valueB
 *^XC
M
Const_10Const*
valueB
 *ʐ�J*
dtype0*
_output_shapes
: 
M
Const_11Const*
valueB
 *�yDD*
dtype0*
_output_shapes
: 
{
transform/inputs/companyPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
'transform/inputs/F_dropoff_census_tractPlaceholder*
shape:���������*
dtype0	*'
_output_shapes
:���������
�
)transform/inputs/F_dropoff_community_areaPlaceholder*
dtype0	*'
_output_shapes
:���������*
shape:���������
�
#transform/inputs/F_dropoff_latitudePlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
�
$transform/inputs/F_dropoff_longitudePlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
x
transform/inputs/farePlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
transform/inputs/F_payment_typePlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
�
&transform/inputs/F_pickup_census_tractPlaceholder*
shape:���������*
dtype0	*'
_output_shapes
:���������
�
(transform/inputs/F_pickup_community_areaPlaceholder*
dtype0	*'
_output_shapes
:���������*
shape:���������
�
"transform/inputs/F_pickup_latitudePlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
#transform/inputs/F_pickup_longitudePlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
x
transform/inputs/tipsPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
�
transform/inputs/F_trip_milesPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
transform/inputs/F_trip_secondsPlaceholder*
dtype0	*'
_output_shapes
:���������*
shape:���������
�
!transform/inputs/F_trip_start_dayPlaceholder*
dtype0	*'
_output_shapes
:���������*
shape:���������
�
"transform/inputs/F_trip_start_hourPlaceholder*
shape:���������*
dtype0	*'
_output_shapes
:���������
�
#transform/inputs/F_trip_start_monthPlaceholder*
shape:���������*
dtype0	*'
_output_shapes
:���������
�
'transform/inputs/F_trip_start_timestampPlaceholder*
dtype0	*'
_output_shapes
:���������*
shape:���������
|
$transform/inputs/inputs/company_copyIdentitytransform/inputs/company*
T0*'
_output_shapes
:���������
�
3transform/inputs/inputs/F_dropoff_census_tract_copyIdentity'transform/inputs/F_dropoff_census_tract*'
_output_shapes
:���������*
T0	
�
5transform/inputs/inputs/F_dropoff_community_area_copyIdentity)transform/inputs/F_dropoff_community_area*'
_output_shapes
:���������*
T0	
�
/transform/inputs/inputs/F_dropoff_latitude_copyIdentity#transform/inputs/F_dropoff_latitude*'
_output_shapes
:���������*
T0
�
0transform/inputs/inputs/F_dropoff_longitude_copyIdentity$transform/inputs/F_dropoff_longitude*'
_output_shapes
:���������*
T0
v
!transform/inputs/inputs/fare_copyIdentitytransform/inputs/fare*'
_output_shapes
:���������*
T0
�
+transform/inputs/inputs/F_payment_type_copyIdentitytransform/inputs/F_payment_type*'
_output_shapes
:���������*
T0
�
2transform/inputs/inputs/F_pickup_census_tract_copyIdentity&transform/inputs/F_pickup_census_tract*'
_output_shapes
:���������*
T0	
�
4transform/inputs/inputs/F_pickup_community_area_copyIdentity(transform/inputs/F_pickup_community_area*'
_output_shapes
:���������*
T0	
�
.transform/inputs/inputs/F_pickup_latitude_copyIdentity"transform/inputs/F_pickup_latitude*'
_output_shapes
:���������*
T0
�
/transform/inputs/inputs/F_pickup_longitude_copyIdentity#transform/inputs/F_pickup_longitude*'
_output_shapes
:���������*
T0
v
!transform/inputs/inputs/tips_copyIdentitytransform/inputs/tips*
T0*'
_output_shapes
:���������
�
)transform/inputs/inputs/F_trip_miles_copyIdentitytransform/inputs/F_trip_miles*
T0*'
_output_shapes
:���������
�
+transform/inputs/inputs/F_trip_seconds_copyIdentitytransform/inputs/F_trip_seconds*
T0	*'
_output_shapes
:���������
�
-transform/inputs/inputs/F_trip_start_day_copyIdentity!transform/inputs/F_trip_start_day*
T0	*'
_output_shapes
:���������
�
.transform/inputs/inputs/F_trip_start_hour_copyIdentity"transform/inputs/F_trip_start_hour*'
_output_shapes
:���������*
T0	
�
/transform/inputs/inputs/F_trip_start_month_copyIdentity#transform/inputs/F_trip_start_month*
T0	*'
_output_shapes
:���������
�
3transform/inputs/inputs/F_trip_start_timestamp_copyIdentity'transform/inputs/F_trip_start_timestamp*'
_output_shapes
:���������*
T0	
�
Etransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SizeSize)transform/inputs/inputs/F_trip_miles_copy*
T0*
out_type0*
_output_shapes
: 
�
Etransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/CastCastEtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
Ftransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
Dtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumSum)transform/inputs/inputs/F_trip_miles_copyFtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
Htransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truedivRealDivDtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumEtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
�
Dtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/subSub)transform/inputs/inputs/F_trip_miles_copyHtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv*
T0*'
_output_shapes
:���������
�
Gtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareSquareDtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/sub*'
_output_shapes
:���������*
T0
�
Htransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Ftransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1SumGtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareHtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
Jtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivFtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1Etransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0
�
Ftransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
Ltransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
Ntransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
�
7transform/scale_to_z_score/scale_to_z_score_per_key/subSub)transform/inputs/inputs/F_trip_miles_copyConst_6*
T0*'
_output_shapes
:���������
j
8transform/scale_to_z_score/scale_to_z_score_per_key/SqrtSqrtConst_7*
T0*
_output_shapes
: 
�
>transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
<transform/scale_to_z_score/scale_to_z_score_per_key/NotEqualNotEqual8transform/scale_to_z_score/scale_to_z_score_per_key/Sqrt>transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
�
>transform/scale_to_z_score/scale_to_z_score_per_key/zeros_like	ZerosLike7transform/scale_to_z_score/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:���������
�
8transform/scale_to_z_score/scale_to_z_score_per_key/CastCast<transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual*

SrcT0
*
Truncate( *
_output_shapes
: *

DstT0
�
7transform/scale_to_z_score/scale_to_z_score_per_key/addAddV2>transform/scale_to_z_score/scale_to_z_score_per_key/zeros_like8transform/scale_to_z_score/scale_to_z_score_per_key/Cast*
T0*'
_output_shapes
:���������
�
:transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1Cast7transform/scale_to_z_score/scale_to_z_score_per_key/add*

SrcT0*
Truncate( *'
_output_shapes
:���������*

DstT0

�
;transform/scale_to_z_score/scale_to_z_score_per_key/truedivRealDiv7transform/scale_to_z_score/scale_to_z_score_per_key/sub8transform/scale_to_z_score/scale_to_z_score_per_key/Sqrt*
T0*'
_output_shapes
:���������
�
<transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2SelectV2:transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1;transform/scale_to_z_score/scale_to_z_score_per_key/truediv7transform/scale_to_z_score/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:���������
�
Gtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SizeSize!transform/inputs/inputs/fare_copy*
T0*
out_type0*
_output_shapes
: 
�
Gtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/CastCastGtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Size*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
�
Htransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
Ftransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumSum!transform/inputs/inputs/fare_copyHtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
Jtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truedivRealDivFtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumGtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0
�
Ftransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/subSub!transform/inputs/inputs/fare_copyJtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv*
T0*'
_output_shapes
:���������
�
Itransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareSquareFtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/sub*'
_output_shapes
:���������*
T0
�
Jtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Htransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1SumItransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareJtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
Ltransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivHtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1Gtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0
�
Htransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ntransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
Ptransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
�
9transform/scale_to_z_score_1/scale_to_z_score_per_key/subSub!transform/inputs/inputs/fare_copyConst_8*'
_output_shapes
:���������*
T0
l
:transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtSqrtConst_9*
T0*
_output_shapes
: 
�
@transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
>transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqualNotEqual:transform/scale_to_z_score_1/scale_to_z_score_per_key/Sqrt@transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
�
@transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_like	ZerosLike9transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:���������
�
:transform/scale_to_z_score_1/scale_to_z_score_per_key/CastCast>transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

�
9transform/scale_to_z_score_1/scale_to_z_score_per_key/addAddV2@transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_like:transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast*
T0*'
_output_shapes
:���������
�
<transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1Cast9transform/scale_to_z_score_1/scale_to_z_score_per_key/add*

SrcT0*
Truncate( *'
_output_shapes
:���������*

DstT0

�
=transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivRealDiv9transform/scale_to_z_score_1/scale_to_z_score_per_key/sub:transform/scale_to_z_score_1/scale_to_z_score_per_key/Sqrt*
T0*'
_output_shapes
:���������
�
>transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2SelectV2<transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1=transform/scale_to_z_score_1/scale_to_z_score_per_key/truediv9transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*'
_output_shapes
:���������*
T0
�
Gtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastCast+transform/inputs/inputs/F_trip_seconds_copy*
Truncate( *'
_output_shapes
:���������*

DstT0*

SrcT0	
�
Gtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SizeSizeGtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
out_type0*
_output_shapes
: 
�
Itransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1CastGtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Size*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
�
Htransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
�
Ftransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumSumGtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastHtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Jtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truedivRealDivFtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumItransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1*
T0*
_output_shapes
: 
�
Ftransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/subSubGtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastJtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv*
T0*'
_output_shapes
:���������
�
Itransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareSquareFtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/sub*'
_output_shapes
:���������*
T0
�
Jtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Htransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1SumItransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareJtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
Ltransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivHtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1Itransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1*
T0*
_output_shapes
: 
�
Htransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
Ntransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
shape: *
dtype0
�
Ptransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
�
:transform/scale_to_z_score_2/scale_to_z_score_per_key/CastCast+transform/inputs/inputs/F_trip_seconds_copy*
Truncate( *'
_output_shapes
:���������*

DstT0*

SrcT0	
�
9transform/scale_to_z_score_2/scale_to_z_score_per_key/subSub:transform/scale_to_z_score_2/scale_to_z_score_per_key/CastConst_11*
T0*'
_output_shapes
:���������
m
:transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtSqrtConst_10*
_output_shapes
: *
T0
�
@transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
>transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqualNotEqual:transform/scale_to_z_score_2/scale_to_z_score_per_key/Sqrt@transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/y*
_output_shapes
: *
incompatible_shape_error(*
T0
�
@transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_like	ZerosLike9transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:���������
�
<transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1Cast>transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

�
9transform/scale_to_z_score_2/scale_to_z_score_per_key/addAddV2@transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_like<transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1*'
_output_shapes
:���������*
T0
�
<transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_2Cast9transform/scale_to_z_score_2/scale_to_z_score_per_key/add*

SrcT0*
Truncate( *'
_output_shapes
:���������*

DstT0

�
=transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivRealDiv9transform/scale_to_z_score_2/scale_to_z_score_per_key/sub:transform/scale_to_z_score_2/scale_to_z_score_per_key/Sqrt*
T0*'
_output_shapes
:���������
�
>transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2SelectV2<transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_2=transform/scale_to_z_score_2/scale_to_z_score_per_key/truediv9transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:���������
�
?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
9transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshape+transform/inputs/inputs/F_payment_type_copy?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*#
_output_shapes
:���������*
T0*
Tshape0
~
=transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
�
8transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
�
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst*
	delimiter	*
value_index���������*
	key_index���������*

vocab_size���������
�
dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
�
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
�
Ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
�
Ptransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFast+transform/inputs/inputs/F_payment_type_copy*'
_output_shapes
:���������*
num_buckets

�
htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table+transform/inputs/inputs/F_payment_type_copy8transform/compute_and_apply_vocabulary/apply_vocab/Const*'
_output_shapes
:���������*	
Tin0*

Tout0	
�
ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
�
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddPtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*'
_output_shapes
:���������*
T0	
�
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV28transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*'
_output_shapes
:���������*
incompatible_shape_error(
�
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*'
_output_shapes
:���������*
T0	
|
:transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
dtype0	*
_output_shapes
: *
value	B	 R 
z
8transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
�
6transform/compute_and_apply_vocabulary/apply_vocab/subSubFtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add8transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
�
Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
;transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshape$transform/inputs/inputs/company_copyAtransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*#
_output_shapes
:���������*
T0*
Tshape0
�
?transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
:transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
�
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_1*
	delimiter	*
value_index���������*
	key_index���������*

vocab_size���������
�
ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
�
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
value	B	 R
*
dtype0	
�
Htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
_output_shapes
: *
T0	
�
Rtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFast$transform/inputs/inputs/company_copy*
num_buckets
*'
_output_shapes
:���������
�
jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table$transform/inputs/inputs/company_copy:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*'
_output_shapes
:���������*	
Tin0*

Tout0	
�
htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
�
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAddRtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_buckethtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:���������
�
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*'
_output_shapes
:���������*
incompatible_shape_error(
�
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:���������
~
<transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
_output_shapes
: *
value	B	 R *
dtype0	
|
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
�
8transform/compute_and_apply_vocabulary_1/apply_vocab/subSubHtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
�
)transform/bucketize/quantiles/PlaceholderPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
r
'transform/bucketize/quantiles/sort/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
[
&transform/bucketize/quantiles/sort/NegNegConst_3*
T0*
_output_shapes
:	
�
(transform/bucketize/quantiles/sort/ShapeShape&transform/bucketize/quantiles/sort/Neg*
T0*
out_type0*
_output_shapes
:
�
6transform/bucketize/quantiles/sort/strided_slice/stackConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
8transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
�
8transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
0transform/bucketize/quantiles/sort/strided_sliceStridedSlice(transform/bucketize/quantiles/sort/Shape6transform/bucketize/quantiles/sort/strided_slice/stack8transform/bucketize/quantiles/sort/strided_slice/stack_18transform/bucketize/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
i
'transform/bucketize/quantiles/sort/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
)transform/bucketize/quantiles/sort/TopKV2TopKV2&transform/bucketize/quantiles/sort/Neg0transform/bucketize/quantiles/sort/strided_slice* 
_output_shapes
:	:	*
sorted(*
T0

(transform/bucketize/quantiles/sort/Neg_1Neg)transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
n
,transform/bucketize/quantiles/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
�
(transform/bucketize/quantiles/ExpandDims
ExpandDims(transform/bucketize/quantiles/sort/Neg_1,transform/bucketize/quantiles/ExpandDims/dim*
_output_shapes

:	*

Tdim0*
T0
t
)transform/bucketize/quantiles/sort_1/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
(transform/bucketize/quantiles/sort_1/NegNeg(transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:	
�
*transform/bucketize/quantiles/sort_1/ShapeShape(transform/bucketize/quantiles/sort_1/Neg*
T0*
out_type0*
_output_shapes
:
�
8transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
:transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
:transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
2transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice*transform/bucketize/quantiles/sort_1/Shape8transform/bucketize/quantiles/sort_1/strided_slice/stack:transform/bucketize/quantiles/sort_1/strided_slice/stack_1:transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
k
)transform/bucketize/quantiles/sort_1/RankConst*
_output_shapes
: *
value	B :*
dtype0
�
+transform/bucketize/quantiles/sort_1/TopKV2TopKV2(transform/bucketize/quantiles/sort_1/Neg2transform/bucketize/quantiles/sort_1/strided_slice*(
_output_shapes
:	:	*
sorted(*
T0
�
*transform/bucketize/quantiles/sort_1/Neg_1Neg+transform/bucketize/quantiles/sort_1/TopKV2*
_output_shapes

:	*
T0
f
$transform/bucketize/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 
�
%transform/bucketize/assert_rank/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
V
Ntransform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
G
?transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
�
Ctransform/bucketize/apply_buckets/assign_buckets_all_shapes/unstackUnpack.transform/inputs/inputs/F_pickup_latitude_copy*
T0*	
num*

axis*#
_output_shapes
:���������
�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
�
^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
Xtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlicePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
�
Otransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastXtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*
_output_shapes
: *

DstT0	*

SrcT0*
Truncate( 
�
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
�
Ytransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegYtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
_output_shapes

:	*

Tidx0*
T0
�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegCtransform/bucketize/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:���������*
T0
�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxPtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackNtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*

axis *
N*
_output_shapes
:
�
Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*

axis *
N*
_output_shapes

:
�
Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
valueB :
���������*
dtype0
�
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
_output_shapes

:
*

Tidx0*
T0
�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegCtransform/bucketize/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*	
num*

axis *
_output_shapes
:

�
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:���������
�
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Cast`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*
Truncate( *#
_output_shapes
:���������*

DstT0	
�
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubOtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:���������
�
Gtransform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/aPackNtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*

axis *
N*'
_output_shapes
:���������
�
Jtransform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       
�
Etransform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose	TransposeGtransform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/aJtransform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/perm*'
_output_shapes
:���������*
Tperm0*
T0	
i
'transform/bucketize/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
'transform/bucketize/apply_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0*
out_type0

5transform/bucketize/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
7transform/bucketize/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
7transform/bucketize/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
/transform/bucketize/apply_buckets/strided_sliceStridedSlice'transform/bucketize/apply_buckets/Shape5transform/bucketize/apply_buckets/strided_slice/stack7transform/bucketize/apply_buckets/strided_slice/stack_17transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
+transform/bucketize_1/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
t
)transform/bucketize_1/quantiles/sort/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
]
(transform/bucketize_1/quantiles/sort/NegNegConst_2*
T0*
_output_shapes
:

�
*transform/bucketize_1/quantiles/sort/ShapeShape(transform/bucketize_1/quantiles/sort/Neg*
T0*
out_type0*
_output_shapes
:
�
8transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
:transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
:transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
2transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_1/quantiles/sort/Shape8transform/bucketize_1/quantiles/sort/strided_slice/stack:transform/bucketize_1/quantiles/sort/strided_slice/stack_1:transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
k
)transform/bucketize_1/quantiles/sort/RankConst*
_output_shapes
: *
value	B :*
dtype0
�
+transform/bucketize_1/quantiles/sort/TopKV2TopKV2(transform/bucketize_1/quantiles/sort/Neg2transform/bucketize_1/quantiles/sort/strided_slice*
T0* 
_output_shapes
:
:
*
sorted(
�
*transform/bucketize_1/quantiles/sort/Neg_1Neg+transform/bucketize_1/quantiles/sort/TopKV2*
_output_shapes
:
*
T0
p
.transform/bucketize_1/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
*transform/bucketize_1/quantiles/ExpandDims
ExpandDims*transform/bucketize_1/quantiles/sort/Neg_1.transform/bucketize_1/quantiles/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

v
+transform/bucketize_1/quantiles/sort_1/axisConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
*transform/bucketize_1/quantiles/sort_1/NegNeg*transform/bucketize_1/quantiles/ExpandDims*
_output_shapes

:
*
T0
�
,transform/bucketize_1/quantiles/sort_1/ShapeShape*transform/bucketize_1/quantiles/sort_1/Neg*
T0*
out_type0*
_output_shapes
:
�
:transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
4transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_1/quantiles/sort_1/Shape:transform/bucketize_1/quantiles/sort_1/strided_slice/stack<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
m
+transform/bucketize_1/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
�
-transform/bucketize_1/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_1/quantiles/sort_1/Neg4transform/bucketize_1/quantiles/sort_1/strided_slice*(
_output_shapes
:
:
*
sorted(*
T0
�
,transform/bucketize_1/quantiles/sort_1/Neg_1Neg-transform/bucketize_1/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

h
&transform/bucketize_1/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 
�
'transform/bucketize_1/assert_rank/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
X
Ptransform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
�
Etransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstackUnpack/transform/inputs/inputs/F_pickup_longitude_copy*
T0*	
num*

axis*#
_output_shapes
:���������
�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
�
`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Ztransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
�
Qtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_1/quantiles/sort_1/Neg_1*
_output_shapes

:
*
T0
�
[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
_output_shapes

:
*

Tidx0*
T0
�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegEtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*

axis *
N*
_output_shapes
:*
T0
�
\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*

axis *
N*
_output_shapes

:
�
Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegEtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:���������*
T0
�
Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
_output_shapes
:*
T0*	
num*

axis 
�
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:���������
�
Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*
Truncate( *#
_output_shapes
:���������*

DstT0	
�
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:���������
�
Itransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/aPackPtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*

axis *
N*'
_output_shapes
:���������
�
Ltransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
�
Gtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose	TransposeItransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/aLtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:���������*
Tperm0
k
)transform/bucketize_1/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
)transform/bucketize_1/apply_buckets/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0*
out_type0
�
7transform/bucketize_1/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
9transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
9transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
1transform/bucketize_1/apply_buckets/strided_sliceStridedSlice)transform/bucketize_1/apply_buckets/Shape7transform/bucketize_1/apply_buckets/strided_slice/stack9transform/bucketize_1/apply_buckets/strided_slice/stack_19transform/bucketize_1/apply_buckets/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
+transform/bucketize_2/quantiles/PlaceholderPlaceholder*#
_output_shapes
:���������*
shape:���������*
dtype0
t
)transform/bucketize_2/quantiles/sort/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
]
(transform/bucketize_2/quantiles/sort/NegNegConst_4*
T0*
_output_shapes
:	
�
*transform/bucketize_2/quantiles/sort/ShapeShape(transform/bucketize_2/quantiles/sort/Neg*
_output_shapes
:*
T0*
out_type0
�
8transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
:transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
�
:transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
2transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_2/quantiles/sort/Shape8transform/bucketize_2/quantiles/sort/strided_slice/stack:transform/bucketize_2/quantiles/sort/strided_slice/stack_1:transform/bucketize_2/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
k
)transform/bucketize_2/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
�
+transform/bucketize_2/quantiles/sort/TopKV2TopKV2(transform/bucketize_2/quantiles/sort/Neg2transform/bucketize_2/quantiles/sort/strided_slice*
T0* 
_output_shapes
:	:	*
sorted(
�
*transform/bucketize_2/quantiles/sort/Neg_1Neg+transform/bucketize_2/quantiles/sort/TopKV2*
_output_shapes
:	*
T0
p
.transform/bucketize_2/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
*transform/bucketize_2/quantiles/ExpandDims
ExpandDims*transform/bucketize_2/quantiles/sort/Neg_1.transform/bucketize_2/quantiles/ExpandDims/dim*
_output_shapes

:	*

Tdim0*
T0
v
+transform/bucketize_2/quantiles/sort_1/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
*transform/bucketize_2/quantiles/sort_1/NegNeg*transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:	
�
,transform/bucketize_2/quantiles/sort_1/ShapeShape*transform/bucketize_2/quantiles/sort_1/Neg*
T0*
out_type0*
_output_shapes
:
�
:transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
�
<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
4transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_2/quantiles/sort_1/Shape:transform/bucketize_2/quantiles/sort_1/strided_slice/stack<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
m
+transform/bucketize_2/quantiles/sort_1/RankConst*
_output_shapes
: *
value	B :*
dtype0
�
-transform/bucketize_2/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_2/quantiles/sort_1/Neg4transform/bucketize_2/quantiles/sort_1/strided_slice*(
_output_shapes
:	:	*
sorted(*
T0
�
,transform/bucketize_2/quantiles/sort_1/Neg_1Neg-transform/bucketize_2/quantiles/sort_1/TopKV2*
_output_shapes

:	*
T0
h
&transform/bucketize_2/assert_rank/rankConst*
_output_shapes
: *
value	B :*
dtype0
�
'transform/bucketize_2/assert_rank/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0*
out_type0
X
Ptransform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
�
Etransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstackUnpack/transform/inputs/inputs/F_dropoff_latitude_copy*
T0*	
num*

axis*#
_output_shapes
:���������
�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0*
out_type0
�
`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
�
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Ztransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
Qtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes

:	*
T0
�
[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*

Tidx0*
T0*
_output_shapes

:	
�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegEtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*

axis *
N*
_output_shapes
:
�
\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*

axis *
N*
_output_shapes

:
�
Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
_output_shapes

:
*

Tidx0*
T0
�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegEtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:���������*
T0
�
Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*	
num*

axis *
_output_shapes
:

�
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:���������
�
Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*
Truncate( *#
_output_shapes
:���������*

DstT0	
�
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:���������
�
Itransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/aPackPtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
N*'
_output_shapes
:���������*
T0	*

axis 
�
Ltransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
�
Gtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose	TransposeItransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/aLtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:���������*
Tperm0
k
)transform/bucketize_2/apply_buckets/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
)transform/bucketize_2/apply_buckets/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
�
7transform/bucketize_2/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
9transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
9transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
1transform/bucketize_2/apply_buckets/strided_sliceStridedSlice)transform/bucketize_2/apply_buckets/Shape7transform/bucketize_2/apply_buckets/strided_slice/stack9transform/bucketize_2/apply_buckets/strided_slice/stack_19transform/bucketize_2/apply_buckets/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
�
+transform/bucketize_3/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
t
)transform/bucketize_3/quantiles/sort/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
]
(transform/bucketize_3/quantiles/sort/NegNegConst_5*
_output_shapes
:
*
T0
�
*transform/bucketize_3/quantiles/sort/ShapeShape(transform/bucketize_3/quantiles/sort/Neg*
out_type0*
_output_shapes
:*
T0
�
8transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
:transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
�
:transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
2transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_3/quantiles/sort/Shape8transform/bucketize_3/quantiles/sort/strided_slice/stack:transform/bucketize_3/quantiles/sort/strided_slice/stack_1:transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
k
)transform/bucketize_3/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
�
+transform/bucketize_3/quantiles/sort/TopKV2TopKV2(transform/bucketize_3/quantiles/sort/Neg2transform/bucketize_3/quantiles/sort/strided_slice* 
_output_shapes
:
:
*
sorted(*
T0
�
*transform/bucketize_3/quantiles/sort/Neg_1Neg+transform/bucketize_3/quantiles/sort/TopKV2*
_output_shapes
:
*
T0
p
.transform/bucketize_3/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
*transform/bucketize_3/quantiles/ExpandDims
ExpandDims*transform/bucketize_3/quantiles/sort/Neg_1.transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:
*

Tdim0
v
+transform/bucketize_3/quantiles/sort_1/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
*transform/bucketize_3/quantiles/sort_1/NegNeg*transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes

:

�
,transform/bucketize_3/quantiles/sort_1/ShapeShape*transform/bucketize_3/quantiles/sort_1/Neg*
_output_shapes
:*
T0*
out_type0
�
:transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
4transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_3/quantiles/sort_1/Shape:transform/bucketize_3/quantiles/sort_1/strided_slice/stack<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
m
+transform/bucketize_3/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
�
-transform/bucketize_3/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_3/quantiles/sort_1/Neg4transform/bucketize_3/quantiles/sort_1/strided_slice*(
_output_shapes
:
:
*
sorted(*
T0
�
,transform/bucketize_3/quantiles/sort_1/Neg_1Neg-transform/bucketize_3/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

h
&transform/bucketize_3/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 
�
'transform/bucketize_3/assert_rank/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0*
out_type0
X
Ptransform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
�
Etransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstackUnpack0transform/inputs/inputs/F_dropoff_longitude_copy*

axis*#
_output_shapes
:���������*
T0*	
num
�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0*
out_type0
�
`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Ztransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
�
Qtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*
_output_shapes
: *

DstT0	*

SrcT0*
Truncate( 
�
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:

�
[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:
*

Tidx0
�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegEtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*

axis *
N*
_output_shapes
:*
T0
�
\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
_output_shapes

:*
T0*

axis 
�
Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegEtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:���������*
T0
�
Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
_output_shapes
:*
T0*	
num*

axis 
�
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:���������
�
Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:���������*

DstT0	*

SrcT0*
Truncate( 
�
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*#
_output_shapes
:���������*
T0	
�
Itransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/aPackPtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*

axis *
N*'
_output_shapes
:���������*
T0	
�
Ltransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
�
Gtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose	TransposeItransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/aLtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/perm*
Tperm0*
T0	*'
_output_shapes
:���������
k
)transform/bucketize_3/apply_buckets/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
)transform/bucketize_3/apply_buckets/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
�
7transform/bucketize_3/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
9transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
9transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
1transform/bucketize_3/apply_buckets/strided_sliceStridedSlice)transform/bucketize_3/apply_buckets/Shape7transform/bucketize_3/apply_buckets/strided_slice/stack9transform/bucketize_3/apply_buckets/strided_slice/stack_19transform/bucketize_3/apply_buckets/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
m
transform/IsNanIsNan!transform/inputs/inputs/fare_copy*
T0*'
_output_shapes
:���������
v
transform/zeros_like	ZerosLike!transform/inputs/inputs/fare_copy*'
_output_shapes
:���������*
T0
}
transform/CastCasttransform/zeros_like*

SrcT0*
Truncate( *'
_output_shapes
:���������*

DstT0	
T
transform/ConstConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
z
transform/MulMul!transform/inputs/inputs/fare_copytransform/Const*
T0*'
_output_shapes
:���������
�
transform/GreaterGreater!transform/inputs/inputs/tips_copytransform/Mul*'
_output_shapes
:���������*
T0
|
transform/Cast_1Casttransform/Greater*

SrcT0
*
Truncate( *'
_output_shapes
:���������*

DstT0	

transform/SelectSelecttransform/IsNantransform/Casttransform/Cast_1*'
_output_shapes
:���������*
T0	

transform/initNoOp

transform/init_1NoOp

initNoOp"w"�
saved_model_assets�*�
i
+type.googleapis.com/tensorflow.AssetFileDef:
	
Const:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_1:0/vocab_compute_and_apply_vocabulary_1_vocabulary"�
tft_schema_override_min�
�
<transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
>transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
)transform/bucketize/apply_buckets/Const:0
+transform/bucketize_1/apply_buckets/Const:0
+transform/bucketize_2/apply_buckets/Const:0
+transform/bucketize_3/apply_buckets/Const:0"�
tft_schema_override_max�
�
8transform/compute_and_apply_vocabulary/apply_vocab/sub:0
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
1transform/bucketize/apply_buckets/strided_slice:0
3transform/bucketize_1/apply_buckets/strided_slice:0
3transform/bucketize_2/apply_buckets/strided_slice:0
3transform/bucketize_3/apply_buckets/strided_slice:0"�
table_initializer�
�
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"�
tft_schema_override_tensor�
�
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Gtransform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose:0
Itransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose:0
Itransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose:0
Itransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose:0")
asset_filepaths

Const:0
	Const_1:0*�
transform_signature�
H
trip_seconds8
!transform/inputs/F_trip_seconds:0	���������
L
trip_start_day:
#transform/inputs/F_trip_start_day:0	���������
V
pickup_census_tract?
(transform/inputs/F_pickup_census_tract:0	���������
P
trip_start_month<
%transform/inputs/F_trip_start_month:0	���������
<
company1
transform/inputs/company:0���������
D

trip_miles6
transform/inputs/F_trip_miles:0���������
Z
pickup_community_areaA
*transform/inputs/F_pickup_community_area:0	���������
X
dropoff_census_tract@
)transform/inputs/F_dropoff_census_tract:0	���������
6
fare.
transform/inputs/fare:0���������
R
dropoff_longitude=
&transform/inputs/F_dropoff_longitude:0���������
X
trip_start_timestamp@
)transform/inputs/F_trip_start_timestamp:0	���������
N
pickup_latitude;
$transform/inputs/F_pickup_latitude:0���������
6
tips.
transform/inputs/tips:0���������
P
pickup_longitude<
%transform/inputs/F_pickup_longitude:0���������
N
trip_start_hour;
$transform/inputs/F_trip_start_hour:0	���������
H
payment_type8
!transform/inputs/F_payment_type:0���������
\
dropoff_community_areaB
+transform/inputs/F_dropoff_community_area:0	���������
P
dropoff_latitude<
%transform/inputs/F_dropoff_latitude:0���������j
trip_seconds_xfW
@transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2:0���������w
pickup_longitude_xf`
Itransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose:0	���������w
dropoff_latitude_xf`
Itransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose:0	���������4
tips_xf)
transform/Select:0	���������t
pickup_latitude_xf^
Gtransform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose:0	���������b
fare_xfW
@transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2:0���������x
dropoff_longitude_xf`
Itransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose:0	���������v

company_xfh
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	���������k
dropoff_community_area_xfN
7transform/inputs/inputs/F_dropoff_community_area_copy:0	���������g
dropoff_census_tract_xfL
5transform/inputs/inputs/F_dropoff_census_tract_copy:0	���������y
payment_type_xff
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	���������i
pickup_community_area_xfM
6transform/inputs/inputs/F_pickup_community_area_copy:0	���������_
trip_start_month_xfH
1transform/inputs/inputs/F_trip_start_month_copy:0	���������e
pickup_census_tract_xfK
4transform/inputs/inputs/F_pickup_census_tract_copy:0	���������[
trip_start_day_xfF
/transform/inputs/inputs/F_trip_start_day_copy:0	���������]
trip_start_hour_xfG
0transform/inputs/inputs/F_trip_start_hour_copy:0	���������f
trip_miles_xfU
>transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2:0���������tensorflow/serving/predict