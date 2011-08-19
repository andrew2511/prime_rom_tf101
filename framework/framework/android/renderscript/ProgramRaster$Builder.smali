.class public Landroid/renderscript/ProgramRaster$Builder;
.super Ljava/lang/Object;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field mLineSmooth:Z

.field mPointSmooth:Z

.field mPointSprite:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 106
    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSmooth:Z

    .line 107
    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mLineSmooth:Z

    .line 108
    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    .line 109
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 110
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramRaster$Builder;)Landroid/renderscript/ProgramRaster;
    .registers 8
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 123
    const-class v2, Landroid/renderscript/ProgramRaster$Builder;

    monitor-enter v2

    :try_start_3
    iget-boolean v3, p1, Landroid/renderscript/ProgramRaster$Builder;->mPointSmooth:Z

    iget-boolean v4, p1, Landroid/renderscript/ProgramRaster$Builder;->mLineSmooth:Z

    iget-boolean v5, p1, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    invoke-virtual {p0, v3, v4, v5}, Landroid/renderscript/RenderScript;->nProgramRasterCreate(ZZZ)I

    move-result v0

    .line 124
    .local v0, id:I
    new-instance v1, Landroid/renderscript/ProgramRaster;

    invoke-direct {v1, v0, p0}, Landroid/renderscript/ProgramRaster;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 125
    .local v1, pr:Landroid/renderscript/ProgramRaster;
    iget-object v3, p1, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v1, v3}, Landroid/renderscript/ProgramRaster;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 126
    monitor-exit v2

    return-object v1

    .line 123
    .end local v0           #id:I
    .end local v1           #pr:Landroid/renderscript/ProgramRaster;
    :catchall_19
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramRaster;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 131
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramRaster$Builder;)Landroid/renderscript/ProgramRaster;

    move-result-object v0

    return-object v0
.end method

.method public setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;
    .registers 2
    .parameter "m"

    .prologue
    .line 118
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 119
    return-object p0
.end method

.method public setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;
    .registers 2
    .parameter "enable"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    .line 114
    return-object p0
.end method
