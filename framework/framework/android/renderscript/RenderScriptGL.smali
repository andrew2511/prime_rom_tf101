.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field private mSurface:Landroid/view/Surface;

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .registers 20
    .parameter "ctx"
    .parameter "sc"

    .prologue
    .line 161
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 164
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    .line 165
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 166
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/renderscript/RenderScriptGL;->mDev:I

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    move-object v0, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v16, v0

    .line 169
    .local v16, dpi:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/RenderScriptGL;->mDev:I

    move v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v5, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v6, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v7, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v8, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v9, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v10, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v11, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v12, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v13, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v14, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object v2, v0

    iget v15, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(IIIIIIIIIIIIFI)I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/renderscript/RenderScriptGL;->mContext:I

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/RenderScriptGL;->mContext:I

    move v2, v0

    if-nez v2, :cond_a5

    .line 177
    new-instance v2, Landroid/renderscript/RSDriverException;

    const-string v3, "Failed to create RS context."

    invoke-direct {v2, v3}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_a5
    new-instance v2, Landroid/renderscript/RenderScript$MessageThread;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 181
    return-void
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 269
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(I)V

    .line 270
    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 280
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(I)V

    .line 281
    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 258
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(I)V

    .line 259
    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 291
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(I)V

    .line 292
    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 247
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(I)V

    .line 248
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 227
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    .line 228
    return-void
.end method

.method public resume()V
    .registers 1

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 236
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    .line 237
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .registers 5
    .parameter "sur"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 193
    if-eqz p1, :cond_15

    .line 194
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    .line 198
    :goto_b
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 199
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 200
    iget-object v0, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 201
    return-void

    .line 196
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    goto :goto_b
.end method
