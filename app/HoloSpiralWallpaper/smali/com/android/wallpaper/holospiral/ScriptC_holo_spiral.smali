.class public Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_holo_spiral.java"


# instance fields
.field private mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gFarPlane:F

.field private mExportVar_gInnerGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_gNearPlane:F

.field private mExportVar_gOuterGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFGeometry:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPSGeometry:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPVGeometry:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPointTexture:Landroid/renderscript/Allocation;

.field private mExportVar_gVSConstants:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

.field private mExportVar_gXOffset:F


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 0
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public bind_gVSConstants(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xd

    .line 181
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gVSConstants:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    .line 182
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public invoke_resize(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 204
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 205
    .local v0, resize_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 206
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 208
    return-void
.end method

.method public set_gBackgroundMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 128
    return-void
.end method

.method public set_gFarPlane(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    iput p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gFarPlane:F

    .line 171
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(IF)V

    .line 172
    return-void
.end method

.method public set_gInnerGeometry(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gInnerGeometry:Landroid/renderscript/Mesh;

    .line 105
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 106
    return-void
.end method

.method public set_gNearPlane(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    iput p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gNearPlane:F

    .line 160
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(IF)V

    .line 161
    return-void
.end method

.method public set_gOuterGeometry(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gOuterGeometry:Landroid/renderscript/Mesh;

    .line 116
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 117
    return-void
.end method

.method public set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 62
    return-void
.end method

.method public set_gPFGeometry(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPFGeometry:Landroid/renderscript/ProgramFragment;

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 73
    return-void
.end method

.method public set_gPSBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 84
    return-void
.end method

.method public set_gPSGeometry(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPSGeometry:Landroid/renderscript/ProgramStore;

    .line 94
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 95
    return-void
.end method

.method public set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 40
    return-void
.end method

.method public set_gPVGeometry(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPVGeometry:Landroid/renderscript/ProgramVertex;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 51
    return-void
.end method

.method public set_gPointTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPointTexture:Landroid/renderscript/Allocation;

    .line 138
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 139
    return-void
.end method

.method public set_gXOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iput p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gXOffset:F

    .line 149
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->setVar(IF)V

    .line 150
    return-void
.end method
