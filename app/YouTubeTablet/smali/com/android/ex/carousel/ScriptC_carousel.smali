.class public Lcom/android/ex/carousel/ScriptC_carousel;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_carousel.java"


# instance fields
.field private mExportVar_backgroundColor:Landroid/renderscript/Float4;

.field private mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

.field private mExportVar_cardCreationFadeDuration:I

.field private mExportVar_cardRotation:F

.field private mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

.field private mExportVar_cardsFaceTangent:Z

.field private mExportVar_debugCamera:Z

.field private mExportVar_debugDetails:Z

.field private mExportVar_debugGeometryLoading:Z

.field private mExportVar_debugRays:Z

.field private mExportVar_debugRendering:Z

.field private mExportVar_debugSelection:Z

.field private mExportVar_debugTextureLoading:Z

.field private mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

.field private mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_defaultTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailTextureAlignment:I

.field private mExportVar_dragFactor:F

.field private mExportVar_dragModel:I

.field private mExportVar_drawRuler:Z

.field private mExportVar_fadeInDuration:I

.field private mExportVar_fillDirection:I

.field private mExportVar_firstCardTop:Z

.field private mExportVar_frictionCoeff:F

.field private mExportVar_linearClamp:Landroid/renderscript/Sampler;

.field private mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_loadingTexture:Landroid/renderscript/Allocation;

.field private mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_prefetchCardCount:I

.field private mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

.field private mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

.field private mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

.field private mExportVar_rezInCardCount:F

.field private mExportVar_rowCount:I

.field private mExportVar_rowSpacing:F

.field private mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

.field private mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_slotCount:I

.field private mExportVar_startAngle:F

.field private mExportVar_swaySensitivity:F

.field private mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

.field private mExportVar_visibleDetailCount:I

.field private mExportVar_visibleSlotCount:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 17
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugCamera:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugSelection:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugTextureLoading:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugGeometryLoading:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugDetails:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRendering:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRays:Z

    .line 24
    iput v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    .line 25
    return-void
.end method


# virtual methods
.method public bind_cards(Lcom/android/ex/carousel/ScriptField_Card;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x7

    .line 72
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

    .line 73
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_Card;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_programStoresCard(Lcom/android/ex/carousel/ScriptField_ProgramStore_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x21

    .line 361
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    .line 362
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_shaderConstants(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x34

    .line 577
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    .line 578
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public invoke_createCards(II)V
    .locals 2
    .parameter "start"
    .parameter "total"

    .prologue
    .line 606
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 607
    .local v0, createCards_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 608
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 609
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 610
    return-void
.end method

.method public invoke_doLongPress()V
    .locals 1

    .prologue
    .line 716
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(I)V

    .line 717
    return-void
.end method

.method public invoke_doMotion(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 721
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 722
    .local v0, doMotion_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 723
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 724
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 725
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 726
    return-void
.end method

.method public invoke_doStart(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 698
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 699
    .local v0, doStart_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 700
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 701
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 702
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 703
    return-void
.end method

.method public invoke_doStop(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 707
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 708
    .local v0, doStop_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 709
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 710
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 711
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 712
    return-void
.end method

.method public invoke_invalidateDetailTexture(IZ)V
    .locals 2
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 658
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 659
    .local v0, invalidateDetailTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 660
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 661
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 662
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 663
    return-void
.end method

.method public invoke_invalidateTexture(IZ)V
    .locals 2
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 649
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 650
    .local v0, invalidateTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 651
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 652
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 653
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 654
    return-void
.end method

.method public invoke_lookAt(FFFFFFFFF)V
    .locals 2
    .parameter "fromX"
    .parameter "fromY"
    .parameter "fromZ"
    .parameter "atX"
    .parameter "atY"
    .parameter "atZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    .line 614
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 615
    .local v0, lookAt_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 616
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 617
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 618
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 619
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 620
    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 621
    invoke-virtual {v0, p7}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 622
    invoke-virtual {v0, p8}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 623
    invoke-virtual {v0, p9}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 624
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 625
    return-void
.end method

.method public invoke_setCarouselRotationAngle(F)V
    .locals 2
    .parameter "carouselRotationAngle"

    .prologue
    .line 691
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 692
    .local v0, setCarouselRotationAngle_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 693
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 694
    return-void
.end method

.method public invoke_setDetailTexture(IFFFFLandroid/renderscript/Allocation;)V
    .locals 2
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "texture"

    .prologue
    .line 637
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 638
    .local v0, setDetailTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 639
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 640
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 641
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 642
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 643
    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 644
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 645
    return-void
.end method

.method public invoke_setGeometry(ILandroid/renderscript/Mesh;)V
    .locals 2
    .parameter "n"
    .parameter "geometry"

    .prologue
    .line 667
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 668
    .local v0, setGeometry_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 669
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 670
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 671
    return-void
.end method

.method public invoke_setMatrix(ILandroid/renderscript/Matrix4f;)V
    .locals 2
    .parameter "n"
    .parameter "matrix"

    .prologue
    .line 675
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 676
    .local v0, setMatrix_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 677
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 678
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 679
    return-void
.end method

.method public invoke_setProgramStoresCard(ILandroid/renderscript/ProgramStore;)V
    .locals 2
    .parameter "n"
    .parameter "programStore"

    .prologue
    .line 683
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 684
    .local v0, setProgramStoresCard_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 685
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 686
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 687
    return-void
.end method

.method public invoke_setRadius(F)V
    .locals 2
    .parameter "rad"

    .prologue
    .line 599
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 600
    .local v0, setRadius_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 601
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 602
    return-void
.end method

.method public invoke_setTexture(ILandroid/renderscript/Allocation;)V
    .locals 2
    .parameter "n"
    .parameter "texture"

    .prologue
    .line 629
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 630
    .local v0, setTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 631
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 632
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 633
    return-void
.end method

.method public set_backgroundColor(Landroid/renderscript/Float4;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundColor:Landroid/renderscript/Float4;

    .line 294
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 295
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 296
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 297
    return-void
.end method

.method public set_backgroundTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

    .line 484
    const/16 v0, 0x2c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 485
    return-void
.end method

.method public set_cardCreationFadeDuration(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 260
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCreationFadeDuration:I

    .line 261
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 262
    return-void
.end method

.method public set_cardRotation(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardRotation:F

    .line 195
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 196
    return-void
.end method

.method public set_cardsFaceTangent(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardsFaceTangent:Z

    .line 206
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    .line 207
    return-void
.end method

.method public set_defaultCardMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

    .line 539
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 540
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 541
    const/16 v1, 0x31

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 542
    return-void
.end method

.method public set_defaultGeometry(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

    .line 517
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 518
    return-void
.end method

.method public set_defaultTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultTexture:Landroid/renderscript/Allocation;

    .line 462
    const/16 v0, 0x2a

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 463
    return-void
.end method

.method public set_detailLineTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

    .line 495
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 496
    return-void
.end method

.method public set_detailLoadingTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

    .line 506
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 507
    return-void
.end method

.method public set_detailTextureAlignment(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 161
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailTextureAlignment:I

    .line 162
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 163
    return-void
.end method

.method public set_dragFactor(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 238
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragFactor:F

    .line 239
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 240
    return-void
.end method

.method public set_dragModel(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 339
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    .line 340
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 341
    return-void
.end method

.method public set_drawRuler(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_drawRuler:Z

    .line 173
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    .line 174
    return-void
.end method

.method public set_fadeInDuration(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 249
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fadeInDuration:I

    .line 250
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 251
    return-void
.end method

.method public set_fillDirection(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 350
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fillDirection:I

    .line 351
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 352
    return-void
.end method

.method public set_firstCardTop(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_firstCardTop:Z

    .line 329
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    .line 330
    return-void
.end method

.method public set_frictionCoeff(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 227
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_frictionCoeff:F

    .line 228
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 229
    return-void
.end method

.method public set_linearClamp(Landroid/renderscript/Sampler;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_linearClamp:Landroid/renderscript/Sampler;

    .line 590
    const/16 v0, 0x35

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 591
    return-void
.end method

.method public set_loadingGeometry(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

    .line 528
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 529
    return-void
.end method

.method public set_loadingTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingTexture:Landroid/renderscript/Allocation;

    .line 473
    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 474
    return-void
.end method

.method public set_multiTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 429
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 430
    return-void
.end method

.method public set_multiTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 418
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 419
    return-void
.end method

.method public set_prefetchCardCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_prefetchCardCount:I

    .line 151
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 152
    return-void
.end method

.method public set_programStoreBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

    .line 374
    const/16 v0, 0x22

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 375
    return-void
.end method

.method public set_programStoreDetail(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

    .line 385
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 386
    return-void
.end method

.method public set_rasterProgram(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

    .line 451
    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 452
    return-void
.end method

.method public set_rezInCardCount(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rezInCardCount:F

    .line 272
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 273
    return-void
.end method

.method public set_rowCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 306
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowCount:I

    .line 307
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 308
    return-void
.end method

.method public set_rowSpacing(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 317
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowSpacing:F

    .line 318
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 319
    return-void
.end method

.method public set_singleTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 407
    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 408
    return-void
.end method

.method public set_singleTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 396
    const/16 v0, 0x24

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 397
    return-void
.end method

.method public set_slotCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_slotCount:I

    .line 96
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 97
    return-void
.end method

.method public set_startAngle(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_startAngle:F

    .line 85
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 86
    return-void
.end method

.method public set_swaySensitivity(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 216
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_swaySensitivity:F

    .line 217
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 218
    return-void
.end method

.method public set_vertexProgram(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

    .line 440
    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 441
    return-void
.end method

.method public set_visibleDetailCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleDetailCount:I

    .line 140
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 141
    return-void
.end method

.method public set_visibleSlotCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleSlotCount:I

    .line 129
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 130
    return-void
.end method
