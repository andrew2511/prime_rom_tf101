.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$BaseProgramBuilder;,
        Landroid/renderscript/Program$ProgramParam;,
        Landroid/renderscript/Program$TextureType;
    }
.end annotation


# static fields
.field static final MAX_CONSTANT:I = 0x8

.field static final MAX_INPUT:I = 0x8

.field static final MAX_OUTPUT:I = 0x8

.field static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextures:[Landroid/renderscript/Program$TextureType;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 78
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .registers 6
    .parameter "a"
    .parameter "slot"

    .prologue
    .line 89
    if-ltz p2, :cond_7

    iget-object v1, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v1, v1

    if-lt p2, v1, :cond_f

    .line 90
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_f
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getID()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getID()I

    move-result v2

    if-eq v1, v2, :cond_2b

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Allocation type does not match slot type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_2b
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getID()I

    move-result v1

    move v0, v1

    .line 97
    .local v0, id:I
    :goto_32
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Program;->getID()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindConstants(III)V

    .line 98
    return-void

    .line 96
    .end local v0           #id:I
    :cond_3c
    const/4 v1, 0x0

    move v0, v1

    goto :goto_32
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .registers 6
    .parameter "vs"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 134
    if-ltz p2, :cond_b

    iget v1, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v1, :cond_13

    .line 135
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_13
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/renderscript/Sampler;->getID()I

    move-result v1

    move v0, v1

    .line 139
    .local v0, id:I
    :goto_1a
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Program;->getID()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindSampler(III)V

    .line 140
    return-void

    .line 138
    .end local v0           #id:I
    :cond_24
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1a
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .registers 6
    .parameter "va"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 110
    if-ltz p2, :cond_b

    iget v1, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v1, :cond_13

    .line 111
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_13
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v1, v1, p2

    sget-object v2, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    if-eq v1, v2, :cond_2f

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot bind cubemap to 2d texture slot"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_2f
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getID()I

    move-result v1

    move v0, v1

    .line 119
    .local v0, id:I
    :goto_36
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Program;->getID()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindTexture(III)V

    .line 120
    return-void

    .line 118
    .end local v0           #id:I
    :cond_40
    const/4 v1, 0x0

    move v0, v1

    goto :goto_36
.end method

.method public bridge synthetic destroy()V
    .registers 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method
