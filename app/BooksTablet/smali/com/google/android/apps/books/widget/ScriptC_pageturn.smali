.class public Lcom/google/android/apps/books/widget/ScriptC_pageturn;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_pageturn.java"


# static fields
.field private static final mExportFuncIdx_animateTransitionToNextPage:I = 0x5

.field private static final mExportFuncIdx_initBezierCurveData:I = 0x0

.field private static final mExportFuncIdx_initTransformationMatrices:I = 0x1

.field private static final mExportFuncIdx_setPage:I = 0x2

.field private static final mExportFuncIdx_setShouldFadeIn:I = 0x6

.field private static final mExportFuncIdx_setTurnState:I = 0x4

.field private static final mExportFuncIdx_zoom:I = 0x3

.field private static final mExportVarIdx_MESH_HEIGHT_QUADS:I = 0x1b

.field private static final mExportVarIdx_NB_SAMPLES:I = 0x1a

.field private static final mExportVarIdx_animating:I = 0x0

.field private static final mExportVarIdx_bezierCurveData:I = 0x8

.field private static final mExportVarIdx_fsConstants:I = 0x5

.field private static final mExportVarIdx_landscape:I = 0x2

.field private static final mExportVarIdx_mesh:I = 0x7

.field private static final mExportVarIdx_numBezierCurveDataPoints:I = 0x9

.field private static final mExportVarIdx_pfColor:I = 0x14

.field private static final mExportVarIdx_pfPage:I = 0xf

.field private static final mExportVarIdx_pfPageLight:I = 0x11

.field private static final mExportVarIdx_pfPageLightLoading:I = 0x12

.field private static final mExportVarIdx_pfPageLoading:I = 0x10

.field private static final mExportVarIdx_pfSimpleTexture:I = 0x13

.field private static final mExportVarIdx_pfsPage:I = 0xa

.field private static final mExportVarIdx_pfsPageOpaque:I = 0xb

.field private static final mExportVarIdx_pfsReaderFadingIn:I = 0xc

.field private static final mExportVarIdx_point:I = 0x6

.field private static final mExportVarIdx_prCullBack:I = 0xe

.field private static final mExportVarIdx_prCullFront:I = 0xd

.field private static final mExportVarIdx_pvPage:I = 0x15

.field private static final mExportVarIdx_pvPageLight:I = 0x16

.field private static final mExportVarIdx_tLoading:I = 0x19

.field private static final mExportVarIdx_tShadow:I = 0x17

.field private static final mExportVarIdx_tSpine:I = 0x18

.field private static final mExportVarIdx_themeNight:I = 0x3

.field private static final mExportVarIdx_updating:I = 0x1

.field private static final mExportVarIdx_vsConstants:I = 0x4


# instance fields
.field private mExportVar_MESH_HEIGHT_QUADS:I

.field private mExportVar_NB_SAMPLES:I

.field private mExportVar_animating:Z

.field private mExportVar_bezierCurveData:Landroid/renderscript/Allocation;

.field private mExportVar_fsConstants:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

.field private mExportVar_landscape:Z

.field private mExportVar_mesh:Landroid/renderscript/Mesh;

.field private mExportVar_numBezierCurveDataPoints:I

.field private mExportVar_pfColor:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPage:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPageLight:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPageLightLoading:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfPageLoading:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfSimpleTexture:Landroid/renderscript/ProgramFragment;

.field private mExportVar_pfsPage:Landroid/renderscript/ProgramStore;

.field private mExportVar_pfsPageOpaque:Landroid/renderscript/ProgramStore;

.field private mExportVar_pfsReaderFadingIn:Landroid/renderscript/ProgramStore;

.field private mExportVar_point:Lcom/google/android/apps/books/widget/ScriptField_Point_s;

.field private mExportVar_prCullBack:Landroid/renderscript/ProgramRaster;

.field private mExportVar_prCullFront:Landroid/renderscript/ProgramRaster;

.field private mExportVar_pvPage:Landroid/renderscript/ProgramVertex;

.field private mExportVar_pvPageLight:Landroid/renderscript/ProgramVertex;

.field private mExportVar_tLoading:Landroid/renderscript/Allocation;

.field private mExportVar_tShadow:Landroid/renderscript/Allocation;

.field private mExportVar_tSpine:Landroid/renderscript/Allocation;

.field private mExportVar_themeNight:Z

.field private mExportVar_updating:Z

.field private mExportVar_vsConstants:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_NB_SAMPLES:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_MESH_HEIGHT_QUADS:I

    .line 19
    return-void
.end method


# virtual methods
.method public bind_bezierCurveData(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 115
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_bezierCurveData:Landroid/renderscript/Allocation;

    .line 116
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_fsConstants(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x5

    .line 80
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_fsConstants:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_point(Lcom/google/android/apps/books/widget/ScriptField_Point_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x6

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_point:Lcom/google/android/apps/books/widget/ScriptField_Point_s;

    .line 93
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vsConstants(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x4

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_vsConstants:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    .line 69
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public get_MESH_HEIGHT_QUADS()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_MESH_HEIGHT_QUADS:I

    return v0
.end method

.method public get_NB_SAMPLES()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_NB_SAMPLES:I

    return v0
.end method

.method public get_animating()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_animating:Z

    return v0
.end method

.method public get_bezierCurveData()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_bezierCurveData:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_fsConstants()Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_fsConstants:Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;

    return-object v0
.end method

.method public get_landscape()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_landscape:Z

    return v0
.end method

.method public get_mesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_mesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_numBezierCurveDataPoints()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_numBezierCurveDataPoints:I

    return v0
.end method

.method public get_pfColor()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfColor:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_pfPage()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPage:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_pfPageLight()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLight:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_pfPageLightLoading()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLightLoading:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_pfPageLoading()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLoading:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_pfSimpleTexture()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfSimpleTexture:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_pfsPage()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsPage:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_pfsPageOpaque()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsPageOpaque:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_pfsReaderFadingIn()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsReaderFadingIn:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_point()Lcom/google/android/apps/books/widget/ScriptField_Point_s;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_point:Lcom/google/android/apps/books/widget/ScriptField_Point_s;

    return-object v0
.end method

.method public get_prCullBack()Landroid/renderscript/ProgramRaster;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_prCullBack:Landroid/renderscript/ProgramRaster;

    return-object v0
.end method

.method public get_prCullFront()Landroid/renderscript/ProgramRaster;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_prCullFront:Landroid/renderscript/ProgramRaster;

    return-object v0
.end method

.method public get_pvPage()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pvPage:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_pvPageLight()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pvPageLight:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_tLoading()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tLoading:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_tShadow()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tShadow:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_tSpine()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tSpine:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_themeNight()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_themeNight:Z

    return v0
.end method

.method public get_updating()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_updating:Z

    return v0
.end method

.method public get_vsConstants()Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_vsConstants:Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;

    return-object v0
.end method

.method public invoke_animateTransitionToNextPage(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 365
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 366
    .local v0, animateTransitionToNextPage_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 367
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 368
    return-void
.end method

.method public invoke_initBezierCurveData()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(I)V

    .line 326
    return-void
.end method

.method public invoke_initTransformationMatrices()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(I)V

    .line 331
    return-void
.end method

.method public invoke_setPage(ILandroid/renderscript/Allocation;Z)V
    .locals 2
    .parameter "slot"
    .parameter "texture"
    .parameter "validData"

    .prologue
    .line 335
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 336
    .local v0, setPage_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 337
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 338
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 339
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 340
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 341
    return-void
.end method

.method public invoke_setShouldFadeIn(Z)V
    .locals 2
    .parameter "fade"

    .prologue
    .line 372
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 373
    .local v0, setShouldFadeIn_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 374
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 375
    return-void
.end method

.method public invoke_setTurnState(IFIZ)V
    .locals 2
    .parameter "currentPageIndex"
    .parameter "inFractionTurned"
    .parameter "direction"
    .parameter "movingToNewPosition"

    .prologue
    .line 354
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 355
    .local v0, setTurnState_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 356
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 357
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 358
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 359
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 360
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 361
    return-void
.end method

.method public invoke_zoom(FFF)V
    .locals 2
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 346
    .local v0, zoom_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 347
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 348
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 349
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 350
    return-void
.end method

.method public set_animating(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_animating:Z

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(IZ)V

    .line 26
    return-void
.end method

.method public set_landscape(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_landscape:Z

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(IZ)V

    .line 48
    return-void
.end method

.method public set_mesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_mesh:Landroid/renderscript/Mesh;

    .line 105
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 106
    return-void
.end method

.method public set_numBezierCurveDataPoints(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_numBezierCurveDataPoints:I

    .line 128
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(II)V

    .line 129
    return-void
.end method

.method public set_pfColor(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfColor:Landroid/renderscript/ProgramFragment;

    .line 249
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 250
    return-void
.end method

.method public set_pfPage(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPage:Landroid/renderscript/ProgramFragment;

    .line 194
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 195
    return-void
.end method

.method public set_pfPageLight(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLight:Landroid/renderscript/ProgramFragment;

    .line 216
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 217
    return-void
.end method

.method public set_pfPageLightLoading(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLightLoading:Landroid/renderscript/ProgramFragment;

    .line 227
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 228
    return-void
.end method

.method public set_pfPageLoading(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfPageLoading:Landroid/renderscript/ProgramFragment;

    .line 205
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 206
    return-void
.end method

.method public set_pfSimpleTexture(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfSimpleTexture:Landroid/renderscript/ProgramFragment;

    .line 238
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 239
    return-void
.end method

.method public set_pfsPage(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsPage:Landroid/renderscript/ProgramStore;

    .line 139
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 140
    return-void
.end method

.method public set_pfsPageOpaque(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsPageOpaque:Landroid/renderscript/ProgramStore;

    .line 150
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 151
    return-void
.end method

.method public set_pfsReaderFadingIn(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pfsReaderFadingIn:Landroid/renderscript/ProgramStore;

    .line 161
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 162
    return-void
.end method

.method public set_prCullBack(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_prCullBack:Landroid/renderscript/ProgramRaster;

    .line 183
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 184
    return-void
.end method

.method public set_prCullFront(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_prCullFront:Landroid/renderscript/ProgramRaster;

    .line 172
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 173
    return-void
.end method

.method public set_pvPage(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pvPage:Landroid/renderscript/ProgramVertex;

    .line 260
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 261
    return-void
.end method

.method public set_pvPageLight(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_pvPageLight:Landroid/renderscript/ProgramVertex;

    .line 271
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 272
    return-void
.end method

.method public set_tLoading(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tLoading:Landroid/renderscript/Allocation;

    .line 304
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 305
    return-void
.end method

.method public set_tShadow(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tShadow:Landroid/renderscript/Allocation;

    .line 282
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 283
    return-void
.end method

.method public set_tSpine(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_tSpine:Landroid/renderscript/Allocation;

    .line 293
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 294
    return-void
.end method

.method public set_themeNight(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_themeNight:Z

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(IZ)V

    .line 59
    return-void
.end method

.method public set_updating(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->mExportVar_updating:Z

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/widget/ScriptC_pageturn;->setVar(IZ)V

    .line 37
    return-void
.end method
