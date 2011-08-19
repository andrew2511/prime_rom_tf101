.class public Landroid/renderscript/Sampler$Builder;
.super Ljava/lang/Object;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mRS:Landroid/renderscript/RenderScript;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .parameter "rs"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 192
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    .line 193
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    .line 194
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 195
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 196
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    .line 197
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    .line 198
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Sampler$Builder;)Landroid/renderscript/Sampler;
    .registers 6
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 244
    const-class v1, Landroid/renderscript/Sampler$Builder;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nSamplerBegin()V

    .line 245
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    .line 246
    const/4 v2, 0x1

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    .line 247
    const/4 v2, 0x2

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    .line 248
    const/4 v2, 0x3

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    .line 249
    const/4 v2, 0x4

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    .line 250
    const/4 v2, 0x5

    iget v3, p1, Landroid/renderscript/Sampler$Builder;->mAniso:F

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet2(IF)V

    .line 251
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nSamplerCreate()I

    move-result v0

    .line 252
    .local v0, id:I
    new-instance v2, Landroid/renderscript/Sampler;

    invoke-direct {v2, v0, p0}, Landroid/renderscript/Sampler;-><init>(ILandroid/renderscript/RenderScript;)V
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3f

    monitor-exit v1

    return-object v2

    .line 244
    .end local v0           #id:I
    :catchall_3f
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public create()Landroid/renderscript/Sampler;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 257
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/Sampler$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Sampler$Builder;)Landroid/renderscript/Sampler;

    move-result-object v0

    return-object v0
.end method

.method public setAnisotropy(F)V
    .registers 4
    .parameter "v"

    .prologue
    .line 236
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 237
    iput p1, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    .line 241
    return-void

    .line 239
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnification(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 212
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_8

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_b

    .line 213
    :cond_8
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    .line 217
    return-void

    .line 215
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinification(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 201
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_13

    .line 205
    :cond_10
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    .line 209
    return-void

    .line 207
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapS(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 220
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_8

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_b

    .line 221
    :cond_8
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 225
    return-void

    .line 223
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapT(Landroid/renderscript/Sampler$Value;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 228
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_8

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_b

    .line 229
    :cond_8
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 233
    return-void

    .line 231
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
