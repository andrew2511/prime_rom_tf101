.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 165
    return-void
.end method


# virtual methods
.method calcElementCount()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 126
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    .line 127
    .local v2, hasLod:Z
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 128
    .local v3, x:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 129
    .local v4, y:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v5

    .line 130
    .local v5, z:I
    const/4 v1, 0x1

    .line 131
    .local v1, faces:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 132
    const/4 v1, 0x6

    .line 134
    :cond_19
    if-nez v3, :cond_1c

    .line 135
    const/4 v3, 0x1

    .line 137
    :cond_1c
    if-nez v4, :cond_1f

    .line 138
    const/4 v4, 0x1

    .line 140
    :cond_1f
    if-nez v5, :cond_22

    .line 141
    const/4 v5, 0x1

    .line 144
    :cond_22
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int v0, v6, v1

    .line 146
    .local v0, count:I
    :goto_27
    if-eqz v2, :cond_41

    if-gt v3, v7, :cond_2f

    if-gt v4, v7, :cond_2f

    if-le v5, v7, :cond_41

    .line 147
    :cond_2f
    if-le v3, v7, :cond_33

    .line 148
    shr-int/lit8 v3, v3, 0x1

    .line 150
    :cond_33
    if-le v4, v7, :cond_37

    .line 151
    shr-int/lit8 v4, v4, 0x1

    .line 153
    :cond_37
    if-le v5, v7, :cond_3b

    .line 154
    shr-int/lit8 v5, v5, 0x1

    .line 157
    :cond_3b
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v0, v6

    goto :goto_27

    .line 159
    :cond_41
    iput v0, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 160
    return-void
.end method

.method public bridge synthetic destroy()V
    .registers 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getZ()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method updateFromNative()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 171
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 172
    .local v0, dataBuffer:[I
    iget-object v2, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Type;->getID()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(I[I)V

    .line 174
    aget v2, v0, v5

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    .line 175
    aget v2, v0, v4

    iput v2, p0, Landroid/renderscript/Type;->mDimY:I

    .line 176
    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 177
    const/4 v2, 0x3

    aget v2, v0, v2

    if-ne v2, v4, :cond_42

    move v2, v4

    :goto_21
    iput-boolean v2, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 178
    const/4 v2, 0x4

    aget v2, v0, v2

    if-ne v2, v4, :cond_44

    move v2, v4

    :goto_29
    iput-boolean v2, p0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 180
    const/4 v2, 0x5

    aget v1, v0, v2

    .line 181
    .local v1, elementID:I
    if-eqz v1, :cond_3e

    .line 182
    new-instance v2, Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v1, v3}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 183
    iget-object v2, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->updateFromNative()V

    .line 185
    :cond_3e
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 186
    return-void

    .end local v1           #elementID:I
    :cond_42
    move v2, v5

    .line 177
    goto :goto_21

    :cond_44
    move v2, v5

    .line 178
    goto :goto_29
.end method
