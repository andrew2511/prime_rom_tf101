.class public Lcom/google/android/apps/books/widget/PageTurnRS;
.super Ljava/lang/Object;
.source "PageTurnRS.java"


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "PageTurnRS"


# instance fields
.field private mAnchorIndex:Ljava/lang/Integer;

.field private mEmptyAllocation:Landroid/renderscript/Allocation;

.field private mEmptyBitmap:Landroid/graphics/Bitmap;

.field private mEnableHQFiltering:Z

.field private mErrorAllocation:Landroid/renderscript/Allocation;

.field private mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

.field private mLoadingAllocation:Landroid/renderscript/Allocation;

.field private mPageAllocations:[Landroid/renderscript/Allocation;

.field private mPfColor:Landroid/renderscript/ProgramFragment;

.field private mPfPage:Landroid/renderscript/ProgramFragment;

.field private mPfPageLight:Landroid/renderscript/ProgramFragment;

.field private mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

.field private mPfPageLoading:Landroid/renderscript/ProgramFragment;

.field private mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

.field private mPfsPage:Landroid/renderscript/ProgramStore;

.field private mPfsPageOpaque:Landroid/renderscript/ProgramStore;

.field private mPfsReaderFadingIn:Landroid/renderscript/ProgramStore;

.field private mPrCullBack:Landroid/renderscript/ProgramRaster;

.field private mPrCullFront:Landroid/renderscript/ProgramRaster;

.field private mPvPage:Landroid/renderscript/ProgramVertex;

.field private mPvPageLight:Landroid/renderscript/ProgramVertex;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRes:Landroid/content/res/Resources;

.field private mSampler:Landroid/renderscript/Sampler;

.field private mSamplerMip:Landroid/renderscript/Sampler;

.field private mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

.field private mThemeNight:Z

.field private mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V
    .locals 2
    .parameter "rs"
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/renderscript/Allocation;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    .line 50
    const-string v0, "PageTurnRS"

    const-string v1, "Initializing PageTurnRS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private static buildBitmapOptionsARGB_8888()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 499
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 500
    return-object v0
.end method

.method private createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 368
    const-string v1, "missing bitmap"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    :goto_0
    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 373
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0

    .line 369
    .end local v0           #allocation:Landroid/renderscript/Allocation;
    :cond_0
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_0
.end method

.method private createEmptyBitmap(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 335
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    .line 336
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mThemeNight:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x100

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 339
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyAllocation:Landroid/renderscript/Allocation;

    .line 340
    return-void

    .line 337
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private init(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V
    .locals 33
    .parameter "rs"
    .parameter "context"

    .prologue
    .line 90
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    const/16 v29, 0x1

    move/from16 v8, v29

    .line 97
    .local v8, landscape:Z
    :goto_0
    new-instance v29, Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v31, v0

    const v32, 0x7f080007

    invoke-direct/range {v29 .. v32}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->get_NB_SAMPLES()I

    move-result v11

    .line 99
    .local v11, meshWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->get_MESH_HEIGHT_QUADS()I

    move-result v10

    .line 100
    .local v10, meshHeight:I
    new-instance v16, Lcom/google/android/apps/books/widget/ScriptField_Point_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    mul-int v30, v11, v10

    mul-int/lit8 v30, v30, 0x6

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 102
    .local v16, points:Lcom/google/android/apps/books/widget/ScriptField_Point_s;
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/app/BooksActivity;->isNightMode(Landroid/content/Context;)Z

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setThemeNight(Z)V

    .line 105
    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->createEmptyBitmap(II)V

    .line 106
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setErrorBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_point(Lcom/google/android/apps/books/widget/ScriptField_Point_s;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_landscape(Z)V

    .line 114
    new-instance v4, Landroid/renderscript/Mesh$AllocationBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object v0, v4

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 115
    .local v4, ab:Landroid/renderscript/Mesh$AllocationBuilder;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v29

    move-object v0, v4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 116
    sget-object v29, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    move-object v0, v4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 117
    invoke-virtual {v4}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v9

    .line 118
    .local v9, mesh:Landroid/renderscript/Mesh;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_mesh(Landroid/renderscript/Mesh;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f090006

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 122
    .local v5, bezierCurveData:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v30

    move-object v0, v5

    array-length v0, v0

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v6

    .line 124
    .local v6, bezierCurveDataAllocation:Landroid/renderscript/Allocation;
    invoke-virtual {v6, v5}, Landroid/renderscript/Allocation;->copyFrom([I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_bezierCurveData(Landroid/renderscript/Allocation;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_numBezierCurveDataPoints(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_initBezierCurveData()V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/renderscript/ProgramRaster;->CULL_BACK(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullBack:Landroid/renderscript/ProgramRaster;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullBack:Landroid/renderscript/ProgramRaster;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_prCullBack(Landroid/renderscript/ProgramRaster;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/renderscript/ProgramRaster;->CULL_FRONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullFront:Landroid/renderscript/ProgramRaster;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPrCullFront:Landroid/renderscript/ProgramRaster;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_prCullFront(Landroid/renderscript/ProgramRaster;)V

    .line 138
    new-instance v17, Landroid/renderscript/ProgramStore$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 139
    .local v17, programStoreBuilder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v29, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 140
    sget-object v29, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v30, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 141
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 142
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 143
    invoke-virtual/range {v17 .. v17}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPage:Landroid/renderscript/ProgramStore;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPage:Landroid/renderscript/ProgramStore;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfsPage(Landroid/renderscript/ProgramStore;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/renderscript/ProgramStore;->BLEND_NONE_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPageOpaque:Landroid/renderscript/ProgramStore;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsPageOpaque:Landroid/renderscript/ProgramStore;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfsPageOpaque(Landroid/renderscript/ProgramStore;)V

    .line 149
    new-instance v22, Landroid/renderscript/ProgramStore$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 150
    .local v22, readerFadingInBuilder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v29, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 152
    sget-object v29, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v30, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 153
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 154
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 155
    invoke-virtual/range {v17 .. v17}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsReaderFadingIn:Landroid/renderscript/ProgramStore;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfsReaderFadingIn:Landroid/renderscript/ProgramStore;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfsReaderFadingIn(Landroid/renderscript/ProgramStore;)V

    .line 159
    new-instance v23, Landroid/renderscript/Sampler$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 160
    .local v23, sampleBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v29, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 161
    sget-object v29, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 162
    sget-object v29, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 163
    sget-object v29, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 164
    invoke-virtual/range {v23 .. v23}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    .line 166
    new-instance v23, Landroid/renderscript/Sampler$Builder;

    .end local v23           #sampleBuilder:Landroid/renderscript/Sampler$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 167
    .restart local v23       #sampleBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v29, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 168
    sget-object v29, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 169
    sget-object v29, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 170
    sget-object v29, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 171
    const/high16 v29, 0x4100

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setAnisotropy(F)V

    .line 172
    invoke-virtual/range {v23 .. v23}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    .line 175
    new-instance v29, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-direct/range {v29 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_fsConstants(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;)V

    .line 179
    new-instance v12, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object v0, v12

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 180
    .local v12, pageBuilder:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f080002

    move-object v0, v12

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 181
    sget-object v29, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object v0, v12

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v29

    move-object v0, v12

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 183
    invoke-virtual {v12}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_1
    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPage:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPage(Landroid/renderscript/ProgramFragment;)V

    .line 189
    new-instance v13, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object v0, v13

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 190
    .local v13, pageLoadingBuilder:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f080006

    move-object v0, v13

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 191
    sget-object v29, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 192
    sget-object v29, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v29

    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 194
    invoke-virtual {v13}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_2
    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_3
    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPageLoading(Landroid/renderscript/ProgramFragment;)V

    .line 201
    new-instance v26, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 202
    .local v26, simpleBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v29, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v30, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 204
    invoke-virtual/range {v26 .. v26}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfSimpleTexture:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfSimpleTexture(Landroid/renderscript/ProgramFragment;)V

    .line 209
    new-instance v7, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 210
    .local v7, colorBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v29, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v30, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    const/16 v31, 0x0

    move-object v0, v7

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 212
    const/16 v29, 0x0

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 213
    invoke-virtual {v7}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfColor:Landroid/renderscript/ProgramFragment;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfColor:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfColor(Landroid/renderscript/ProgramFragment;)V

    .line 217
    new-instance v14, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 218
    .local v14, pfbLight:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f080003

    move-object v0, v14

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 219
    sget-object v29, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 221
    invoke-virtual {v14}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_4
    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLight:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPageLight(Landroid/renderscript/ProgramFragment;)V

    .line 227
    new-instance v15, Landroid/renderscript/ProgramFragment$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 228
    .local v15, pfbLightLoading:Landroid/renderscript/ProgramFragment$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f080004

    move-object v0, v15

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 229
    sget-object v29, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 230
    sget-object v29, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v29

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramFragment$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 232
    invoke-virtual {v15}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mFSConst:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_5
    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEnableHQFiltering:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSamplerMip:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    :goto_6
    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPfPageLightLoading:Landroid/renderscript/ProgramFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pfPageLightLoading(Landroid/renderscript/ProgramFragment;)V

    .line 239
    new-instance v20, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 240
    .local v20, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual/range {v20 .. v20}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPage:Landroid/renderscript/ProgramVertex;

    .line 242
    new-instance v19, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    .line 243
    .local v19, pva:Landroid/renderscript/ProgramVertexFixedFunction$Constants;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPage:Landroid/renderscript/ProgramVertex;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/renderscript/ProgramVertexFixedFunction;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 244
    new-instance v18, Landroid/renderscript/Matrix4f;

    invoke-direct/range {v18 .. v18}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 245
    .local v18, proj:Landroid/renderscript/Matrix4f;
    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 246
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPage:Landroid/renderscript/ProgramVertex;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pvPage(Landroid/renderscript/ProgramVertex;)V

    .line 251
    new-instance v29, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-direct/range {v29 .. v31}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bind_vsConstants(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;)V

    .line 253
    new-instance v21, Landroid/renderscript/ProgramVertex$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 254
    .local v21, pvbLight:Landroid/renderscript/ProgramVertex$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f080005

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramVertex$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertex$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 257
    invoke-virtual/range {v21 .. v21}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPageLight:Landroid/renderscript/ProgramVertex;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPageLight:Landroid/renderscript/ProgramVertex;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mVSConst:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/renderscript/ProgramVertex;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPvPageLight:Landroid/renderscript/ProgramVertex;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_pvPageLight(Landroid/renderscript/ProgramVertex;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_initTransformationMatrices()V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f02005a

    invoke-static {}, Lcom/google/android/apps/books/widget/PageTurnRS;->buildBitmapOptionsARGB_8888()Landroid/graphics/BitmapFactory$Options;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 266
    .local v25, shadowBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v24

    .line 268
    .local v24, shadowAllocation:Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_tShadow(Landroid/renderscript/Allocation;)V

    .line 269
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f02005b

    invoke-static {}, Lcom/google/android/apps/books/widget/PageTurnRS;->buildBitmapOptionsARGB_8888()Landroid/graphics/BitmapFactory$Options;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 274
    .local v28, spineBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v27

    .line 276
    .local v27, spineAllocation:Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_tSpine(Landroid/renderscript/Allocation;)V

    .line 277
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/widget/PageTurnRS;->resetZoom()V

    .line 281
    return-void

    .line 93
    .end local v4           #ab:Landroid/renderscript/Mesh$AllocationBuilder;
    .end local v5           #bezierCurveData:[I
    .end local v6           #bezierCurveDataAllocation:Landroid/renderscript/Allocation;
    .end local v7           #colorBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .end local v8           #landscape:Z
    .end local v9           #mesh:Landroid/renderscript/Mesh;
    .end local v10           #meshHeight:I
    .end local v11           #meshWidth:I
    .end local v12           #pageBuilder:Landroid/renderscript/ProgramFragment$Builder;
    .end local v13           #pageLoadingBuilder:Landroid/renderscript/ProgramFragment$Builder;
    .end local v14           #pfbLight:Landroid/renderscript/ProgramFragment$Builder;
    .end local v15           #pfbLightLoading:Landroid/renderscript/ProgramFragment$Builder;
    .end local v16           #points:Lcom/google/android/apps/books/widget/ScriptField_Point_s;
    .end local v17           #programStoreBuilder:Landroid/renderscript/ProgramStore$Builder;
    .end local v18           #proj:Landroid/renderscript/Matrix4f;
    .end local v19           #pva:Landroid/renderscript/ProgramVertexFixedFunction$Constants;
    .end local v20           #pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    .end local v21           #pvbLight:Landroid/renderscript/ProgramVertex$Builder;
    .end local v22           #readerFadingInBuilder:Landroid/renderscript/ProgramStore$Builder;
    .end local v23           #sampleBuilder:Landroid/renderscript/Sampler$Builder;
    .end local v24           #shadowAllocation:Landroid/renderscript/Allocation;
    .end local v25           #shadowBitmap:Landroid/graphics/Bitmap;
    .end local v26           #simpleBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .end local v27           #spineAllocation:Landroid/renderscript/Allocation;
    .end local v28           #spineBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_0
    const/16 v29, 0x0

    move/from16 v8, v29

    goto/16 :goto_0

    .line 185
    .restart local v4       #ab:Landroid/renderscript/Mesh$AllocationBuilder;
    .restart local v5       #bezierCurveData:[I
    .restart local v6       #bezierCurveDataAllocation:Landroid/renderscript/Allocation;
    .restart local v8       #landscape:Z
    .restart local v9       #mesh:Landroid/renderscript/Mesh;
    .restart local v10       #meshHeight:I
    .restart local v11       #meshWidth:I
    .restart local v12       #pageBuilder:Landroid/renderscript/ProgramFragment$Builder;
    .restart local v16       #points:Lcom/google/android/apps/books/widget/ScriptField_Point_s;
    .restart local v17       #programStoreBuilder:Landroid/renderscript/ProgramStore$Builder;
    .restart local v22       #readerFadingInBuilder:Landroid/renderscript/ProgramStore$Builder;
    .restart local v23       #sampleBuilder:Landroid/renderscript/Sampler$Builder;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_1

    .line 196
    .restart local v13       #pageLoadingBuilder:Landroid/renderscript/ProgramFragment$Builder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_2

    .line 197
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_3

    .line 223
    .restart local v7       #colorBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .restart local v14       #pfbLight:Landroid/renderscript/ProgramFragment$Builder;
    .restart local v26       #simpleBuilder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_4

    .line 234
    .restart local v15       #pfbLightLoading:Landroid/renderscript/ProgramFragment$Builder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_5

    .line 235
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnRS;->mSampler:Landroid/renderscript/Sampler;

    move-object/from16 v30, v0

    goto/16 :goto_6
.end method

.method private normalizePageNumber(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 297
    :goto_0
    if-gez p1, :cond_0

    .line 298
    add-int/lit8 p1, p1, 0x6

    goto :goto_0

    .line 300
    :cond_0
    rem-int/lit8 v0, p1, 0x6

    return v0
.end method


# virtual methods
.method public finishOpening(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_animateTransitionToNextPage(I)V

    .line 481
    return-void
.end method

.method public declared-synchronized getTallestCurrentAspectRatio()F
    .locals 6

    .prologue
    .line 420
    monitor-enter p0

    const/4 v3, 0x0

    .line 421
    .local v3, minimumAspectRatioSeen:F
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    if-eqz v4, :cond_2

    .line 422
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 423
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 424
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 425
    .local v0, allocType:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 426
    .local v1, aspectRatio:F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    .line 427
    :cond_0
    move v3, v1

    .line 422
    .end local v0           #allocType:Landroid/renderscript/Type;
    .end local v1           #aspectRatio:F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v2           #i:I
    :cond_2
    monitor-exit p0

    return v3

    .line 420
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getWidestCurrentAspectRatio()F
    .locals 6

    .prologue
    .line 402
    monitor-enter p0

    const/4 v3, 0x0

    .line 403
    .local v3, maximumAspectRatioSeen:F
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    if-eqz v4, :cond_1

    .line 404
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 405
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 406
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 407
    .local v0, allocType:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 408
    .local v1, aspectRatio:F
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 404
    .end local v0           #allocType:Landroid/renderscript/Type;
    .end local v1           #aspectRatio:F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    .end local v2           #i:I
    :cond_1
    monitor-exit p0

    return v3

    .line 402
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public pauseRendering()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 290
    return-void
.end method

.method public resetZoom()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 488
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->setZoom(FFF)V

    .line 489
    return-void
.end method

.method public resumeRendering()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 294
    return-void
.end method

.method public setAnchorIndex(I)V
    .locals 1
    .parameter "anchorIndex"

    .prologue
    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    .line 353
    return-void
.end method

.method public setErrorBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mErrorAllocation:Landroid/renderscript/Allocation;

    .line 321
    .local v0, stale:Landroid/renderscript/Allocation;
    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mErrorAllocation:Landroid/renderscript/Allocation;

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 326
    :cond_0
    return-void

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x1

    .line 305
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v2, v3

    .line 306
    .local v2, width:I
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v0, v3

    .line 307
    .local v0, height:I
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->createEmptyBitmap(II)V

    .line 309
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mLoadingAllocation:Landroid/renderscript/Allocation;

    .line 310
    .local v1, stale:Landroid/renderscript/Allocation;
    if-eqz p1, :cond_3

    move-object v3, p1

    :goto_2
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mLoadingAllocation:Landroid/renderscript/Allocation;

    .line 312
    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 316
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mLoadingAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_tLoading(Landroid/renderscript/Allocation;)V

    .line 317
    return-void

    .end local v0           #height:I
    .end local v1           #stale:Landroid/renderscript/Allocation;
    .end local v2           #width:I
    :cond_1
    move v2, v4

    .line 305
    goto :goto_0

    .restart local v2       #width:I
    :cond_2
    move v0, v4

    .line 306
    goto :goto_1

    .line 310
    .restart local v0       #height:I
    .restart local v1       #stale:Landroid/renderscript/Allocation;
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyBitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public declared-synchronized setPageEmpty(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v0

    .line 381
    .local v0, slot:I
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 377
    .end local v0           #slot:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPageError(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v0

    .line 394
    .local v0, slot:I
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mErrorAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 393
    .end local v0           #slot:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPageLoading(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v0

    .line 389
    .local v0, slot:I
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mEmptyAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 385
    .end local v0           #slot:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPageToBitmap(ILandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "index"
    .parameter "bitmap"

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    const-string v4, "missing bitmap"

    invoke-static {p2, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-lt p1, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mAnchorIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-le p1, v4, :cond_2

    .line 441
    :cond_0
    const-string v4, "PageTurnRS"

    const-string v5, "setPageToBitmap() delivered texture outside of neighborhood, ignoring"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result v2

    .line 446
    .local v2, slot:I
    const/4 v3, 0x0

    .line 448
    .local v3, stale:Landroid/renderscript/Allocation;
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    if-nez v4, :cond_3

    .line 449
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v2

    .line 466
    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v1, v4, v2

    .line 467
    .local v1, allocation:Landroid/renderscript/Allocation;
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v1, v5}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setPage(ILandroid/renderscript/Allocation;Z)V

    .line 470
    if-eqz v3, :cond_1

    .line 471
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 436
    .end local v1           #allocation:Landroid/renderscript/Allocation;
    .end local v2           #slot:I
    .end local v3           #stale:Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 451
    .restart local v2       #slot:I
    .restart local v3       #stale:Landroid/renderscript/Allocation;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 452
    .local v0, allocType:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 454
    :cond_4
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v3, v4, v2

    .line 455
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_1

    .line 458
    :cond_5
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mPageAllocations:[Landroid/renderscript/Allocation;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setShouldFadeIn(Z)V
    .locals 1
    .parameter "fade"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setShouldFadeIn(Z)V

    .line 477
    return-void
.end method

.method public setThemeNight(Z)V
    .locals 1
    .parameter "themeNight"

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mThemeNight:Z

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->set_themeNight(Z)V

    .line 494
    return-void
.end method

.method public declared-synchronized setTurnState(IFIZ)V
    .locals 1
    .parameter "index"
    .parameter "fraction"
    .parameter "direction"
    .parameter "movingToNewPosition"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setAnchorIndex(I)V

    .line 363
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->normalizePageNumber(I)I

    move-result p1

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_setTurnState(IFIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setZoom(FFF)V
    .locals 1
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_zoom(FFF)V

    .line 485
    return-void
.end method

.method public surfaceChanged()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnRS;->mScript:Lcom/google/android/apps/books/widget/ScriptC_pageturn;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke_initTransformationMatrices()V

    .line 285
    return-void
.end method
