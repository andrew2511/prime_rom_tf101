.class public Lcom/android/launcher2/ScriptC_allapps;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_allapps.java"


# instance fields
.field private mExportVar_COLUMNS_PER_PAGE_LANDSCAPE:I

.field private mExportVar_COLUMNS_PER_PAGE_PORTRAIT:I

.field private mExportVar_ROWS_PER_PAGE_LANDSCAPE:I

.field private mExportVar_ROWS_PER_PAGE_PORTRAIT:I

.field private mExportVar_gHomeButton:Landroid/renderscript/Allocation;

.field private mExportVar_gIconCount:I

.field private mExportVar_gIcons:Landroid/renderscript/Allocation;

.field private mExportVar_gLabels:Landroid/renderscript/Allocation;

.field private mExportVar_gPFTexMip:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFTexMipAlpha:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFTexNearest:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPS:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVCurve:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gSMCell:Landroid/renderscript/Mesh;

.field private mExportVar_gSelectedIconIndex:I

.field private mExportVar_gSelectedIconTexture:Landroid/renderscript/Allocation;

.field private mExportVar_vpConstants:Lcom/android/launcher2/ScriptField_VpConsts;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gSelectedIconIndex:I

    .line 34
    return-void
.end method


# virtual methods
.method public bind_gIcons(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xe

    .line 193
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gIcons:Landroid/renderscript/Allocation;

    .line 194
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/ScriptC_allapps;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gLabels(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xf

    .line 205
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gLabels:Landroid/renderscript/Allocation;

    .line 206
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/ScriptC_allapps;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vpConstants(Lcom/android/launcher2/ScriptField_VpConsts;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x10

    .line 217
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_vpConstants:Lcom/android/launcher2/ScriptField_VpConsts;

    .line 218
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/ScriptField_VpConsts;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public get_gIconCount()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gIconCount:I

    return v0
.end method

.method public get_gSelectedIconIndex()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gSelectedIconIndex:I

    return v0
.end method

.method public invoke_fling(FF)V
    .locals 2
    .parameter "newPos"
    .parameter "vel"

    .prologue
    .line 272
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 273
    .local v0, fling_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 274
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 275
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/ScriptC_allapps;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 276
    return-void
.end method

.method public invoke_move(F)V
    .locals 2
    .parameter "newPos"

    .prologue
    .line 250
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 251
    .local v0, move_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/ScriptC_allapps;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 253
    return-void
.end method

.method public invoke_moveTo(F)V
    .locals 2
    .parameter "targetPos"

    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 258
    .local v0, moveTo_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/ScriptC_allapps;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 260
    return-void
.end method

.method public invoke_setZoom(FI)V
    .locals 2
    .parameter "z"
    .parameter "animate"

    .prologue
    .line 264
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 265
    .local v0, setZoom_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 266
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 267
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/ScriptC_allapps;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 268
    return-void
.end method

.method public set_COLUMNS_PER_PAGE_LANDSCAPE(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_COLUMNS_PER_PAGE_LANDSCAPE:I

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(II)V

    .line 63
    return-void
.end method

.method public set_COLUMNS_PER_PAGE_PORTRAIT(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_COLUMNS_PER_PAGE_PORTRAIT:I

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(II)V

    .line 41
    return-void
.end method

.method public set_ROWS_PER_PAGE_LANDSCAPE(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_ROWS_PER_PAGE_LANDSCAPE:I

    .line 73
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(II)V

    .line 74
    return-void
.end method

.method public set_ROWS_PER_PAGE_PORTRAIT(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_ROWS_PER_PAGE_PORTRAIT:I

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(II)V

    .line 52
    return-void
.end method

.method public set_gHomeButton(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gHomeButton:Landroid/renderscript/Allocation;

    .line 117
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 118
    return-void
.end method

.method public set_gIconCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gIconCount:I

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(II)V

    .line 85
    return-void
.end method

.method public set_gPFTexMip(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gPFTexMip:Landroid/renderscript/ProgramFragment;

    .line 139
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 140
    return-void
.end method

.method public set_gPFTexMipAlpha(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gPFTexMipAlpha:Landroid/renderscript/ProgramFragment;

    .line 150
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 151
    return-void
.end method

.method public set_gPFTexNearest(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gPFTexNearest:Landroid/renderscript/ProgramFragment;

    .line 128
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 129
    return-void
.end method

.method public set_gPS(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gPS:Landroid/renderscript/ProgramStore;

    .line 172
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 173
    return-void
.end method

.method public set_gPVCurve(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gPVCurve:Landroid/renderscript/ProgramVertex;

    .line 161
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 162
    return-void
.end method

.method public set_gSMCell(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gSMCell:Landroid/renderscript/Mesh;

    .line 183
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 184
    return-void
.end method

.method public set_gSelectedIconIndex(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gSelectedIconIndex:I

    .line 95
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(II)V

    .line 96
    return-void
.end method

.method public set_gSelectedIconTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/launcher2/ScriptC_allapps;->mExportVar_gSelectedIconTexture:Landroid/renderscript/Allocation;

    .line 106
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 107
    return-void
.end method
