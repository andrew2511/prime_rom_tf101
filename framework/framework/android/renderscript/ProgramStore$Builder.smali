.class public Landroid/renderscript/ProgramStore$Builder;
.super Ljava/lang/Object;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 4
    .parameter "rs"

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 253
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 255
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 256
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 257
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 258
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 259
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 260
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 261
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramStore$Builder;)Landroid/renderscript/ProgramStore;
    .registers 8
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 337
    const-class v1, Landroid/renderscript/ProgramStore$Builder;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nProgramStoreBegin(II)V

    .line 338
    iget-object v2, p1, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iget v2, v2, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    invoke-virtual {p0, v2}, Landroid/renderscript/RenderScript;->nProgramStoreDepthFunc(I)V

    .line 339
    iget-boolean v2, p1, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    invoke-virtual {p0, v2}, Landroid/renderscript/RenderScript;->nProgramStoreDepthMask(Z)V

    .line 340
    iget-boolean v2, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iget-boolean v3, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iget-boolean v4, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iget-boolean v5, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/renderscript/RenderScript;->nProgramStoreColorMask(ZZZZ)V

    .line 344
    iget-object v2, p1, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iget v2, v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    iget-object v3, p1, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iget v3, v3, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nProgramStoreBlendFunc(II)V

    .line 345
    iget-boolean v2, p1, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    invoke-virtual {p0, v2}, Landroid/renderscript/RenderScript;->nProgramStoreDither(Z)V

    .line 347
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nProgramStoreCreate()I

    move-result v0

    .line 348
    .local v0, id:I
    new-instance v2, Landroid/renderscript/ProgramStore;

    invoke-direct {v2, v0, p0}, Landroid/renderscript/ProgramStore;-><init>(ILandroid/renderscript/RenderScript;)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3a

    monitor-exit v1

    return-object v2

    .line 337
    .end local v0           #id:I
    :catchall_3a
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 356
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/ProgramStore$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramStore$Builder;)Landroid/renderscript/ProgramStore;

    move-result-object v0

    return-object v0
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .registers 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 318
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 319
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 320
    return-object p0
.end method

.method public setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .registers 5
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 299
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 300
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 301
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 302
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 303
    return-object p0
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .parameter "func"

    .prologue
    .line 271
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 272
    return-object p0
.end method

.method public setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .parameter "enable"

    .prologue
    .line 284
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 285
    return-object p0
.end method

.method public setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .parameter "enable"

    .prologue
    .line 332
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    .line 333
    return-object p0
.end method
