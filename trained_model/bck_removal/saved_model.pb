??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28??
?
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:*
dtype0
?
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
: *
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
: *
dtype0
?
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:@*
dtype0
?
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?T?*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
?T?*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_20/kernel
?
.conv2d_transpose_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_20/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_transpose_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_20/bias
?
,conv2d_transpose_20/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_20/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_nameconv2d_transpose_21/kernel
?
.conv2d_transpose_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_21/kernel*&
_output_shapes
:@@*
dtype0
?
conv2d_transpose_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_21/bias
?
,conv2d_transpose_21/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_21/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_22/kernel
?
.conv2d_transpose_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_22/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_22/bias
?
,conv2d_transpose_22/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_22/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_23/kernel
?
.conv2d_transpose_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_23/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_23/bias
?
,conv2d_transpose_23/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_23/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_24/kernel
?
.conv2d_transpose_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_24/kernel*&
_output_shapes
:*
dtype0
?
conv2d_transpose_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_24/bias
?
,conv2d_transpose_24/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_24/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_25/kernel
?
.conv2d_transpose_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_25/kernel*&
_output_shapes
:*
dtype0
?
conv2d_transpose_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_25/bias
?
,conv2d_transpose_25/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_25/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_17/kernel/m
?
+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_17/bias/m
{
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_18/kernel/m
?
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_19/kernel/m
?
+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/m
{
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/m
?
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?T?*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
?T?*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_20/kernel/m
?
5Adam/conv2d_transpose_20/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_20/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_20/bias/m
?
3Adam/conv2d_transpose_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_20/bias/m*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/conv2d_transpose_21/kernel/m
?
5Adam/conv2d_transpose_21/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_21/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_transpose_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_21/bias/m
?
3Adam/conv2d_transpose_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_21/bias/m*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_22/kernel/m
?
5Adam/conv2d_transpose_22/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_22/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_22/bias/m
?
3Adam/conv2d_transpose_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_22/bias/m*
_output_shapes
: *
dtype0
?
!Adam/conv2d_transpose_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_23/kernel/m
?
5Adam/conv2d_transpose_23/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_23/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_23/bias/m
?
3Adam/conv2d_transpose_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_23/bias/m*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_24/kernel/m
?
5Adam/conv2d_transpose_24/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_24/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_24/bias/m
?
3Adam/conv2d_transpose_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_24/bias/m*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_25/kernel/m
?
5Adam/conv2d_transpose_25/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_25/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_25/bias/m
?
3Adam/conv2d_transpose_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_25/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_17/kernel/v
?
+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_17/bias/v
{
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_18/kernel/v
?
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_19/kernel/v
?
+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/v
{
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/v
?
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?T?*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
?T?*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_20/kernel/v
?
5Adam/conv2d_transpose_20/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_20/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_20/bias/v
?
3Adam/conv2d_transpose_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_20/bias/v*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/conv2d_transpose_21/kernel/v
?
5Adam/conv2d_transpose_21/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_21/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_transpose_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_21/bias/v
?
3Adam/conv2d_transpose_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_21/bias/v*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_22/kernel/v
?
5Adam/conv2d_transpose_22/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_22/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_22/bias/v
?
3Adam/conv2d_transpose_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_22/bias/v*
_output_shapes
: *
dtype0
?
!Adam/conv2d_transpose_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_23/kernel/v
?
5Adam/conv2d_transpose_23/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_23/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_23/bias/v
?
3Adam/conv2d_transpose_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_23/bias/v*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_24/kernel/v
?
5Adam/conv2d_transpose_24/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_24/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_24/bias/v
?
3Adam/conv2d_transpose_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_24/bias/v*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_25/kernel/v
?
5Adam/conv2d_transpose_25/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_25/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_25/bias/v
?
3Adam/conv2d_transpose_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_25/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer_with_weights-10
layer-20
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
R
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
R
=	variables
>trainable_variables
?regularization_losses
@	keras_api
R
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
h

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
R
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
R
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
R
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
h

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
h

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
R
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
h

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
R
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
h

qkernel
rbias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
R
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
i

{kernel
|bias
}	variables
~trainable_variables
regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?'m?(m?1m?2m?7m?8m?Em?Fm?Wm?Xm?]m?^m?gm?hm?qm?rm?{m?|m?	?m?	?m?v?v?'v?(v?1v?2v?7v?8v?Ev?Fv?Wv?Xv?]v?^v?gv?hv?qv?rv?{v?|v?	?v?	?v?
?
0
1
'2
(3
14
25
76
87
E8
F9
W10
X11
]12
^13
g14
h15
q16
r17
{18
|19
?20
?21
?
0
1
'2
(3
14
25
76
87
E8
F9
W10
X11
]12
^13
g14
h15
q16
r17
{18
|19
?20
?21
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
\Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
\Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

E0
F1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
fd
VARIABLE_VALUEconv2d_transpose_20/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_20/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

W0
X1

W0
X1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_21/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_21/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

]0
^1

]0
^1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
fd
VARIABLE_VALUEconv2d_transpose_22/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_22/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

g0
h1

g0
h1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
fd
VARIABLE_VALUEconv2d_transpose_23/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_23/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

q0
r1

q0
r1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
fd
VARIABLE_VALUEconv2d_transpose_24/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_24/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

{0
|1

{0
|1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_25/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_25/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_20/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_20/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_21/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_21/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_22/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_22/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_23/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_23/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_24/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_24/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_25/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_25/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_20/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_20/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_21/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_21/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_22/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_22/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_23/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_23/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_24/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_24/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_25/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_25/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_17_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_17_inputconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasdense_2/kerneldense_2/biasconv2d_transpose_20/kernelconv2d_transpose_20/biasconv2d_transpose_21/kernelconv2d_transpose_21/biasconv2d_transpose_22/kernelconv2d_transpose_22/biasconv2d_transpose_23/kernelconv2d_transpose_23/biasconv2d_transpose_24/kernelconv2d_transpose_24/biasconv2d_transpose_25/kernelconv2d_transpose_25/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_248540
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp.conv2d_transpose_20/kernel/Read/ReadVariableOp,conv2d_transpose_20/bias/Read/ReadVariableOp.conv2d_transpose_21/kernel/Read/ReadVariableOp,conv2d_transpose_21/bias/Read/ReadVariableOp.conv2d_transpose_22/kernel/Read/ReadVariableOp,conv2d_transpose_22/bias/Read/ReadVariableOp.conv2d_transpose_23/kernel/Read/ReadVariableOp,conv2d_transpose_23/bias/Read/ReadVariableOp.conv2d_transpose_24/kernel/Read/ReadVariableOp,conv2d_transpose_24/bias/Read/ReadVariableOp.conv2d_transpose_25/kernel/Read/ReadVariableOp,conv2d_transpose_25/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_20/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_20/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_21/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_21/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_22/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_22/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_23/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_23/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_24/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_24/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_25/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_25/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_20/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_20/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_21/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_21/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_22/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_22/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_23/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_23/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_24/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_24/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_25/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_25/bias/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_250130
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasdense_2/kerneldense_2/biasconv2d_transpose_20/kernelconv2d_transpose_20/biasconv2d_transpose_21/kernelconv2d_transpose_21/biasconv2d_transpose_22/kernelconv2d_transpose_22/biasconv2d_transpose_23/kernelconv2d_transpose_23/biasconv2d_transpose_24/kernelconv2d_transpose_24/biasconv2d_transpose_25/kernelconv2d_transpose_25/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/m!Adam/conv2d_transpose_20/kernel/mAdam/conv2d_transpose_20/bias/m!Adam/conv2d_transpose_21/kernel/mAdam/conv2d_transpose_21/bias/m!Adam/conv2d_transpose_22/kernel/mAdam/conv2d_transpose_22/bias/m!Adam/conv2d_transpose_23/kernel/mAdam/conv2d_transpose_23/bias/m!Adam/conv2d_transpose_24/kernel/mAdam/conv2d_transpose_24/bias/m!Adam/conv2d_transpose_25/kernel/mAdam/conv2d_transpose_25/bias/mAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v!Adam/conv2d_transpose_20/kernel/vAdam/conv2d_transpose_20/bias/v!Adam/conv2d_transpose_21/kernel/vAdam/conv2d_transpose_21/bias/v!Adam/conv2d_transpose_22/kernel/vAdam/conv2d_transpose_22/bias/v!Adam/conv2d_transpose_23/kernel/vAdam/conv2d_transpose_23/bias/v!Adam/conv2d_transpose_24/kernel/vAdam/conv2d_transpose_24/bias/v!Adam/conv2d_transpose_25/kernel/vAdam/conv2d_transpose_25/bias/v*W
TinP
N2L*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_250365??
?
c
*__inference_dropout_2_layer_call_fn_249216

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_248052p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_248833

inputsB
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource:B
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: B
(conv2d_19_conv2d_readvariableop_resource: @7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
?T?6
'dense_2_biasadd_readvariableop_resource:	?W
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_20_biasadd_readvariableop_resource:@V
<conv2d_transpose_21_conv2d_transpose_readvariableop_resource:@@A
3conv2d_transpose_21_biasadd_readvariableop_resource:@V
<conv2d_transpose_22_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_22_biasadd_readvariableop_resource: V
<conv2d_transpose_23_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_23_biasadd_readvariableop_resource:V
<conv2d_transpose_24_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_24_biasadd_readvariableop_resource:V
<conv2d_transpose_25_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_25_biasadd_readvariableop_resource:
identity?? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp?*conv2d_transpose_20/BiasAdd/ReadVariableOp?3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?*conv2d_transpose_21/BiasAdd/ReadVariableOp?3conv2d_transpose_21/conv2d_transpose/ReadVariableOp?*conv2d_transpose_22/BiasAdd/ReadVariableOp?3conv2d_transpose_22/conv2d_transpose/ReadVariableOp?*conv2d_transpose_23/BiasAdd/ReadVariableOp?3conv2d_transpose_23/conv2d_transpose/ReadVariableOp?*conv2d_transpose_24/BiasAdd/ReadVariableOp?3conv2d_transpose_24/conv2d_transpose/ReadVariableOp?*conv2d_transpose_25/BiasAdd/ReadVariableOp?3conv2d_transpose_25/conv2d_transpose/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~r
conv2d_17/SigmoidSigmoidconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
max_pooling2d_9/MaxPoolMaxPoolconv2d_17/Sigmoid:y:0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_18/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== r
conv2d_18/SigmoidSigmoidconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????== ?
max_pooling2d_10/MaxPoolMaxPoolconv2d_18/Sigmoid:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_19/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@r
conv2d_19/SigmoidSigmoidconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_20/Conv2DConv2Dconv2d_19/Sigmoid:y:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@r
conv2d_20/SigmoidSigmoidconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_11/MaxPoolMaxPoolconv2d_20/Sigmoid:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@*  ?
flatten_2/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????T?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
?T?*
dtype0?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????f
dropout_2/IdentityIdentitydense_2/Sigmoid:y:0*
T0*(
_output_shapes
:??????????Z
reshape_2/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape_2/ReshapeReshapedropout_2/Identity:output:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????g
up_sampling2d_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_18/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_18/mulMulup_sampling2d_18/Const:output:0!up_sampling2d_18/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_18/resize/ResizeNearestNeighborResizeNearestNeighborreshape_2/Reshape:output:0up_sampling2d_18/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(?
conv2d_transpose_20/ShapeShape>up_sampling2d_18/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_18/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
*conv2d_transpose_20/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_transpose_20/BiasAddBiasAdd-conv2d_transpose_20/conv2d_transpose:output:02conv2d_transpose_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
conv2d_transpose_20/SigmoidSigmoid$conv2d_transpose_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@h
conv2d_transpose_21/ShapeShapeconv2d_transpose_20/Sigmoid:y:0*
T0*
_output_shapes
:q
'conv2d_transpose_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_21/strided_sliceStridedSlice"conv2d_transpose_21/Shape:output:00conv2d_transpose_21/strided_slice/stack:output:02conv2d_transpose_21/strided_slice/stack_1:output:02conv2d_transpose_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_21/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_21/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_21/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_21/stackPack*conv2d_transpose_21/strided_slice:output:0$conv2d_transpose_21/stack/1:output:0$conv2d_transpose_21/stack/2:output:0$conv2d_transpose_21/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_21/strided_slice_1StridedSlice"conv2d_transpose_21/stack:output:02conv2d_transpose_21/strided_slice_1/stack:output:04conv2d_transpose_21/strided_slice_1/stack_1:output:04conv2d_transpose_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_21/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_21_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
$conv2d_transpose_21/conv2d_transposeConv2DBackpropInput"conv2d_transpose_21/stack:output:0;conv2d_transpose_21/conv2d_transpose/ReadVariableOp:value:0conv2d_transpose_20/Sigmoid:y:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
*conv2d_transpose_21/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_transpose_21/BiasAddBiasAdd-conv2d_transpose_21/conv2d_transpose:output:02conv2d_transpose_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
conv2d_transpose_21/SigmoidSigmoid$conv2d_transpose_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@g
up_sampling2d_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_19/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_19/mulMulup_sampling2d_19/Const:output:0!up_sampling2d_19/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_19/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_21/Sigmoid:y:0up_sampling2d_19/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(?
conv2d_transpose_22/ShapeShape>up_sampling2d_19/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_22/strided_sliceStridedSlice"conv2d_transpose_22/Shape:output:00conv2d_transpose_22/strided_slice/stack:output:02conv2d_transpose_22/strided_slice/stack_1:output:02conv2d_transpose_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_22/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_22/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_22/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_22/stackPack*conv2d_transpose_22/strided_slice:output:0$conv2d_transpose_22/stack/1:output:0$conv2d_transpose_22/stack/2:output:0$conv2d_transpose_22/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_22/strided_slice_1StridedSlice"conv2d_transpose_22/stack:output:02conv2d_transpose_22/strided_slice_1/stack:output:04conv2d_transpose_22/strided_slice_1/stack_1:output:04conv2d_transpose_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_22/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_22_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
$conv2d_transpose_22/conv2d_transposeConv2DBackpropInput"conv2d_transpose_22/stack:output:0;conv2d_transpose_22/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_19/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
*conv2d_transpose_22/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_transpose_22/BiasAddBiasAdd-conv2d_transpose_22/conv2d_transpose:output:02conv2d_transpose_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
conv2d_transpose_22/SigmoidSigmoid$conv2d_transpose_22/BiasAdd:output:0*
T0*/
_output_shapes
:????????? g
up_sampling2d_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_20/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_20/mulMulup_sampling2d_20/Const:output:0!up_sampling2d_20/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_20/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_22/Sigmoid:y:0up_sampling2d_20/mul:z:0*
T0*/
_output_shapes
:????????? *
half_pixel_centers(?
conv2d_transpose_23/ShapeShape>up_sampling2d_20/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_23/strided_sliceStridedSlice"conv2d_transpose_23/Shape:output:00conv2d_transpose_23/strided_slice/stack:output:02conv2d_transpose_23/strided_slice/stack_1:output:02conv2d_transpose_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_23/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_23/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_23/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_23/stackPack*conv2d_transpose_23/strided_slice:output:0$conv2d_transpose_23/stack/1:output:0$conv2d_transpose_23/stack/2:output:0$conv2d_transpose_23/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_23/strided_slice_1StridedSlice"conv2d_transpose_23/stack:output:02conv2d_transpose_23/strided_slice_1/stack:output:04conv2d_transpose_23/strided_slice_1/stack_1:output:04conv2d_transpose_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_23/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_23_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
$conv2d_transpose_23/conv2d_transposeConv2DBackpropInput"conv2d_transpose_23/stack:output:0;conv2d_transpose_23/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_20/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
?
*conv2d_transpose_23/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_23/BiasAddBiasAdd-conv2d_transpose_23/conv2d_transpose:output:02conv2d_transpose_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv2d_transpose_23/SigmoidSigmoid$conv2d_transpose_23/BiasAdd:output:0*
T0*/
_output_shapes
:?????????g
up_sampling2d_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_21/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_21/mulMulup_sampling2d_21/Const:output:0!up_sampling2d_21/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_21/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_23/Sigmoid:y:0up_sampling2d_21/mul:z:0*
T0*/
_output_shapes
:?????????<<*
half_pixel_centers(?
conv2d_transpose_24/ShapeShape>up_sampling2d_21/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_24/strided_sliceStridedSlice"conv2d_transpose_24/Shape:output:00conv2d_transpose_24/strided_slice/stack:output:02conv2d_transpose_24/strided_slice/stack_1:output:02conv2d_transpose_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_24/stack/1Const*
_output_shapes
: *
dtype0*
value	B :>]
conv2d_transpose_24/stack/2Const*
_output_shapes
: *
dtype0*
value	B :>]
conv2d_transpose_24/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_24/stackPack*conv2d_transpose_24/strided_slice:output:0$conv2d_transpose_24/stack/1:output:0$conv2d_transpose_24/stack/2:output:0$conv2d_transpose_24/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_24/strided_slice_1StridedSlice"conv2d_transpose_24/stack:output:02conv2d_transpose_24/strided_slice_1/stack:output:04conv2d_transpose_24/strided_slice_1/stack_1:output:04conv2d_transpose_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_24/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_24_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_24/conv2d_transposeConv2DBackpropInput"conv2d_transpose_24/stack:output:0;conv2d_transpose_24/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_21/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
?
*conv2d_transpose_24/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_24/BiasAddBiasAdd-conv2d_transpose_24/conv2d_transpose:output:02conv2d_transpose_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>?
conv2d_transpose_24/SigmoidSigmoid$conv2d_transpose_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????>>h
conv2d_transpose_25/ShapeShapeconv2d_transpose_24/Sigmoid:y:0*
T0*
_output_shapes
:q
'conv2d_transpose_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_25/strided_sliceStridedSlice"conv2d_transpose_25/Shape:output:00conv2d_transpose_25/strided_slice/stack:output:02conv2d_transpose_25/strided_slice/stack_1:output:02conv2d_transpose_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_25/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_25/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_25/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_25/stackPack*conv2d_transpose_25/strided_slice:output:0$conv2d_transpose_25/stack/1:output:0$conv2d_transpose_25/stack/2:output:0$conv2d_transpose_25/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_25/strided_slice_1StridedSlice"conv2d_transpose_25/stack:output:02conv2d_transpose_25/strided_slice_1/stack:output:04conv2d_transpose_25/strided_slice_1/stack_1:output:04conv2d_transpose_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_25/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_25_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_25/conv2d_transposeConv2DBackpropInput"conv2d_transpose_25/stack:output:0;conv2d_transpose_25/conv2d_transpose/ReadVariableOp:value:0conv2d_transpose_24/Sigmoid:y:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
?
*conv2d_transpose_25/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_25/BiasAddBiasAdd-conv2d_transpose_25/conv2d_transpose:output:02conv2d_transpose_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
conv2d_transpose_25/SigmoidSigmoid$conv2d_transpose_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@g
up_sampling2d_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   i
up_sampling2d_22/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_22/mulMulup_sampling2d_22/Const:output:0!up_sampling2d_22/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_22/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_25/Sigmoid:y:0up_sampling2d_22/mul:z:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(?
IdentityIdentity>up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp+^conv2d_transpose_20/BiasAdd/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp+^conv2d_transpose_21/BiasAdd/ReadVariableOp4^conv2d_transpose_21/conv2d_transpose/ReadVariableOp+^conv2d_transpose_22/BiasAdd/ReadVariableOp4^conv2d_transpose_22/conv2d_transpose/ReadVariableOp+^conv2d_transpose_23/BiasAdd/ReadVariableOp4^conv2d_transpose_23/conv2d_transpose/ReadVariableOp+^conv2d_transpose_24/BiasAdd/ReadVariableOp4^conv2d_transpose_24/conv2d_transpose/ReadVariableOp+^conv2d_transpose_25/BiasAdd/ReadVariableOp4^conv2d_transpose_25/conv2d_transpose/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2X
*conv2d_transpose_20/BiasAdd/ReadVariableOp*conv2d_transpose_20/BiasAdd/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_21/BiasAdd/ReadVariableOp*conv2d_transpose_21/BiasAdd/ReadVariableOp2j
3conv2d_transpose_21/conv2d_transpose/ReadVariableOp3conv2d_transpose_21/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_22/BiasAdd/ReadVariableOp*conv2d_transpose_22/BiasAdd/ReadVariableOp2j
3conv2d_transpose_22/conv2d_transpose/ReadVariableOp3conv2d_transpose_22/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_23/BiasAdd/ReadVariableOp*conv2d_transpose_23/BiasAdd/ReadVariableOp2j
3conv2d_transpose_23/conv2d_transpose/ReadVariableOp3conv2d_transpose_23/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_24/BiasAdd/ReadVariableOp*conv2d_transpose_24/BiasAdd/ReadVariableOp2j
3conv2d_transpose_24/conv2d_transpose/ReadVariableOp3conv2d_transpose_24/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_25/BiasAdd/ReadVariableOp*conv2d_transpose_25/BiasAdd/ReadVariableOp2j
3conv2d_transpose_25/conv2d_transpose/ReadVariableOp3conv2d_transpose_25/conv2d_transpose/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_247580

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????== b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????== w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_249418

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247712

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_23_layer_call_fn_249600

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247817w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_249035

inputsB
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource:B
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: B
(conv2d_19_conv2d_readvariableop_resource: @7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
?T?6
'dense_2_biasadd_readvariableop_resource:	?W
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_20_biasadd_readvariableop_resource:@V
<conv2d_transpose_21_conv2d_transpose_readvariableop_resource:@@A
3conv2d_transpose_21_biasadd_readvariableop_resource:@V
<conv2d_transpose_22_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_22_biasadd_readvariableop_resource: V
<conv2d_transpose_23_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_23_biasadd_readvariableop_resource:V
<conv2d_transpose_24_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_24_biasadd_readvariableop_resource:V
<conv2d_transpose_25_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_25_biasadd_readvariableop_resource:
identity?? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp?*conv2d_transpose_20/BiasAdd/ReadVariableOp?3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?*conv2d_transpose_21/BiasAdd/ReadVariableOp?3conv2d_transpose_21/conv2d_transpose/ReadVariableOp?*conv2d_transpose_22/BiasAdd/ReadVariableOp?3conv2d_transpose_22/conv2d_transpose/ReadVariableOp?*conv2d_transpose_23/BiasAdd/ReadVariableOp?3conv2d_transpose_23/conv2d_transpose/ReadVariableOp?*conv2d_transpose_24/BiasAdd/ReadVariableOp?3conv2d_transpose_24/conv2d_transpose/ReadVariableOp?*conv2d_transpose_25/BiasAdd/ReadVariableOp?3conv2d_transpose_25/conv2d_transpose/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~r
conv2d_17/SigmoidSigmoidconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
max_pooling2d_9/MaxPoolMaxPoolconv2d_17/Sigmoid:y:0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_18/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== r
conv2d_18/SigmoidSigmoidconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????== ?
max_pooling2d_10/MaxPoolMaxPoolconv2d_18/Sigmoid:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_19/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@r
conv2d_19/SigmoidSigmoidconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_20/Conv2DConv2Dconv2d_19/Sigmoid:y:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@r
conv2d_20/SigmoidSigmoidconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_11/MaxPoolMaxPoolconv2d_20/Sigmoid:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@*  ?
flatten_2/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????T?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
?T?*
dtype0?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_2/dropout/MulMuldense_2/Sigmoid:y:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:??????????Z
dropout_2/dropout/ShapeShapedense_2/Sigmoid:y:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
reshape_2/ShapeShapedropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape_2/ReshapeReshapedropout_2/dropout/Mul_1:z:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????g
up_sampling2d_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_18/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_18/mulMulup_sampling2d_18/Const:output:0!up_sampling2d_18/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_18/resize/ResizeNearestNeighborResizeNearestNeighborreshape_2/Reshape:output:0up_sampling2d_18/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(?
conv2d_transpose_20/ShapeShape>up_sampling2d_18/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_18/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
*conv2d_transpose_20/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_transpose_20/BiasAddBiasAdd-conv2d_transpose_20/conv2d_transpose:output:02conv2d_transpose_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
conv2d_transpose_20/SigmoidSigmoid$conv2d_transpose_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@h
conv2d_transpose_21/ShapeShapeconv2d_transpose_20/Sigmoid:y:0*
T0*
_output_shapes
:q
'conv2d_transpose_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_21/strided_sliceStridedSlice"conv2d_transpose_21/Shape:output:00conv2d_transpose_21/strided_slice/stack:output:02conv2d_transpose_21/strided_slice/stack_1:output:02conv2d_transpose_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_21/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_21/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_21/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_21/stackPack*conv2d_transpose_21/strided_slice:output:0$conv2d_transpose_21/stack/1:output:0$conv2d_transpose_21/stack/2:output:0$conv2d_transpose_21/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_21/strided_slice_1StridedSlice"conv2d_transpose_21/stack:output:02conv2d_transpose_21/strided_slice_1/stack:output:04conv2d_transpose_21/strided_slice_1/stack_1:output:04conv2d_transpose_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_21/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_21_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
$conv2d_transpose_21/conv2d_transposeConv2DBackpropInput"conv2d_transpose_21/stack:output:0;conv2d_transpose_21/conv2d_transpose/ReadVariableOp:value:0conv2d_transpose_20/Sigmoid:y:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
*conv2d_transpose_21/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_transpose_21/BiasAddBiasAdd-conv2d_transpose_21/conv2d_transpose:output:02conv2d_transpose_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
conv2d_transpose_21/SigmoidSigmoid$conv2d_transpose_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@g
up_sampling2d_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_19/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_19/mulMulup_sampling2d_19/Const:output:0!up_sampling2d_19/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_19/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_21/Sigmoid:y:0up_sampling2d_19/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(?
conv2d_transpose_22/ShapeShape>up_sampling2d_19/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_22/strided_sliceStridedSlice"conv2d_transpose_22/Shape:output:00conv2d_transpose_22/strided_slice/stack:output:02conv2d_transpose_22/strided_slice/stack_1:output:02conv2d_transpose_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_22/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_22/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_22/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_22/stackPack*conv2d_transpose_22/strided_slice:output:0$conv2d_transpose_22/stack/1:output:0$conv2d_transpose_22/stack/2:output:0$conv2d_transpose_22/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_22/strided_slice_1StridedSlice"conv2d_transpose_22/stack:output:02conv2d_transpose_22/strided_slice_1/stack:output:04conv2d_transpose_22/strided_slice_1/stack_1:output:04conv2d_transpose_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_22/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_22_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
$conv2d_transpose_22/conv2d_transposeConv2DBackpropInput"conv2d_transpose_22/stack:output:0;conv2d_transpose_22/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_19/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
*conv2d_transpose_22/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_transpose_22/BiasAddBiasAdd-conv2d_transpose_22/conv2d_transpose:output:02conv2d_transpose_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
conv2d_transpose_22/SigmoidSigmoid$conv2d_transpose_22/BiasAdd:output:0*
T0*/
_output_shapes
:????????? g
up_sampling2d_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_20/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_20/mulMulup_sampling2d_20/Const:output:0!up_sampling2d_20/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_20/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_22/Sigmoid:y:0up_sampling2d_20/mul:z:0*
T0*/
_output_shapes
:????????? *
half_pixel_centers(?
conv2d_transpose_23/ShapeShape>up_sampling2d_20/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_23/strided_sliceStridedSlice"conv2d_transpose_23/Shape:output:00conv2d_transpose_23/strided_slice/stack:output:02conv2d_transpose_23/strided_slice/stack_1:output:02conv2d_transpose_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_23/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_23/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_23/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_23/stackPack*conv2d_transpose_23/strided_slice:output:0$conv2d_transpose_23/stack/1:output:0$conv2d_transpose_23/stack/2:output:0$conv2d_transpose_23/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_23/strided_slice_1StridedSlice"conv2d_transpose_23/stack:output:02conv2d_transpose_23/strided_slice_1/stack:output:04conv2d_transpose_23/strided_slice_1/stack_1:output:04conv2d_transpose_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_23/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_23_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
$conv2d_transpose_23/conv2d_transposeConv2DBackpropInput"conv2d_transpose_23/stack:output:0;conv2d_transpose_23/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_20/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
?
*conv2d_transpose_23/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_23/BiasAddBiasAdd-conv2d_transpose_23/conv2d_transpose:output:02conv2d_transpose_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv2d_transpose_23/SigmoidSigmoid$conv2d_transpose_23/BiasAdd:output:0*
T0*/
_output_shapes
:?????????g
up_sampling2d_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_21/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_21/mulMulup_sampling2d_21/Const:output:0!up_sampling2d_21/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_21/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_23/Sigmoid:y:0up_sampling2d_21/mul:z:0*
T0*/
_output_shapes
:?????????<<*
half_pixel_centers(?
conv2d_transpose_24/ShapeShape>up_sampling2d_21/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:q
'conv2d_transpose_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_24/strided_sliceStridedSlice"conv2d_transpose_24/Shape:output:00conv2d_transpose_24/strided_slice/stack:output:02conv2d_transpose_24/strided_slice/stack_1:output:02conv2d_transpose_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_24/stack/1Const*
_output_shapes
: *
dtype0*
value	B :>]
conv2d_transpose_24/stack/2Const*
_output_shapes
: *
dtype0*
value	B :>]
conv2d_transpose_24/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_24/stackPack*conv2d_transpose_24/strided_slice:output:0$conv2d_transpose_24/stack/1:output:0$conv2d_transpose_24/stack/2:output:0$conv2d_transpose_24/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_24/strided_slice_1StridedSlice"conv2d_transpose_24/stack:output:02conv2d_transpose_24/strided_slice_1/stack:output:04conv2d_transpose_24/strided_slice_1/stack_1:output:04conv2d_transpose_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_24/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_24_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_24/conv2d_transposeConv2DBackpropInput"conv2d_transpose_24/stack:output:0;conv2d_transpose_24/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_21/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
?
*conv2d_transpose_24/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_24/BiasAddBiasAdd-conv2d_transpose_24/conv2d_transpose:output:02conv2d_transpose_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>?
conv2d_transpose_24/SigmoidSigmoid$conv2d_transpose_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????>>h
conv2d_transpose_25/ShapeShapeconv2d_transpose_24/Sigmoid:y:0*
T0*
_output_shapes
:q
'conv2d_transpose_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_25/strided_sliceStridedSlice"conv2d_transpose_25/Shape:output:00conv2d_transpose_25/strided_slice/stack:output:02conv2d_transpose_25/strided_slice/stack_1:output:02conv2d_transpose_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_25/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_25/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_25/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_25/stackPack*conv2d_transpose_25/strided_slice:output:0$conv2d_transpose_25/stack/1:output:0$conv2d_transpose_25/stack/2:output:0$conv2d_transpose_25/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_25/strided_slice_1StridedSlice"conv2d_transpose_25/stack:output:02conv2d_transpose_25/strided_slice_1/stack:output:04conv2d_transpose_25/strided_slice_1/stack_1:output:04conv2d_transpose_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_25/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_25_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_25/conv2d_transposeConv2DBackpropInput"conv2d_transpose_25/stack:output:0;conv2d_transpose_25/conv2d_transpose/ReadVariableOp:value:0conv2d_transpose_24/Sigmoid:y:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
?
*conv2d_transpose_25/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_25/BiasAddBiasAdd-conv2d_transpose_25/conv2d_transpose:output:02conv2d_transpose_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
conv2d_transpose_25/SigmoidSigmoid$conv2d_transpose_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@g
up_sampling2d_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   i
up_sampling2d_22/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
up_sampling2d_22/mulMulup_sampling2d_22/Const:output:0!up_sampling2d_22/Const_1:output:0*
T0*
_output_shapes
:?
-up_sampling2d_22/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_transpose_25/Sigmoid:y:0up_sampling2d_22/mul:z:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(?
IdentityIdentity>up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp+^conv2d_transpose_20/BiasAdd/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp+^conv2d_transpose_21/BiasAdd/ReadVariableOp4^conv2d_transpose_21/conv2d_transpose/ReadVariableOp+^conv2d_transpose_22/BiasAdd/ReadVariableOp4^conv2d_transpose_22/conv2d_transpose/ReadVariableOp+^conv2d_transpose_23/BiasAdd/ReadVariableOp4^conv2d_transpose_23/conv2d_transpose/ReadVariableOp+^conv2d_transpose_24/BiasAdd/ReadVariableOp4^conv2d_transpose_24/conv2d_transpose/ReadVariableOp+^conv2d_transpose_25/BiasAdd/ReadVariableOp4^conv2d_transpose_25/conv2d_transpose/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2X
*conv2d_transpose_20/BiasAdd/ReadVariableOp*conv2d_transpose_20/BiasAdd/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_21/BiasAdd/ReadVariableOp*conv2d_transpose_21/BiasAdd/ReadVariableOp2j
3conv2d_transpose_21/conv2d_transpose/ReadVariableOp3conv2d_transpose_21/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_22/BiasAdd/ReadVariableOp*conv2d_transpose_22/BiasAdd/ReadVariableOp2j
3conv2d_transpose_22/conv2d_transpose/ReadVariableOp3conv2d_transpose_22/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_23/BiasAdd/ReadVariableOp*conv2d_transpose_23/BiasAdd/ReadVariableOp2j
3conv2d_transpose_23/conv2d_transpose/ReadVariableOp3conv2d_transpose_23/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_24/BiasAdd/ReadVariableOp*conv2d_transpose_24/BiasAdd/ReadVariableOp2j
3conv2d_transpose_24/conv2d_transpose/ReadVariableOp3conv2d_transpose_24/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_25/BiasAdd/ReadVariableOp*conv2d_transpose_25/BiasAdd/ReadVariableOp2j
3conv2d_transpose_25/conv2d_transpose/ReadVariableOp3conv2d_transpose_25/conv2d_transpose/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_20_layer_call_and_return_conditional_losses_249155

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
F
*__inference_reshape_2_layer_call_fn_249238

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_247678i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_249115

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????== :W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
?
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_249252

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_249186

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@*  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????TY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????T"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_19_layer_call_fn_249452

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247754h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_247678

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_20_layer_call_fn_249300

inputs"
unknown:@?
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247712w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_249175

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247328

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_11_layer_call_fn_249160

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247147?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_249528

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_11_layer_call_fn_249165

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247630h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_247557

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????~~b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????~~w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_249075

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247779

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:????????? b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_249882

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_25_layer_call_fn_249790

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247884w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_249070

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_249110

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_22_layer_call_fn_249490

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247779w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_249684

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?`
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_247900

inputs*
conv2d_17_247558:
conv2d_17_247560:*
conv2d_18_247581: 
conv2d_18_247583: *
conv2d_19_247604: @
conv2d_19_247606:@*
conv2d_20_247621:@@
conv2d_20_247623:@"
dense_2_247652:
?T?
dense_2_247654:	?5
conv2d_transpose_20_247713:@?(
conv2d_transpose_20_247715:@4
conv2d_transpose_21_247742:@@(
conv2d_transpose_21_247744:@4
conv2d_transpose_22_247780: @(
conv2d_transpose_22_247782: 4
conv2d_transpose_23_247818: (
conv2d_transpose_23_247820:4
conv2d_transpose_24_247856:(
conv2d_transpose_24_247858:4
conv2d_transpose_25_247885:(
conv2d_transpose_25_247887:
identity??!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall?+conv2d_transpose_21/StatefulPartitionedCall?+conv2d_transpose_22/StatefulPartitionedCall?+conv2d_transpose_23/StatefulPartitionedCall?+conv2d_transpose_24/StatefulPartitionedCall?+conv2d_transpose_25/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17_247558conv2d_17_247560*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_247557?
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247567?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_18_247581conv2d_18_247583*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_247580?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247590?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_19_247604conv2d_19_247606*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_247603?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_247621conv2d_20_247623*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_247620?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247630?
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_247638?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_247652dense_2_247654*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_247651?
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_247662?
reshape_2/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_247678?
 up_sampling2d_18/PartitionedCallPartitionedCall"reshape_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247687?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_18/PartitionedCall:output:0conv2d_transpose_20_247713conv2d_transpose_20_247715*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247712?
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0conv2d_transpose_21_247742conv2d_transpose_21_247744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247741?
 up_sampling2d_19/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247754?
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_19/PartitionedCall:output:0conv2d_transpose_22_247780conv2d_transpose_22_247782*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247779?
 up_sampling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247792?
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_20/PartitionedCall:output:0conv2d_transpose_23_247818conv2d_transpose_23_247820*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247817?
 up_sampling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247830?
+conv2d_transpose_24/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_21/PartitionedCall:output:0conv2d_transpose_24_247856conv2d_transpose_24_247858*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247855?
+conv2d_transpose_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_24/StatefulPartitionedCall:output:0conv2d_transpose_25_247885conv2d_transpose_25_247887*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247884?
 up_sampling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247897?
IdentityIdentity)up_sampling2d_22/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall,^conv2d_transpose_24/StatefulPartitionedCall,^conv2d_transpose_25/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall2Z
+conv2d_transpose_24/StatefulPartitionedCall+conv2d_transpose_24/StatefulPartitionedCall2Z
+conv2d_transpose_25/StatefulPartitionedCall+conv2d_transpose_25/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247855

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :>I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :>I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????>>b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????>>?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????<<
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_249638

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247464

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247513

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_22_layer_call_fn_249862

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247897j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_249852

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_9_layer_call_fn_249065

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247567h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247630

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_249662

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_conv2d_17_layer_call_fn_249044

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_247557w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????~~`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_247662

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_249274

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_2_layer_call_fn_247947
conv2d_17_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
?T?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_247900y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_17_input
?
L
0__inference_max_pooling2d_9_layer_call_fn_249060

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247123?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247211

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_249748

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_20_layer_call_fn_249557

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247351?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_249772

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :>I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :>I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????>>b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????>>?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????<<
 
_user_specified_nameinputs
?
?
-__inference_sequential_2_layer_call_fn_248638

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
?T?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_248247y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_19_layer_call_and_return_conditional_losses_249135

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247754

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247817

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_2_layer_call_fn_249211

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_247662a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_21_layer_call_fn_249371

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247260?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
*__inference_conv2d_18_layer_call_fn_249084

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_247580w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????== `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247260

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247741

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247536

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_10_layer_call_fn_249100

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247135?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?a
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_248483
conv2d_17_input*
conv2d_17_248416:
conv2d_17_248418:*
conv2d_18_248422: 
conv2d_18_248424: *
conv2d_19_248428: @
conv2d_19_248430:@*
conv2d_20_248433:@@
conv2d_20_248435:@"
dense_2_248440:
?T?
dense_2_248442:	?5
conv2d_transpose_20_248448:@?(
conv2d_transpose_20_248450:@4
conv2d_transpose_21_248453:@@(
conv2d_transpose_21_248455:@4
conv2d_transpose_22_248459: @(
conv2d_transpose_22_248461: 4
conv2d_transpose_23_248465: (
conv2d_transpose_23_248467:4
conv2d_transpose_24_248471:(
conv2d_transpose_24_248473:4
conv2d_transpose_25_248476:(
conv2d_transpose_25_248478:
identity??!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall?+conv2d_transpose_21/StatefulPartitionedCall?+conv2d_transpose_22/StatefulPartitionedCall?+conv2d_transpose_23/StatefulPartitionedCall?+conv2d_transpose_24/StatefulPartitionedCall?+conv2d_transpose_25/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputconv2d_17_248416conv2d_17_248418*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_247557?
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247567?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_18_248422conv2d_18_248424*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_247580?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247590?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_19_248428conv2d_19_248430*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_247603?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_248433conv2d_20_248435*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_247620?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247630?
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_247638?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_248440dense_2_248442*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_247651?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_248052?
reshape_2/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_247678?
 up_sampling2d_18/PartitionedCallPartitionedCall"reshape_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247687?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_18/PartitionedCall:output:0conv2d_transpose_20_248448conv2d_transpose_20_248450*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247712?
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0conv2d_transpose_21_248453conv2d_transpose_21_248455*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247741?
 up_sampling2d_19/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247754?
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_19/PartitionedCall:output:0conv2d_transpose_22_248459conv2d_transpose_22_248461*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247779?
 up_sampling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247792?
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_20/PartitionedCall:output:0conv2d_transpose_23_248465conv2d_transpose_23_248467*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247817?
 up_sampling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247830?
+conv2d_transpose_24/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_21/PartitionedCall:output:0conv2d_transpose_24_248471conv2d_transpose_24_248473*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247855?
+conv2d_transpose_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_24/StatefulPartitionedCall:output:0conv2d_transpose_25_248476conv2d_transpose_25_248478*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247884?
 up_sampling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247897?
IdentityIdentity)up_sampling2d_22/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall,^conv2d_transpose_24/StatefulPartitionedCall,^conv2d_transpose_25/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall2Z
+conv2d_transpose_24/StatefulPartitionedCall+conv2d_transpose_24/StatefulPartitionedCall2Z
+conv2d_transpose_25/StatefulPartitionedCall+conv2d_transpose_25/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_17_input
?
?
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247884

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247590

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????== :W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_249170

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247166

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_21_layer_call_fn_249672

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247830h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_18_layer_call_fn_249262

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247687i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247135

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_249582

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:????????? *
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_249692

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:?????????<<*
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????<<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247830

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:?????????<<*
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????<<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_249282

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(~
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_25_layer_call_fn_249781

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247513?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_23_layer_call_fn_249591

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247396?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247567

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_24_layer_call_fn_249701

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247464?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_247638

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@*  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????TY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????T"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247897

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_19_layer_call_and_return_conditional_losses_247603

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_249442

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_249472

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?a
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_248247

inputs*
conv2d_17_248180:
conv2d_17_248182:*
conv2d_18_248186: 
conv2d_18_248188: *
conv2d_19_248192: @
conv2d_19_248194:@*
conv2d_20_248197:@@
conv2d_20_248199:@"
dense_2_248204:
?T?
dense_2_248206:	?5
conv2d_transpose_20_248212:@?(
conv2d_transpose_20_248214:@4
conv2d_transpose_21_248217:@@(
conv2d_transpose_21_248219:@4
conv2d_transpose_22_248223: @(
conv2d_transpose_22_248225: 4
conv2d_transpose_23_248229: (
conv2d_transpose_23_248231:4
conv2d_transpose_24_248235:(
conv2d_transpose_24_248237:4
conv2d_transpose_25_248240:(
conv2d_transpose_25_248242:
identity??!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall?+conv2d_transpose_21/StatefulPartitionedCall?+conv2d_transpose_22/StatefulPartitionedCall?+conv2d_transpose_23/StatefulPartitionedCall?+conv2d_transpose_24/StatefulPartitionedCall?+conv2d_transpose_25/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17_248180conv2d_17_248182*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_247557?
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247567?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_18_248186conv2d_18_248188*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_247580?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247590?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_19_248192conv2d_19_248194*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_247603?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_248197conv2d_20_248199*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_247620?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247630?
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_247638?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_248204dense_2_248206*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_247651?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_248052?
reshape_2/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_247678?
 up_sampling2d_18/PartitionedCallPartitionedCall"reshape_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247687?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_18/PartitionedCall:output:0conv2d_transpose_20_248212conv2d_transpose_20_248214*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247712?
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0conv2d_transpose_21_248217conv2d_transpose_21_248219*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247741?
 up_sampling2d_19/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247754?
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_19/PartitionedCall:output:0conv2d_transpose_22_248223conv2d_transpose_22_248225*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247779?
 up_sampling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247792?
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_20/PartitionedCall:output:0conv2d_transpose_23_248229conv2d_transpose_23_248231*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247817?
 up_sampling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247830?
+conv2d_transpose_24/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_21/PartitionedCall:output:0conv2d_transpose_24_248235conv2d_transpose_24_248237*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247855?
+conv2d_transpose_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_24/StatefulPartitionedCall:output:0conv2d_transpose_25_248240conv2d_transpose_25_248242*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247884?
 up_sampling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247897?
IdentityIdentity)up_sampling2d_22/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall,^conv2d_transpose_24/StatefulPartitionedCall,^conv2d_transpose_25/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall2Z
+conv2d_transpose_24/StatefulPartitionedCall+conv2d_transpose_24/StatefulPartitionedCall2Z
+conv2d_transpose_25/StatefulPartitionedCall+conv2d_transpose_25/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_249552

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:????????? b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_conv2d_20_layer_call_fn_249144

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_247620w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247419

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247283

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?#
?
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_249828

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_2_layer_call_fn_248589

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
?T?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_247900y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247351

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_249055

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????~~b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????~~w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?2
"__inference__traced_restore_250365
file_prefix;
!assignvariableop_conv2d_17_kernel:/
!assignvariableop_1_conv2d_17_bias:=
#assignvariableop_2_conv2d_18_kernel: /
!assignvariableop_3_conv2d_18_bias: =
#assignvariableop_4_conv2d_19_kernel: @/
!assignvariableop_5_conv2d_19_bias:@=
#assignvariableop_6_conv2d_20_kernel:@@/
!assignvariableop_7_conv2d_20_bias:@5
!assignvariableop_8_dense_2_kernel:
?T?.
assignvariableop_9_dense_2_bias:	?I
.assignvariableop_10_conv2d_transpose_20_kernel:@?:
,assignvariableop_11_conv2d_transpose_20_bias:@H
.assignvariableop_12_conv2d_transpose_21_kernel:@@:
,assignvariableop_13_conv2d_transpose_21_bias:@H
.assignvariableop_14_conv2d_transpose_22_kernel: @:
,assignvariableop_15_conv2d_transpose_22_bias: H
.assignvariableop_16_conv2d_transpose_23_kernel: :
,assignvariableop_17_conv2d_transpose_23_bias:H
.assignvariableop_18_conv2d_transpose_24_kernel::
,assignvariableop_19_conv2d_transpose_24_bias:H
.assignvariableop_20_conv2d_transpose_25_kernel::
,assignvariableop_21_conv2d_transpose_25_bias:'
assignvariableop_22_adam_iter:	 )
assignvariableop_23_adam_beta_1: )
assignvariableop_24_adam_beta_2: (
assignvariableop_25_adam_decay: 0
&assignvariableop_26_adam_learning_rate: #
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: E
+assignvariableop_31_adam_conv2d_17_kernel_m:7
)assignvariableop_32_adam_conv2d_17_bias_m:E
+assignvariableop_33_adam_conv2d_18_kernel_m: 7
)assignvariableop_34_adam_conv2d_18_bias_m: E
+assignvariableop_35_adam_conv2d_19_kernel_m: @7
)assignvariableop_36_adam_conv2d_19_bias_m:@E
+assignvariableop_37_adam_conv2d_20_kernel_m:@@7
)assignvariableop_38_adam_conv2d_20_bias_m:@=
)assignvariableop_39_adam_dense_2_kernel_m:
?T?6
'assignvariableop_40_adam_dense_2_bias_m:	?P
5assignvariableop_41_adam_conv2d_transpose_20_kernel_m:@?A
3assignvariableop_42_adam_conv2d_transpose_20_bias_m:@O
5assignvariableop_43_adam_conv2d_transpose_21_kernel_m:@@A
3assignvariableop_44_adam_conv2d_transpose_21_bias_m:@O
5assignvariableop_45_adam_conv2d_transpose_22_kernel_m: @A
3assignvariableop_46_adam_conv2d_transpose_22_bias_m: O
5assignvariableop_47_adam_conv2d_transpose_23_kernel_m: A
3assignvariableop_48_adam_conv2d_transpose_23_bias_m:O
5assignvariableop_49_adam_conv2d_transpose_24_kernel_m:A
3assignvariableop_50_adam_conv2d_transpose_24_bias_m:O
5assignvariableop_51_adam_conv2d_transpose_25_kernel_m:A
3assignvariableop_52_adam_conv2d_transpose_25_bias_m:E
+assignvariableop_53_adam_conv2d_17_kernel_v:7
)assignvariableop_54_adam_conv2d_17_bias_v:E
+assignvariableop_55_adam_conv2d_18_kernel_v: 7
)assignvariableop_56_adam_conv2d_18_bias_v: E
+assignvariableop_57_adam_conv2d_19_kernel_v: @7
)assignvariableop_58_adam_conv2d_19_bias_v:@E
+assignvariableop_59_adam_conv2d_20_kernel_v:@@7
)assignvariableop_60_adam_conv2d_20_bias_v:@=
)assignvariableop_61_adam_dense_2_kernel_v:
?T?6
'assignvariableop_62_adam_dense_2_bias_v:	?P
5assignvariableop_63_adam_conv2d_transpose_20_kernel_v:@?A
3assignvariableop_64_adam_conv2d_transpose_20_bias_v:@O
5assignvariableop_65_adam_conv2d_transpose_21_kernel_v:@@A
3assignvariableop_66_adam_conv2d_transpose_21_bias_v:@O
5assignvariableop_67_adam_conv2d_transpose_22_kernel_v: @A
3assignvariableop_68_adam_conv2d_transpose_22_bias_v: O
5assignvariableop_69_adam_conv2d_transpose_23_kernel_v: A
3assignvariableop_70_adam_conv2d_transpose_23_bias_v:O
5assignvariableop_71_adam_conv2d_transpose_24_kernel_v:A
3assignvariableop_72_adam_conv2d_transpose_24_bias_v:O
5assignvariableop_73_adam_conv2d_transpose_25_kernel_v:A
3assignvariableop_74_adam_conv2d_transpose_25_bias_v:
identity_76??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_8?AssignVariableOp_9?*
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?)
value?)B?)LB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_18_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_18_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_19_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_19_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_20_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_20_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_20_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp,assignvariableop_11_conv2d_transpose_20_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp.assignvariableop_12_conv2d_transpose_21_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp,assignvariableop_13_conv2d_transpose_21_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp.assignvariableop_14_conv2d_transpose_22_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp,assignvariableop_15_conv2d_transpose_22_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp.assignvariableop_16_conv2d_transpose_23_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp,assignvariableop_17_conv2d_transpose_23_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp.assignvariableop_18_conv2d_transpose_24_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_conv2d_transpose_24_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_conv2d_transpose_25_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_conv2d_transpose_25_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_17_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_17_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_18_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_18_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_19_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_19_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_20_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_20_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_2_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_2_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_conv2d_transpose_20_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp3assignvariableop_42_adam_conv2d_transpose_20_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_conv2d_transpose_21_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp3assignvariableop_44_adam_conv2d_transpose_21_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_conv2d_transpose_22_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp3assignvariableop_46_adam_conv2d_transpose_22_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp5assignvariableop_47_adam_conv2d_transpose_23_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp3assignvariableop_48_adam_conv2d_transpose_23_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_conv2d_transpose_24_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp3assignvariableop_50_adam_conv2d_transpose_24_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp5assignvariableop_51_adam_conv2d_transpose_25_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp3assignvariableop_52_adam_conv2d_transpose_25_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_17_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_17_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_18_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_18_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_conv2d_19_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_conv2d_19_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_20_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_20_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_2_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_2_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp5assignvariableop_63_adam_conv2d_transpose_20_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp3assignvariableop_64_adam_conv2d_transpose_20_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_conv2d_transpose_21_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp3assignvariableop_66_adam_conv2d_transpose_21_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp5assignvariableop_67_adam_conv2d_transpose_22_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp3assignvariableop_68_adam_conv2d_transpose_22_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp5assignvariableop_69_adam_conv2d_transpose_23_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOp3assignvariableop_70_adam_conv2d_transpose_23_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp5assignvariableop_71_adam_conv2d_transpose_24_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp3assignvariableop_72_adam_conv2d_transpose_24_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp5assignvariableop_73_adam_conv2d_transpose_25_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp3assignvariableop_74_adam_conv2d_transpose_25_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_76Identity_76:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_249095

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????== b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????== w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_249362

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_249233

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_19_layer_call_fn_249447

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247283?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_19_layer_call_fn_249124

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_247603w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_21_layer_call_fn_249380

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247741w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_22_layer_call_fn_249857

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247536?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247123

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_247114
conv2d_17_inputO
5sequential_2_conv2d_17_conv2d_readvariableop_resource:D
6sequential_2_conv2d_17_biasadd_readvariableop_resource:O
5sequential_2_conv2d_18_conv2d_readvariableop_resource: D
6sequential_2_conv2d_18_biasadd_readvariableop_resource: O
5sequential_2_conv2d_19_conv2d_readvariableop_resource: @D
6sequential_2_conv2d_19_biasadd_readvariableop_resource:@O
5sequential_2_conv2d_20_conv2d_readvariableop_resource:@@D
6sequential_2_conv2d_20_biasadd_readvariableop_resource:@G
3sequential_2_dense_2_matmul_readvariableop_resource:
?T?C
4sequential_2_dense_2_biasadd_readvariableop_resource:	?d
Isequential_2_conv2d_transpose_20_conv2d_transpose_readvariableop_resource:@?N
@sequential_2_conv2d_transpose_20_biasadd_readvariableop_resource:@c
Isequential_2_conv2d_transpose_21_conv2d_transpose_readvariableop_resource:@@N
@sequential_2_conv2d_transpose_21_biasadd_readvariableop_resource:@c
Isequential_2_conv2d_transpose_22_conv2d_transpose_readvariableop_resource: @N
@sequential_2_conv2d_transpose_22_biasadd_readvariableop_resource: c
Isequential_2_conv2d_transpose_23_conv2d_transpose_readvariableop_resource: N
@sequential_2_conv2d_transpose_23_biasadd_readvariableop_resource:c
Isequential_2_conv2d_transpose_24_conv2d_transpose_readvariableop_resource:N
@sequential_2_conv2d_transpose_24_biasadd_readvariableop_resource:c
Isequential_2_conv2d_transpose_25_conv2d_transpose_readvariableop_resource:N
@sequential_2_conv2d_transpose_25_biasadd_readvariableop_resource:
identity??-sequential_2/conv2d_17/BiasAdd/ReadVariableOp?,sequential_2/conv2d_17/Conv2D/ReadVariableOp?-sequential_2/conv2d_18/BiasAdd/ReadVariableOp?,sequential_2/conv2d_18/Conv2D/ReadVariableOp?-sequential_2/conv2d_19/BiasAdd/ReadVariableOp?,sequential_2/conv2d_19/Conv2D/ReadVariableOp?-sequential_2/conv2d_20/BiasAdd/ReadVariableOp?,sequential_2/conv2d_20/Conv2D/ReadVariableOp?7sequential_2/conv2d_transpose_20/BiasAdd/ReadVariableOp?@sequential_2/conv2d_transpose_20/conv2d_transpose/ReadVariableOp?7sequential_2/conv2d_transpose_21/BiasAdd/ReadVariableOp?@sequential_2/conv2d_transpose_21/conv2d_transpose/ReadVariableOp?7sequential_2/conv2d_transpose_22/BiasAdd/ReadVariableOp?@sequential_2/conv2d_transpose_22/conv2d_transpose/ReadVariableOp?7sequential_2/conv2d_transpose_23/BiasAdd/ReadVariableOp?@sequential_2/conv2d_transpose_23/conv2d_transpose/ReadVariableOp?7sequential_2/conv2d_transpose_24/BiasAdd/ReadVariableOp?@sequential_2/conv2d_transpose_24/conv2d_transpose/ReadVariableOp?7sequential_2/conv2d_transpose_25/BiasAdd/ReadVariableOp?@sequential_2/conv2d_transpose_25/conv2d_transpose/ReadVariableOp?+sequential_2/dense_2/BiasAdd/ReadVariableOp?*sequential_2/dense_2/MatMul/ReadVariableOp?
,sequential_2/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_17/Conv2DConv2Dconv2d_17_input4sequential_2/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
?
-sequential_2/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_17/BiasAddBiasAdd&sequential_2/conv2d_17/Conv2D:output:05sequential_2/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~?
sequential_2/conv2d_17/SigmoidSigmoid'sequential_2/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~?
$sequential_2/max_pooling2d_9/MaxPoolMaxPool"sequential_2/conv2d_17/Sigmoid:y:0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
,sequential_2/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_2/conv2d_18/Conv2DConv2D-sequential_2/max_pooling2d_9/MaxPool:output:04sequential_2/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
?
-sequential_2/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_2/conv2d_18/BiasAddBiasAdd&sequential_2/conv2d_18/Conv2D:output:05sequential_2/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????== ?
sequential_2/conv2d_18/SigmoidSigmoid'sequential_2/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????== ?
%sequential_2/max_pooling2d_10/MaxPoolMaxPool"sequential_2/conv2d_18/Sigmoid:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
,sequential_2/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
sequential_2/conv2d_19/Conv2DConv2D.sequential_2/max_pooling2d_10/MaxPool:output:04sequential_2/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
-sequential_2/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_2/conv2d_19/BiasAddBiasAdd&sequential_2/conv2d_19/Conv2D:output:05sequential_2/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_2/conv2d_19/SigmoidSigmoid'sequential_2/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
,sequential_2/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
sequential_2/conv2d_20/Conv2DConv2D"sequential_2/conv2d_19/Sigmoid:y:04sequential_2/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
-sequential_2/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_2/conv2d_20/BiasAddBiasAdd&sequential_2/conv2d_20/Conv2D:output:05sequential_2/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_2/conv2d_20/SigmoidSigmoid'sequential_2/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
%sequential_2/max_pooling2d_11/MaxPoolMaxPool"sequential_2/conv2d_20/Sigmoid:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
m
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@*  ?
sequential_2/flatten_2/ReshapeReshape.sequential_2/max_pooling2d_11/MaxPool:output:0%sequential_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????T?
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
?T?*
dtype0?
sequential_2/dense_2/MatMulMatMul'sequential_2/flatten_2/Reshape:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
sequential_2/dense_2/SigmoidSigmoid%sequential_2/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
sequential_2/dropout_2/IdentityIdentity sequential_2/dense_2/Sigmoid:y:0*
T0*(
_output_shapes
:??????????t
sequential_2/reshape_2/ShapeShape(sequential_2/dropout_2/Identity:output:0*
T0*
_output_shapes
:t
*sequential_2/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_2/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_2/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_2/reshape_2/strided_sliceStridedSlice%sequential_2/reshape_2/Shape:output:03sequential_2/reshape_2/strided_slice/stack:output:05sequential_2/reshape_2/strided_slice/stack_1:output:05sequential_2/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_2/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_2/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :i
&sequential_2/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
$sequential_2/reshape_2/Reshape/shapePack-sequential_2/reshape_2/strided_slice:output:0/sequential_2/reshape_2/Reshape/shape/1:output:0/sequential_2/reshape_2/Reshape/shape/2:output:0/sequential_2/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
sequential_2/reshape_2/ReshapeReshape(sequential_2/dropout_2/Identity:output:0-sequential_2/reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????t
#sequential_2/up_sampling2d_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_2/up_sampling2d_18/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
!sequential_2/up_sampling2d_18/mulMul,sequential_2/up_sampling2d_18/Const:output:0.sequential_2/up_sampling2d_18/Const_1:output:0*
T0*
_output_shapes
:?
:sequential_2/up_sampling2d_18/resize/ResizeNearestNeighborResizeNearestNeighbor'sequential_2/reshape_2/Reshape:output:0%sequential_2/up_sampling2d_18/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(?
&sequential_2/conv2d_transpose_20/ShapeShapeKsequential_2/up_sampling2d_18/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:~
4sequential_2/conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6sequential_2/conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_2/conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.sequential_2/conv2d_transpose_20/strided_sliceStridedSlice/sequential_2/conv2d_transpose_20/Shape:output:0=sequential_2/conv2d_transpose_20/strided_slice/stack:output:0?sequential_2/conv2d_transpose_20/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_2/conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
&sequential_2/conv2d_transpose_20/stackPack7sequential_2/conv2d_transpose_20/strided_slice:output:01sequential_2/conv2d_transpose_20/stack/1:output:01sequential_2/conv2d_transpose_20/stack/2:output:01sequential_2/conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/conv2d_transpose_20/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_20/stack:output:0?sequential_2/conv2d_transpose_20/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_20/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential_2/conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_20_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
1sequential_2/conv2d_transpose_20/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_20/stack:output:0Hsequential_2/conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0Ksequential_2/up_sampling2d_18/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
7sequential_2/conv2d_transpose_20/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
(sequential_2/conv2d_transpose_20/BiasAddBiasAdd:sequential_2/conv2d_transpose_20/conv2d_transpose:output:0?sequential_2/conv2d_transpose_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
(sequential_2/conv2d_transpose_20/SigmoidSigmoid1sequential_2/conv2d_transpose_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
&sequential_2/conv2d_transpose_21/ShapeShape,sequential_2/conv2d_transpose_20/Sigmoid:y:0*
T0*
_output_shapes
:~
4sequential_2/conv2d_transpose_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6sequential_2/conv2d_transpose_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_2/conv2d_transpose_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.sequential_2/conv2d_transpose_21/strided_sliceStridedSlice/sequential_2/conv2d_transpose_21/Shape:output:0=sequential_2/conv2d_transpose_21/strided_slice/stack:output:0?sequential_2/conv2d_transpose_21/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_2/conv2d_transpose_21/stack/1Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_21/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_21/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
&sequential_2/conv2d_transpose_21/stackPack7sequential_2/conv2d_transpose_21/strided_slice:output:01sequential_2/conv2d_transpose_21/stack/1:output:01sequential_2/conv2d_transpose_21/stack/2:output:01sequential_2/conv2d_transpose_21/stack/3:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/conv2d_transpose_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/conv2d_transpose_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/conv2d_transpose_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/conv2d_transpose_21/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_21/stack:output:0?sequential_2/conv2d_transpose_21/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_21/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential_2/conv2d_transpose_21/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_21_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
1sequential_2/conv2d_transpose_21/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_21/stack:output:0Hsequential_2/conv2d_transpose_21/conv2d_transpose/ReadVariableOp:value:0,sequential_2/conv2d_transpose_20/Sigmoid:y:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
7sequential_2/conv2d_transpose_21/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
(sequential_2/conv2d_transpose_21/BiasAddBiasAdd:sequential_2/conv2d_transpose_21/conv2d_transpose:output:0?sequential_2/conv2d_transpose_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
(sequential_2/conv2d_transpose_21/SigmoidSigmoid1sequential_2/conv2d_transpose_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@t
#sequential_2/up_sampling2d_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_2/up_sampling2d_19/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
!sequential_2/up_sampling2d_19/mulMul,sequential_2/up_sampling2d_19/Const:output:0.sequential_2/up_sampling2d_19/Const_1:output:0*
T0*
_output_shapes
:?
:sequential_2/up_sampling2d_19/resize/ResizeNearestNeighborResizeNearestNeighbor,sequential_2/conv2d_transpose_21/Sigmoid:y:0%sequential_2/up_sampling2d_19/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(?
&sequential_2/conv2d_transpose_22/ShapeShapeKsequential_2/up_sampling2d_19/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:~
4sequential_2/conv2d_transpose_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6sequential_2/conv2d_transpose_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_2/conv2d_transpose_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.sequential_2/conv2d_transpose_22/strided_sliceStridedSlice/sequential_2/conv2d_transpose_22/Shape:output:0=sequential_2/conv2d_transpose_22/strided_slice/stack:output:0?sequential_2/conv2d_transpose_22/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_2/conv2d_transpose_22/stack/1Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_22/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_22/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
&sequential_2/conv2d_transpose_22/stackPack7sequential_2/conv2d_transpose_22/strided_slice:output:01sequential_2/conv2d_transpose_22/stack/1:output:01sequential_2/conv2d_transpose_22/stack/2:output:01sequential_2/conv2d_transpose_22/stack/3:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/conv2d_transpose_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/conv2d_transpose_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/conv2d_transpose_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/conv2d_transpose_22/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_22/stack:output:0?sequential_2/conv2d_transpose_22/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_22/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential_2/conv2d_transpose_22/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_22_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
1sequential_2/conv2d_transpose_22/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_22/stack:output:0Hsequential_2/conv2d_transpose_22/conv2d_transpose/ReadVariableOp:value:0Ksequential_2/up_sampling2d_19/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
7sequential_2/conv2d_transpose_22/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
(sequential_2/conv2d_transpose_22/BiasAddBiasAdd:sequential_2/conv2d_transpose_22/conv2d_transpose:output:0?sequential_2/conv2d_transpose_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
(sequential_2/conv2d_transpose_22/SigmoidSigmoid1sequential_2/conv2d_transpose_22/BiasAdd:output:0*
T0*/
_output_shapes
:????????? t
#sequential_2/up_sampling2d_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_2/up_sampling2d_20/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
!sequential_2/up_sampling2d_20/mulMul,sequential_2/up_sampling2d_20/Const:output:0.sequential_2/up_sampling2d_20/Const_1:output:0*
T0*
_output_shapes
:?
:sequential_2/up_sampling2d_20/resize/ResizeNearestNeighborResizeNearestNeighbor,sequential_2/conv2d_transpose_22/Sigmoid:y:0%sequential_2/up_sampling2d_20/mul:z:0*
T0*/
_output_shapes
:????????? *
half_pixel_centers(?
&sequential_2/conv2d_transpose_23/ShapeShapeKsequential_2/up_sampling2d_20/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:~
4sequential_2/conv2d_transpose_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6sequential_2/conv2d_transpose_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_2/conv2d_transpose_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.sequential_2/conv2d_transpose_23/strided_sliceStridedSlice/sequential_2/conv2d_transpose_23/Shape:output:0=sequential_2/conv2d_transpose_23/strided_slice/stack:output:0?sequential_2/conv2d_transpose_23/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_2/conv2d_transpose_23/stack/1Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_23/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_2/conv2d_transpose_23/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
&sequential_2/conv2d_transpose_23/stackPack7sequential_2/conv2d_transpose_23/strided_slice:output:01sequential_2/conv2d_transpose_23/stack/1:output:01sequential_2/conv2d_transpose_23/stack/2:output:01sequential_2/conv2d_transpose_23/stack/3:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/conv2d_transpose_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/conv2d_transpose_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/conv2d_transpose_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/conv2d_transpose_23/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_23/stack:output:0?sequential_2/conv2d_transpose_23/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_23/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential_2/conv2d_transpose_23/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_23_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
1sequential_2/conv2d_transpose_23/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_23/stack:output:0Hsequential_2/conv2d_transpose_23/conv2d_transpose/ReadVariableOp:value:0Ksequential_2/up_sampling2d_20/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
?
7sequential_2/conv2d_transpose_23/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
(sequential_2/conv2d_transpose_23/BiasAddBiasAdd:sequential_2/conv2d_transpose_23/conv2d_transpose:output:0?sequential_2/conv2d_transpose_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
(sequential_2/conv2d_transpose_23/SigmoidSigmoid1sequential_2/conv2d_transpose_23/BiasAdd:output:0*
T0*/
_output_shapes
:?????????t
#sequential_2/up_sampling2d_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_2/up_sampling2d_21/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
!sequential_2/up_sampling2d_21/mulMul,sequential_2/up_sampling2d_21/Const:output:0.sequential_2/up_sampling2d_21/Const_1:output:0*
T0*
_output_shapes
:?
:sequential_2/up_sampling2d_21/resize/ResizeNearestNeighborResizeNearestNeighbor,sequential_2/conv2d_transpose_23/Sigmoid:y:0%sequential_2/up_sampling2d_21/mul:z:0*
T0*/
_output_shapes
:?????????<<*
half_pixel_centers(?
&sequential_2/conv2d_transpose_24/ShapeShapeKsequential_2/up_sampling2d_21/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:~
4sequential_2/conv2d_transpose_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6sequential_2/conv2d_transpose_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_2/conv2d_transpose_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.sequential_2/conv2d_transpose_24/strided_sliceStridedSlice/sequential_2/conv2d_transpose_24/Shape:output:0=sequential_2/conv2d_transpose_24/strided_slice/stack:output:0?sequential_2/conv2d_transpose_24/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_2/conv2d_transpose_24/stack/1Const*
_output_shapes
: *
dtype0*
value	B :>j
(sequential_2/conv2d_transpose_24/stack/2Const*
_output_shapes
: *
dtype0*
value	B :>j
(sequential_2/conv2d_transpose_24/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
&sequential_2/conv2d_transpose_24/stackPack7sequential_2/conv2d_transpose_24/strided_slice:output:01sequential_2/conv2d_transpose_24/stack/1:output:01sequential_2/conv2d_transpose_24/stack/2:output:01sequential_2/conv2d_transpose_24/stack/3:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/conv2d_transpose_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/conv2d_transpose_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/conv2d_transpose_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/conv2d_transpose_24/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_24/stack:output:0?sequential_2/conv2d_transpose_24/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_24/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential_2/conv2d_transpose_24/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_24_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
1sequential_2/conv2d_transpose_24/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_24/stack:output:0Hsequential_2/conv2d_transpose_24/conv2d_transpose/ReadVariableOp:value:0Ksequential_2/up_sampling2d_21/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
?
7sequential_2/conv2d_transpose_24/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
(sequential_2/conv2d_transpose_24/BiasAddBiasAdd:sequential_2/conv2d_transpose_24/conv2d_transpose:output:0?sequential_2/conv2d_transpose_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>?
(sequential_2/conv2d_transpose_24/SigmoidSigmoid1sequential_2/conv2d_transpose_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????>>?
&sequential_2/conv2d_transpose_25/ShapeShape,sequential_2/conv2d_transpose_24/Sigmoid:y:0*
T0*
_output_shapes
:~
4sequential_2/conv2d_transpose_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6sequential_2/conv2d_transpose_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_2/conv2d_transpose_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.sequential_2/conv2d_transpose_25/strided_sliceStridedSlice/sequential_2/conv2d_transpose_25/Shape:output:0=sequential_2/conv2d_transpose_25/strided_slice/stack:output:0?sequential_2/conv2d_transpose_25/strided_slice/stack_1:output:0?sequential_2/conv2d_transpose_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_2/conv2d_transpose_25/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@j
(sequential_2/conv2d_transpose_25/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@j
(sequential_2/conv2d_transpose_25/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
&sequential_2/conv2d_transpose_25/stackPack7sequential_2/conv2d_transpose_25/strided_slice:output:01sequential_2/conv2d_transpose_25/stack/1:output:01sequential_2/conv2d_transpose_25/stack/2:output:01sequential_2/conv2d_transpose_25/stack/3:output:0*
N*
T0*
_output_shapes
:?
6sequential_2/conv2d_transpose_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sequential_2/conv2d_transpose_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential_2/conv2d_transpose_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sequential_2/conv2d_transpose_25/strided_slice_1StridedSlice/sequential_2/conv2d_transpose_25/stack:output:0?sequential_2/conv2d_transpose_25/strided_slice_1/stack:output:0Asequential_2/conv2d_transpose_25/strided_slice_1/stack_1:output:0Asequential_2/conv2d_transpose_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential_2/conv2d_transpose_25/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_2_conv2d_transpose_25_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
1sequential_2/conv2d_transpose_25/conv2d_transposeConv2DBackpropInput/sequential_2/conv2d_transpose_25/stack:output:0Hsequential_2/conv2d_transpose_25/conv2d_transpose/ReadVariableOp:value:0,sequential_2/conv2d_transpose_24/Sigmoid:y:0*
T0*/
_output_shapes
:?????????@@*
paddingVALID*
strides
?
7sequential_2/conv2d_transpose_25/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_conv2d_transpose_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
(sequential_2/conv2d_transpose_25/BiasAddBiasAdd:sequential_2/conv2d_transpose_25/conv2d_transpose:output:0?sequential_2/conv2d_transpose_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
(sequential_2/conv2d_transpose_25/SigmoidSigmoid1sequential_2/conv2d_transpose_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@t
#sequential_2/up_sampling2d_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   v
%sequential_2/up_sampling2d_22/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ?
!sequential_2/up_sampling2d_22/mulMul,sequential_2/up_sampling2d_22/Const:output:0.sequential_2/up_sampling2d_22/Const_1:output:0*
T0*
_output_shapes
:?
:sequential_2/up_sampling2d_22/resize/ResizeNearestNeighborResizeNearestNeighbor,sequential_2/conv2d_transpose_25/Sigmoid:y:0%sequential_2/up_sampling2d_22/mul:z:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(?
IdentityIdentityKsequential_2/up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:0^NoOp*
T0*1
_output_shapes
:????????????

NoOpNoOp.^sequential_2/conv2d_17/BiasAdd/ReadVariableOp-^sequential_2/conv2d_17/Conv2D/ReadVariableOp.^sequential_2/conv2d_18/BiasAdd/ReadVariableOp-^sequential_2/conv2d_18/Conv2D/ReadVariableOp.^sequential_2/conv2d_19/BiasAdd/ReadVariableOp-^sequential_2/conv2d_19/Conv2D/ReadVariableOp.^sequential_2/conv2d_20/BiasAdd/ReadVariableOp-^sequential_2/conv2d_20/Conv2D/ReadVariableOp8^sequential_2/conv2d_transpose_20/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_20/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_21/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_21/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_22/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_22/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_23/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_23/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_24/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_24/conv2d_transpose/ReadVariableOp8^sequential_2/conv2d_transpose_25/BiasAdd/ReadVariableOpA^sequential_2/conv2d_transpose_25/conv2d_transpose/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2^
-sequential_2/conv2d_17/BiasAdd/ReadVariableOp-sequential_2/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_17/Conv2D/ReadVariableOp,sequential_2/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_18/BiasAdd/ReadVariableOp-sequential_2/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_18/Conv2D/ReadVariableOp,sequential_2/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_19/BiasAdd/ReadVariableOp-sequential_2/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_19/Conv2D/ReadVariableOp,sequential_2/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_20/BiasAdd/ReadVariableOp-sequential_2/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_20/Conv2D/ReadVariableOp,sequential_2/conv2d_20/Conv2D/ReadVariableOp2r
7sequential_2/conv2d_transpose_20/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_20/BiasAdd/ReadVariableOp2?
@sequential_2/conv2d_transpose_20/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_20/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_21/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_21/BiasAdd/ReadVariableOp2?
@sequential_2/conv2d_transpose_21/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_21/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_22/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_22/BiasAdd/ReadVariableOp2?
@sequential_2/conv2d_transpose_22/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_22/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_23/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_23/BiasAdd/ReadVariableOp2?
@sequential_2/conv2d_transpose_23/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_23/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_24/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_24/BiasAdd/ReadVariableOp2?
@sequential_2/conv2d_transpose_24/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_24/conv2d_transpose/ReadVariableOp2r
7sequential_2/conv2d_transpose_25/BiasAdd/ReadVariableOp7sequential_2/conv2d_transpose_25/BiasAdd/ReadVariableOp2?
@sequential_2/conv2d_transpose_25/conv2d_transpose/ReadVariableOp@sequential_2/conv2d_transpose_25/conv2d_transpose/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_17_input
?#
?
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247396

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
E__inference_conv2d_20_layer_call_and_return_conditional_losses_247620

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????@b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
F
*__inference_flatten_2_layer_call_fn_249180

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_247638a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????T"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_10_layer_call_fn_249105

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247590h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????== :W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247792

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:????????? *
half_pixel_centers(}
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_248540
conv2d_17_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
?T?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_247114y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_17_input
?	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_248052

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_249574

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247147

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_2_layer_call_fn_248343
conv2d_17_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
?T?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_248247y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_17_input
?#
?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_249338

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_249464

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_2_layer_call_and_return_conditional_losses_247651

inputs2
matmul_readvariableop_resource:
?T?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?T?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????T
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247687

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"      X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Q
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(~
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
ט
?!
__inference__traced_save_250130
file_prefix/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop9
5savev2_conv2d_transpose_20_kernel_read_readvariableop7
3savev2_conv2d_transpose_20_bias_read_readvariableop9
5savev2_conv2d_transpose_21_kernel_read_readvariableop7
3savev2_conv2d_transpose_21_bias_read_readvariableop9
5savev2_conv2d_transpose_22_kernel_read_readvariableop7
3savev2_conv2d_transpose_22_bias_read_readvariableop9
5savev2_conv2d_transpose_23_kernel_read_readvariableop7
3savev2_conv2d_transpose_23_bias_read_readvariableop9
5savev2_conv2d_transpose_24_kernel_read_readvariableop7
3savev2_conv2d_transpose_24_bias_read_readvariableop9
5savev2_conv2d_transpose_25_kernel_read_readvariableop7
3savev2_conv2d_transpose_25_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_m_read_readvariableop4
0savev2_adam_conv2d_20_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_20_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_20_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_21_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_21_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_22_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_22_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_23_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_23_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_24_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_24_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_25_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_25_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_20_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_20_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_21_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_21_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_22_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_22_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_23_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_23_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_24_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_24_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_25_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_25_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?*
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?)
value?)B?)LB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ? 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop5savev2_conv2d_transpose_20_kernel_read_readvariableop3savev2_conv2d_transpose_20_bias_read_readvariableop5savev2_conv2d_transpose_21_kernel_read_readvariableop3savev2_conv2d_transpose_21_bias_read_readvariableop5savev2_conv2d_transpose_22_kernel_read_readvariableop3savev2_conv2d_transpose_22_bias_read_readvariableop5savev2_conv2d_transpose_23_kernel_read_readvariableop3savev2_conv2d_transpose_23_bias_read_readvariableop5savev2_conv2d_transpose_24_kernel_read_readvariableop3savev2_conv2d_transpose_24_bias_read_readvariableop5savev2_conv2d_transpose_25_kernel_read_readvariableop3savev2_conv2d_transpose_25_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_20_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_20_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_21_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_21_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_22_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_22_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_23_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_23_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_24_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_24_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_25_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_25_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_20_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_20_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_21_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_21_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_22_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_22_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_23_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_23_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_24_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_24_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_25_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_25_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: : : @:@:@@:@:
?T?:?:@?:@:@@:@: @: : :::::: : : : : : : : : ::: : : @:@:@@:@:
?T?:?:@?:@:@@:@: @: : :::::::: : : @:@:@@:@:
?T?:?:@?:@:@@:@: @: : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&	"
 
_output_shapes
:
?T?:!


_output_shapes	
:?:-)
'
_output_shapes
:@?: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:&("
 
_output_shapes
:
?T?:!)

_output_shapes	
:?:-*)
'
_output_shapes
:@?: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:,.(
&
_output_shapes
: @: /

_output_shapes
: :,0(
&
_output_shapes
: : 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
: : 9

_output_shapes
: :,:(
&
_output_shapes
: @: ;

_output_shapes
:@:,<(
&
_output_shapes
:@@: =

_output_shapes
:@:&>"
 
_output_shapes
:
?T?:!?

_output_shapes	
:?:-@)
'
_output_shapes
:@?: A

_output_shapes
:@:,B(
&
_output_shapes
:@@: C

_output_shapes
:@:,D(
&
_output_shapes
: @: E

_output_shapes
: :,F(
&
_output_shapes
: : G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
::,J(
&
_output_shapes
:: K

_output_shapes
::L

_output_shapes
: 
?
?
4__inference_conv2d_transpose_20_layer_call_fn_249291

inputs"
unknown:@?
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247211?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_18_layer_call_fn_249257

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247166?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling2d_21_layer_call_fn_249667

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247419?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_2_layer_call_and_return_conditional_losses_249206

inputs2
matmul_readvariableop_resource:
?T?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?T?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????T
 
_user_specified_nameinputs
?
?
(__inference_dense_2_layer_call_fn_249195

inputs
unknown:
?T?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_247651p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????T
 
_user_specified_nameinputs
?`
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_248413
conv2d_17_input*
conv2d_17_248346:
conv2d_17_248348:*
conv2d_18_248352: 
conv2d_18_248354: *
conv2d_19_248358: @
conv2d_19_248360:@*
conv2d_20_248363:@@
conv2d_20_248365:@"
dense_2_248370:
?T?
dense_2_248372:	?5
conv2d_transpose_20_248378:@?(
conv2d_transpose_20_248380:@4
conv2d_transpose_21_248383:@@(
conv2d_transpose_21_248385:@4
conv2d_transpose_22_248389: @(
conv2d_transpose_22_248391: 4
conv2d_transpose_23_248395: (
conv2d_transpose_23_248397:4
conv2d_transpose_24_248401:(
conv2d_transpose_24_248403:4
conv2d_transpose_25_248406:(
conv2d_transpose_25_248408:
identity??!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall?+conv2d_transpose_21/StatefulPartitionedCall?+conv2d_transpose_22/StatefulPartitionedCall?+conv2d_transpose_23/StatefulPartitionedCall?+conv2d_transpose_24/StatefulPartitionedCall?+conv2d_transpose_25/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputconv2d_17_248346conv2d_17_248348*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_247557?
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_247567?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_18_248352conv2d_18_248354*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_247580?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_247590?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_19_248358conv2d_19_248360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_247603?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_248363conv2d_20_248365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_247620?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_247630?
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????T* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_247638?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_248370dense_2_248372*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_247651?
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_247662?
reshape_2/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_247678?
 up_sampling2d_18/PartitionedCallPartitionedCall"reshape_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_247687?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_18/PartitionedCall:output:0conv2d_transpose_20_248378conv2d_transpose_20_248380*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_247712?
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0conv2d_transpose_21_248383conv2d_transpose_21_248385*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_247741?
 up_sampling2d_19/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_247754?
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_19/PartitionedCall:output:0conv2d_transpose_22_248389conv2d_transpose_22_248391*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247779?
 up_sampling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247792?
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_20/PartitionedCall:output:0conv2d_transpose_23_248395conv2d_transpose_23_248397*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_247817?
 up_sampling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_247830?
+conv2d_transpose_24/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_21/PartitionedCall:output:0conv2d_transpose_24_248401conv2d_transpose_24_248403*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247855?
+conv2d_transpose_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_24/StatefulPartitionedCall:output:0conv2d_transpose_25_248406conv2d_transpose_25_248408*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_247884?
 up_sampling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_247897?
IdentityIdentity)up_sampling2d_22/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall,^conv2d_transpose_24/StatefulPartitionedCall,^conv2d_transpose_25/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall2Z
+conv2d_transpose_24/StatefulPartitionedCall+conv2d_transpose_24/StatefulPartitionedCall2Z
+conv2d_transpose_25/StatefulPartitionedCall+conv2d_transpose_25/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_17_input
?
M
1__inference_up_sampling2d_20_layer_call_fn_249562

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_247792h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_24_layer_call_fn_249710

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_247855w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????>>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<<
 
_user_specified_nameinputs
?
h
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_249874

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_249221

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_conv2d_transpose_22_layer_call_fn_249481

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_247328?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_17_inputB
!serving_default_conv2d_17_input:0???????????N
up_sampling2d_22:
StatefulPartitionedCall:0???????????tensorflow/serving/predict:ě
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer_with_weights-10
layer-20
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

qkernel
rbias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

{kernel
|bias
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?'m?(m?1m?2m?7m?8m?Em?Fm?Wm?Xm?]m?^m?gm?hm?qm?rm?{m?|m?	?m?	?m?v?v?'v?(v?1v?2v?7v?8v?Ev?Fv?Wv?Xv?]v?^v?gv?hv?qv?rv?{v?|v?	?v?	?v?"
	optimizer
?
0
1
'2
(3
14
25
76
87
E8
F9
W10
X11
]12
^13
g14
h15
q16
r17
{18
|19
?20
?21"
trackable_list_wrapper
?
0
1
'2
(3
14
25
76
87
E8
F9
W10
X11
]12
^13
g14
h15
q16
r17
{18
|19
?20
?21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:(2conv2d_17/kernel
:2conv2d_17/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_18/kernel
: 2conv2d_18/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_19/kernel
:@2conv2d_19/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_20/kernel
:@2conv2d_20/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
?T?2dense_2/kernel
:?2dense_2/bias
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5:3@?2conv2d_transpose_20/kernel
&:$@2conv2d_transpose_20/bias
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2@@2conv2d_transpose_21/kernel
&:$@2conv2d_transpose_21/bias
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2 @2conv2d_transpose_22/kernel
&:$ 2conv2d_transpose_22/bias
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2 2conv2d_transpose_23/kernel
&:$2conv2d_transpose_23/bias
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:22conv2d_transpose_24/kernel
&:$2conv2d_transpose_24/bias
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:22conv2d_transpose_25/kernel
&:$2conv2d_transpose_25/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:-2Adam/conv2d_17/kernel/m
!:2Adam/conv2d_17/bias/m
/:- 2Adam/conv2d_18/kernel/m
!: 2Adam/conv2d_18/bias/m
/:- @2Adam/conv2d_19/kernel/m
!:@2Adam/conv2d_19/bias/m
/:-@@2Adam/conv2d_20/kernel/m
!:@2Adam/conv2d_20/bias/m
':%
?T?2Adam/dense_2/kernel/m
 :?2Adam/dense_2/bias/m
::8@?2!Adam/conv2d_transpose_20/kernel/m
+:)@2Adam/conv2d_transpose_20/bias/m
9:7@@2!Adam/conv2d_transpose_21/kernel/m
+:)@2Adam/conv2d_transpose_21/bias/m
9:7 @2!Adam/conv2d_transpose_22/kernel/m
+:) 2Adam/conv2d_transpose_22/bias/m
9:7 2!Adam/conv2d_transpose_23/kernel/m
+:)2Adam/conv2d_transpose_23/bias/m
9:72!Adam/conv2d_transpose_24/kernel/m
+:)2Adam/conv2d_transpose_24/bias/m
9:72!Adam/conv2d_transpose_25/kernel/m
+:)2Adam/conv2d_transpose_25/bias/m
/:-2Adam/conv2d_17/kernel/v
!:2Adam/conv2d_17/bias/v
/:- 2Adam/conv2d_18/kernel/v
!: 2Adam/conv2d_18/bias/v
/:- @2Adam/conv2d_19/kernel/v
!:@2Adam/conv2d_19/bias/v
/:-@@2Adam/conv2d_20/kernel/v
!:@2Adam/conv2d_20/bias/v
':%
?T?2Adam/dense_2/kernel/v
 :?2Adam/dense_2/bias/v
::8@?2!Adam/conv2d_transpose_20/kernel/v
+:)@2Adam/conv2d_transpose_20/bias/v
9:7@@2!Adam/conv2d_transpose_21/kernel/v
+:)@2Adam/conv2d_transpose_21/bias/v
9:7 @2!Adam/conv2d_transpose_22/kernel/v
+:) 2Adam/conv2d_transpose_22/bias/v
9:7 2!Adam/conv2d_transpose_23/kernel/v
+:)2Adam/conv2d_transpose_23/bias/v
9:72!Adam/conv2d_transpose_24/kernel/v
+:)2Adam/conv2d_transpose_24/bias/v
9:72!Adam/conv2d_transpose_25/kernel/v
+:)2Adam/conv2d_transpose_25/bias/v
?2?
-__inference_sequential_2_layer_call_fn_247947
-__inference_sequential_2_layer_call_fn_248589
-__inference_sequential_2_layer_call_fn_248638
-__inference_sequential_2_layer_call_fn_248343?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_2_layer_call_and_return_conditional_losses_248833
H__inference_sequential_2_layer_call_and_return_conditional_losses_249035
H__inference_sequential_2_layer_call_and_return_conditional_losses_248413
H__inference_sequential_2_layer_call_and_return_conditional_losses_248483?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_247114conv2d_17_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_17_layer_call_fn_249044?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_249055?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_9_layer_call_fn_249060
0__inference_max_pooling2d_9_layer_call_fn_249065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_249070
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_249075?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_18_layer_call_fn_249084?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_249095?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_10_layer_call_fn_249100
1__inference_max_pooling2d_10_layer_call_fn_249105?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_249110
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_249115?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_19_layer_call_fn_249124?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_19_layer_call_and_return_conditional_losses_249135?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_20_layer_call_fn_249144?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_20_layer_call_and_return_conditional_losses_249155?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_11_layer_call_fn_249160
1__inference_max_pooling2d_11_layer_call_fn_249165?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_249170
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_249175?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_2_layer_call_fn_249180?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_2_layer_call_and_return_conditional_losses_249186?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_2_layer_call_fn_249195?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_2_layer_call_and_return_conditional_losses_249206?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_2_layer_call_fn_249211
*__inference_dropout_2_layer_call_fn_249216?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_2_layer_call_and_return_conditional_losses_249221
E__inference_dropout_2_layer_call_and_return_conditional_losses_249233?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_reshape_2_layer_call_fn_249238?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_reshape_2_layer_call_and_return_conditional_losses_249252?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_up_sampling2d_18_layer_call_fn_249257
1__inference_up_sampling2d_18_layer_call_fn_249262?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_249274
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_249282?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_conv2d_transpose_20_layer_call_fn_249291
4__inference_conv2d_transpose_20_layer_call_fn_249300?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_249338
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_249362?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_conv2d_transpose_21_layer_call_fn_249371
4__inference_conv2d_transpose_21_layer_call_fn_249380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_249418
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_249442?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_up_sampling2d_19_layer_call_fn_249447
1__inference_up_sampling2d_19_layer_call_fn_249452?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_249464
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_249472?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_conv2d_transpose_22_layer_call_fn_249481
4__inference_conv2d_transpose_22_layer_call_fn_249490?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_249528
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_249552?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_up_sampling2d_20_layer_call_fn_249557
1__inference_up_sampling2d_20_layer_call_fn_249562?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_249574
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_249582?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_conv2d_transpose_23_layer_call_fn_249591
4__inference_conv2d_transpose_23_layer_call_fn_249600?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_249638
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_249662?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_up_sampling2d_21_layer_call_fn_249667
1__inference_up_sampling2d_21_layer_call_fn_249672?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_249684
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_249692?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_conv2d_transpose_24_layer_call_fn_249701
4__inference_conv2d_transpose_24_layer_call_fn_249710?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_249748
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_249772?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_conv2d_transpose_25_layer_call_fn_249781
4__inference_conv2d_transpose_25_layer_call_fn_249790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_249828
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_249852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_up_sampling2d_22_layer_call_fn_249857
1__inference_up_sampling2d_22_layer_call_fn_249862?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_249874
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_249882?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_248540conv2d_17_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_247114?'(1278EFWX]^ghqr{|??B??
8?5
3?0
conv2d_17_input???????????
? "M?J
H
up_sampling2d_224?1
up_sampling2d_22????????????
E__inference_conv2d_17_layer_call_and_return_conditional_losses_249055n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????~~
? ?
*__inference_conv2d_17_layer_call_fn_249044a9?6
/?,
*?'
inputs???????????
? " ??????????~~?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_249095l'(7?4
-?*
(?%
inputs???????????
? "-?*
#? 
0?????????== 
? ?
*__inference_conv2d_18_layer_call_fn_249084_'(7?4
-?*
(?%
inputs???????????
? " ??????????== ?
E__inference_conv2d_19_layer_call_and_return_conditional_losses_249135l127?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_19_layer_call_fn_249124_127?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_20_layer_call_and_return_conditional_losses_249155l787?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_20_layer_call_fn_249144_787?4
-?*
(?%
inputs?????????@
? " ??????????@?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_249338?WXJ?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
O__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_249362mWX8?5
.?+
)?&
inputs??????????
? "-?*
#? 
0?????????@
? ?
4__inference_conv2d_transpose_20_layer_call_fn_249291?WXJ?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
4__inference_conv2d_transpose_20_layer_call_fn_249300`WX8?5
.?+
)?&
inputs??????????
? " ??????????@?
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_249418?]^I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
O__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_249442l]^7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
4__inference_conv2d_transpose_21_layer_call_fn_249371?]^I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
4__inference_conv2d_transpose_21_layer_call_fn_249380_]^7?4
-?*
(?%
inputs?????????@
? " ??????????@?
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_249528?ghI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
O__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_249552lgh7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0????????? 
? ?
4__inference_conv2d_transpose_22_layer_call_fn_249481?ghI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
4__inference_conv2d_transpose_22_layer_call_fn_249490_gh7?4
-?*
(?%
inputs?????????@
? " ?????????? ?
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_249638?qrI?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
O__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_249662lqr7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????
? ?
4__inference_conv2d_transpose_23_layer_call_fn_249591?qrI?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
4__inference_conv2d_transpose_23_layer_call_fn_249600_qr7?4
-?*
(?%
inputs????????? 
? " ???????????
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_249748?{|I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
O__inference_conv2d_transpose_24_layer_call_and_return_conditional_losses_249772l{|7?4
-?*
(?%
inputs?????????<<
? "-?*
#? 
0?????????>>
? ?
4__inference_conv2d_transpose_24_layer_call_fn_249701?{|I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
4__inference_conv2d_transpose_24_layer_call_fn_249710_{|7?4
-?*
(?%
inputs?????????<<
? " ??????????>>?
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_249828???I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
O__inference_conv2d_transpose_25_layer_call_and_return_conditional_losses_249852n??7?4
-?*
(?%
inputs?????????>>
? "-?*
#? 
0?????????@@
? ?
4__inference_conv2d_transpose_25_layer_call_fn_249781???I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
4__inference_conv2d_transpose_25_layer_call_fn_249790a??7?4
-?*
(?%
inputs?????????>>
? " ??????????@@?
C__inference_dense_2_layer_call_and_return_conditional_losses_249206^EF0?-
&?#
!?
inputs??????????T
? "&?#
?
0??????????
? }
(__inference_dense_2_layer_call_fn_249195QEF0?-
&?#
!?
inputs??????????T
? "????????????
E__inference_dropout_2_layer_call_and_return_conditional_losses_249221^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_249233^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_2_layer_call_fn_249211Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_2_layer_call_fn_249216Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_flatten_2_layer_call_and_return_conditional_losses_249186a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????T
? ?
*__inference_flatten_2_layer_call_fn_249180T7?4
-?*
(?%
inputs?????????@
? "???????????T?
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_249110?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_249115h7?4
-?*
(?%
inputs?????????== 
? "-?*
#? 
0????????? 
? ?
1__inference_max_pooling2d_10_layer_call_fn_249100?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_max_pooling2d_10_layer_call_fn_249105[7?4
-?*
(?%
inputs?????????== 
? " ?????????? ?
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_249170?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_249175h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
1__inference_max_pooling2d_11_layer_call_fn_249160?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_max_pooling2d_11_layer_call_fn_249165[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_249070?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_249075h7?4
-?*
(?%
inputs?????????~~
? "-?*
#? 
0???????????
? ?
0__inference_max_pooling2d_9_layer_call_fn_249060?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_9_layer_call_fn_249065[7?4
-?*
(?%
inputs?????????~~
? " ?????????????
E__inference_reshape_2_layer_call_and_return_conditional_losses_249252b0?-
&?#
!?
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_reshape_2_layer_call_fn_249238U0?-
&?#
!?
inputs??????????
? "!????????????
H__inference_sequential_2_layer_call_and_return_conditional_losses_248413?'(1278EFWX]^ghqr{|??J?G
@?=
3?0
conv2d_17_input???????????
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_248483?'(1278EFWX]^ghqr{|??J?G
@?=
3?0
conv2d_17_input???????????
p

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_248833?'(1278EFWX]^ghqr{|??A?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_249035?'(1278EFWX]^ghqr{|??A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
-__inference_sequential_2_layer_call_fn_247947?'(1278EFWX]^ghqr{|??J?G
@?=
3?0
conv2d_17_input???????????
p 

 
? ""?????????????
-__inference_sequential_2_layer_call_fn_248343?'(1278EFWX]^ghqr{|??J?G
@?=
3?0
conv2d_17_input???????????
p

 
? ""?????????????
-__inference_sequential_2_layer_call_fn_248589?'(1278EFWX]^ghqr{|??A?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
-__inference_sequential_2_layer_call_fn_248638?'(1278EFWX]^ghqr{|??A?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
$__inference_signature_wrapper_248540?'(1278EFWX]^ghqr{|??U?R
? 
K?H
F
conv2d_17_input3?0
conv2d_17_input???????????"M?J
H
up_sampling2d_224?1
up_sampling2d_22????????????
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_249274?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_up_sampling2d_18_layer_call_and_return_conditional_losses_249282j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_up_sampling2d_18_layer_call_fn_249257?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_up_sampling2d_18_layer_call_fn_249262]8?5
.?+
)?&
inputs??????????
? "!????????????
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_249464?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_up_sampling2d_19_layer_call_and_return_conditional_losses_249472h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
1__inference_up_sampling2d_19_layer_call_fn_249447?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_up_sampling2d_19_layer_call_fn_249452[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_249574?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_up_sampling2d_20_layer_call_and_return_conditional_losses_249582h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
1__inference_up_sampling2d_20_layer_call_fn_249557?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_up_sampling2d_20_layer_call_fn_249562[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_249684?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_up_sampling2d_21_layer_call_and_return_conditional_losses_249692h7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????<<
? ?
1__inference_up_sampling2d_21_layer_call_fn_249667?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_up_sampling2d_21_layer_call_fn_249672[7?4
-?*
(?%
inputs?????????
? " ??????????<<?
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_249874?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_249882j7?4
-?*
(?%
inputs?????????@@
? "/?,
%?"
0???????????
? ?
1__inference_up_sampling2d_22_layer_call_fn_249857?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_up_sampling2d_22_layer_call_fn_249862]7?4
-?*
(?%
inputs?????????@@
? ""????????????