.class Lcom/google/android/opengl/glview/NinePatch$NinePatchData;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/NinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NinePatchData"
.end annotation


# instance fields
.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field public xDivs:[I

.field public yDivs:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/NinePatch$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;-><init>()V

    return-void
.end method

.method private arrayEquals([I[I)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 71
    array-length v1, p1

    .line 72
    .local v1, lenA:I
    array-length v2, p2

    .line 73
    .local v2, lenB:I
    if-eq v1, v2, :cond_0

    move v3, v5

    .line 81
    :goto_0
    return v3

    .line 76
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 77
    aget v3, p1, v0

    aget v4, p2, v0

    if-eq v3, v4, :cond_1

    move v3, v5

    .line 78
    goto :goto_0

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private calcCoords([I[FI)V
    .locals 15
    .parameter "divs"
    .parameter "coords"
    .parameter "naturalSize"

    .prologue
    .line 107
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    div-int/lit8 v9, v12, 0x2

    .line 108
    .local v9, stretchRegions:I
    const/4 v10, 0x0

    .line 109
    .local v10, stretchSourceSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 110
    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    aget v12, p1, v12

    mul-int/lit8 v13, v3, 0x2

    aget v13, p1, v13

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const/4 v8, 0x0

    .line 113
    .local v8, pos:I
    const/4 v1, 0x0

    .line 114
    .local v1, dPos:I
    const/4 v11, 0x0

    .line 115
    .local v11, tex:I
    const/4 v6, 0x0

    .line 116
    .local v6, out:I
    const/4 v5, 0x0

    .line 117
    .local v5, oldDiv:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #out:I
    .local v7, out:I
    const/4 v12, 0x0

    aput v12, p2, v6

    .line 118
    add-int/lit8 v6, v7, 0x1

    .end local v7           #out:I
    .restart local v6       #out:I
    const/4 v12, 0x0

    aput v12, p2, v7

    .line 119
    add-int/lit8 v7, v6, 0x1

    .end local v6           #out:I
    .restart local v7       #out:I
    const/high16 v12, 0x3f80

    aput v12, p2, v6

    .line 120
    const/4 v3, 0x0

    move v6, v7

    .end local v7           #out:I
    .restart local v6       #out:I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    if-ge v3, v12, :cond_3

    .line 121
    aget v4, p1, v3

    .line 122
    .local v4, newDiv:I
    sub-int v2, v4, v5

    .line 123
    .local v2, delta:I
    move v5, v4

    .line 124
    add-int/2addr v8, v2

    .line 125
    and-int/lit8 v12, v3, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 127
    add-int/2addr v1, v2

    .line 129
    :cond_1
    add-int/2addr v11, v2

    .line 130
    add-int/lit8 v7, v6, 0x1

    .end local v6           #out:I
    .restart local v7       #out:I
    int-to-float v12, v8

    move/from16 v0, p3

    int-to-float v0, v0

    move v13, v0

    div-float/2addr v12, v13

    aput v12, p2, v6

    .line 131
    add-int/lit8 v6, v7, 0x1

    .end local v7           #out:I
    .restart local v6       #out:I
    if-nez v1, :cond_2

    const/4 v12, 0x0

    :goto_2
    aput v12, p2, v7

    .line 132
    add-int/lit8 v7, v6, 0x1

    .end local v6           #out:I
    .restart local v7       #out:I
    const/high16 v12, 0x3f80

    int-to-float v13, v11

    move/from16 v0, p3

    int-to-float v0, v0

    move v14, v0

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, p2, v6

    .line 120
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    .end local v7           #out:I
    .restart local v6       #out:I
    goto :goto_1

    .line 131
    :cond_2
    int-to-float v12, v1

    int-to-float v13, v10

    div-float/2addr v12, v13

    goto :goto_2

    .line 134
    .end local v2           #delta:I
    .end local v4           #newDiv:I
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6           #out:I
    .restart local v7       #out:I
    const/high16 v12, 0x3f80

    aput v12, p2, v6

    .line 135
    add-int/lit8 v6, v7, 0x1

    .end local v7           #out:I
    .restart local v6       #out:I
    const/high16 v12, 0x3f80

    aput v12, p2, v7

    .line 136
    add-int/lit8 v7, v6, 0x1

    .end local v6           #out:I
    .restart local v7       #out:I
    const/4 v12, 0x0

    aput v12, p2, v6

    .line 137
    return-void
.end method

.method private readArray([BII)[I
    .locals 4
    .parameter "chunk"
    .parameter "sizeOffset"
    .parameter "dataOffset"

    .prologue
    .line 156
    aget-byte v2, p1, p2

    .line 157
    .local v2, len:I
    new-array v0, v2, [I

    .line 158
    .local v0, array:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 159
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p3

    invoke-direct {p0, p1, v3}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->readInt32([BI)I

    move-result v3

    aput v3, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-object v0
.end method

.method private readInt32([BI)I
    .locals 2
    .parameter "chunk"
    .parameter "offset"

    .prologue
    .line 149
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public deserialize([B)V
    .locals 2
    .parameter "ninePatchChunk"

    .prologue
    .line 140
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->readInt32([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    .line 141
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->readInt32([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingRight:I

    .line 142
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->readInt32([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingTop:I

    .line 143
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->readInt32([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingBottom:I

    .line 144
    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->readArray([BII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->xDivs:[I

    .line 145
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->xDivs:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->readArray([BII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->yDivs:[I

    .line 146
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 56
    instance-of v2, p1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    if-nez v2, :cond_0

    move v2, v4

    .line 60
    :goto_0
    return v2

    .line 59
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    move-object v1, v0

    .line 60
    .local v1, o:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;
    iget v2, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    iget v3, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingRight:I

    iget v3, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingRight:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingTop:I

    iget v3, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingTop:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    iget v3, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingBottom:I

    iget v3, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingBottom:I

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->xDivs:[I

    iget-object v3, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->xDivs:[I

    invoke-direct {p0, v2, v3}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->arrayEquals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->yDivs:[I

    iget-object v3, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->yDivs:[I

    invoke-direct {p0, v2, v3}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->arrayEquals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public getCoords([F[FII)V
    .locals 1
    .parameter "xcoords"
    .parameter "ycoords"
    .parameter "naturalWidth"
    .parameter "naturalHeight"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->xDivs:[I

    invoke-direct {p0, v0, p1, p3}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->calcCoords([I[FI)V

    .line 103
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->yDivs:[I

    invoke-direct {p0, v0, p2, p4}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->calcCoords([I[FI)V

    .line 104
    return-void
.end method

.method public getVertexCountH()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->yDivs:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getVertexCountW()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->xDivs:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
