.class public Landroid/renderscript/ProgramVertex$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 2
    .parameter "rs"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 74
    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;
    .registers 5
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_e

    .line 86
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_e
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 89
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1c
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    aput-object p1, v0, v1

    .line 92
    return-object p0
.end method

.method public create()Landroid/renderscript/ProgramVertex;
    .registers 9

    .prologue
    .line 101
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6}, Landroid/renderscript/RenderScript;->validate()V

    .line 102
    iget v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [I

    .line 103
    .local v5, tmp:[I
    const/4 v2, 0x0

    .line 105
    .local v2, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    if-ge v0, v6, :cond_31

    .line 106
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 107
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Element;->getID()I

    move-result v6

    aput v6, v5, v3

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 109
    :cond_31
    const/4 v0, 0x0

    :goto_32
    iget v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    if-ge v0, v6, :cond_4d

    .line 110
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 111
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Element;->getID()I

    move-result v6

    aput v6, v5, v3

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 113
    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iget v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    if-ge v0, v6, :cond_69

    .line 114
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 115
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Type;->getID()I

    move-result v6

    aput v6, v5, v3

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 117
    :cond_69
    const/4 v0, 0x0

    :goto_6a
    iget v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    if-ge v0, v6, :cond_83

    .line 118
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 119
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/renderscript/Program$TextureType;->mID:I

    aput v6, v5, v3

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 122
    :cond_83
    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[I)I

    move-result v1

    .line 123
    .local v1, id:I
    new-instance v4, Landroid/renderscript/ProgramVertex;

    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v1, v6}, Landroid/renderscript/ProgramVertex;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 124
    .local v4, pv:Landroid/renderscript/ProgramVertex;
    invoke-virtual {p0, v4}, Landroid/renderscript/ProgramVertex$Builder;->initProgram(Landroid/renderscript/Program;)V

    .line 125
    return-object v4
.end method
