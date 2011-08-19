.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# instance fields
.field private mAlloc:Landroid/renderscript/Allocation;

.field private mSelectedCount:I

.field private mSelectedDimX:I

.field private mSelectedDimY:I

.field private mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field private mSelectedLOD:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V
    .registers 7
    .parameter "id"
    .parameter "rs"
    .parameter "alloc"

    .prologue
    .line 39
    const/4 v1, 0x0

    iget v2, p3, Landroid/renderscript/Allocation;->mUsage:I

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    .line 36
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 40
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 41
    .local v0, t:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v1

    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedDimX:I

    .line 42
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v1

    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedDimY:I

    .line 43
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedCount:I

    .line 44
    return-void
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .registers 4
    .parameter "rs"
    .parameter "a"

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 205
    new-instance v0, Landroid/renderscript/AllocationAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/renderscript/AllocationAdapter;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V

    .line 206
    .local v0, aa:Landroid/renderscript/AllocationAdapter;
    return-object v0
.end method


# virtual methods
.method public copyFrom(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->validateBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method public copyFrom([B)V
    .registers 4
    .parameter "d"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 78
    const/4 v0, 0x0

    iget v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/AllocationAdapter;->subData1D(II[B)V

    .line 79
    return-void
.end method

.method public copyFrom([F)V
    .registers 4
    .parameter "d"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 82
    const/4 v0, 0x0

    iget v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/AllocationAdapter;->subData1D(II[F)V

    .line 83
    return-void
.end method

.method public copyFrom([I)V
    .registers 4
    .parameter "d"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 70
    const/4 v0, 0x0

    iget v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/AllocationAdapter;->subData1D(II[I)V

    .line 71
    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .registers 7
    .parameter "d"

    .prologue
    .line 48
    iget-object v2, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 49
    array-length v2, p1

    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedCount:I

    if-eq v2, v3, :cond_30

    .line 50
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mSelectedCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_30
    array-length v2, p1

    new-array v1, v2, [I

    .line 54
    .local v1, i:[I
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_34
    array-length v2, p1

    if-ge v0, v2, :cond_42

    .line 55
    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->getID()I

    move-result v2

    aput v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 57
    :cond_42
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/renderscript/AllocationAdapter;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Landroid/renderscript/AllocationAdapter;->subData1D(II[I)V

    .line 58
    return-void
.end method

.method public copyFrom([S)V
    .registers 4
    .parameter "d"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 74
    const/4 v0, 0x0

    iget v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedCount:I

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/AllocationAdapter;->subData1D(II[S)V

    .line 75
    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->validateBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V

    .line 92
    return-void
.end method

.method data1DChecks(IIII)V
    .registers 8
    .parameter "off"
    .parameter "count"
    .parameter "len"
    .parameter "dataSize"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 130
    if-gez p1, :cond_f

    .line 131
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_f
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1a

    .line 134
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1a
    add-int v0, p1, p2

    iget v1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedDimX:I

    iget v2, p0, Landroid/renderscript/AllocationAdapter;->mSelectedDimY:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_5c

    .line 137
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/AllocationAdapter;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_5c
    if-ge p3, p4, :cond_66

    .line 141
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_66
    return-void
.end method

.method public readData([F)V
    .registers 4
    .parameter "d"

    .prologue
    .line 183
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 184
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[F)V

    .line 185
    return-void
.end method

.method public readData([I)V
    .registers 4
    .parameter "d"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 179
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[I)V

    .line 180
    return-void
.end method

.method public setFace(Landroid/renderscript/Type$CubemapFace;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 191
    return-void
.end method

.method public setLOD(I)V
    .registers 2
    .parameter "lod"

    .prologue
    .line 188
    return-void
.end method

.method public setY(I)V
    .registers 2
    .parameter "y"

    .prologue
    .line 194
    return-void
.end method

.method public setZ(I)V
    .registers 2
    .parameter "z"

    .prologue
    .line 197
    return-void
.end method

.method public subData(ILandroid/renderscript/FieldPacker;)V
    .registers 11
    .parameter "xoff"
    .parameter "fp"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v7

    .line 97
    .local v7, eSize:I
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 99
    .local v5, data:[B
    array-length v0, v5

    div-int v4, v0, v7

    .line 100
    .local v4, count:I
    mul-int v0, v7, v4

    array-length v1, v5

    if-eq v0, v1, :cond_3e

    .line 101
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field packer length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not divisible by element size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3e
    array-length v0, v5

    array-length v1, v5

    invoke-virtual {p0, p1, v4, v0, v1}, Landroid/renderscript/AllocationAdapter;->data1DChecks(IIII)V

    .line 105
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    array-length v6, v5

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[BI)V

    .line 106
    return-void
.end method

.method public subData1D(II[B)V
    .registers 11
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v6, v0, p2

    .line 157
    .local v6, dataSize:I
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0, v6}, Landroid/renderscript/AllocationAdapter;->data1DChecks(IIII)V

    .line 158
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[BI)V

    .line 159
    return-void
.end method

.method public subData1D(II[F)V
    .registers 11
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v6, v0, p2

    .line 162
    .local v6, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, p2, v0, v6}, Landroid/renderscript/AllocationAdapter;->data1DChecks(IIII)V

    .line 163
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[FI)V

    .line 164
    return-void
.end method

.method public subData1D(II[I)V
    .registers 11
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 146
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v6, v0, p2

    .line 147
    .local v6, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, p2, v0, v6}, Landroid/renderscript/AllocationAdapter;->data1DChecks(IIII)V

    .line 148
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[II)V

    .line 149
    return-void
.end method

.method public subData1D(II[S)V
    .registers 11
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 151
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v0

    mul-int v6, v0, p2

    .line 152
    .local v6, dataSize:I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, p2, v0, v6}, Landroid/renderscript/AllocationAdapter;->data1DChecks(IIII)V

    .line 153
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[SI)V

    .line 154
    return-void
.end method

.method public subData2D(IIII[F)V
    .registers 16
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 173
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 174
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x4

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIII[FI)V

    .line 175
    return-void
.end method

.method public subData2D(IIII[I)V
    .registers 16
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 168
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 169
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x4

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIII[II)V

    .line 170
    return-void
.end method

.method public subElementData(IILandroid/renderscript/FieldPacker;)V
    .registers 12
    .parameter "xoff"
    .parameter "component_number"
    .parameter "fp"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    if-lt p2, v0, :cond_28

    .line 111
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_28
    if-gez p1, :cond_32

    .line 114
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_32
    invoke-virtual {p3}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 118
    .local v5, data:[B
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/renderscript/Element;->getSizeBytes()I

    move-result v7

    .line 120
    .local v7, eSize:I
    array-length v0, v5

    if-eq v0, v7, :cond_6f

    .line 121
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field packer sizelength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match component size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_6f
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/AllocationAdapter;->getID()I

    move-result v1

    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    array-length v6, v5

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationElementData1D(IIII[BI)V

    .line 126
    return-void
.end method

.method validateBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 62
    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 64
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1d
    return-void
.end method
