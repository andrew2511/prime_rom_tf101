.class public Lcom/android/launcher2/AllApps3D$RolloRS;
.super Ljava/lang/Object;
.source "AllApps3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AllApps3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RolloRS"
.end annotation


# instance fields
.field mAllApps:Lcom/android/launcher2/AllApps3D;

.field private mAllocIcons:Landroid/renderscript/Allocation;

.field private mAllocLabels:Landroid/renderscript/Allocation;

.field private mHeight:I

.field private mHomeButtonFocused:Landroid/renderscript/Allocation;

.field private mHomeButtonNormal:Landroid/renderscript/Allocation;

.field private mHomeButtonPressed:Landroid/renderscript/Allocation;

.field private mIcons:[Landroid/renderscript/Allocation;

.field mInitialize:Z

.field private mLabels:[Landroid/renderscript/Allocation;

.field private mMesh:Landroid/renderscript/Mesh;

.field private mPVA:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mRes:Landroid/content/res/Resources;

.field mScript:Lcom/android/launcher2/ScriptC_allapps;

.field private mScrollPos:F

.field private mSelectionBitmap:Landroid/graphics/Bitmap;

.field private mSelectionCanvas:Landroid/graphics/Canvas;

.field private mUniformAlloc:Lcom/android/launcher2/ScriptField_VpConsts;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AllApps3D;)V
    .locals 0
    .parameter "allApps"

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    .line 979
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AllApps3D$RolloRS;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mRes:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/AllApps3D$RolloRS;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllApps3D$RolloRS;->setApps(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AllApps3D$RolloRS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->initGl()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/AllApps3D$RolloRS;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    iget v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScrollPos:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/AllApps3D$RolloRS;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    iput p1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScrollPos:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/AllApps3D$RolloRS;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->checkClickOK()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/AllApps3D$RolloRS;FZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 929
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AllApps3D$RolloRS;->setZoom(FZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/AllApps3D$RolloRS;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllApps3D$RolloRS;->reallocAppsList(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/AllApps3D$RolloRS;ILcom/android/launcher2/ApplicationInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 929
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AllApps3D$RolloRS;->addApp(ILcom/android/launcher2/ApplicationInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/AllApps3D$RolloRS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->saveAppsList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/AllApps3D$RolloRS;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllApps3D$RolloRS;->removeApp(I)V

    return-void
.end method

.method private addApp(ILcom/android/launcher2/ApplicationInfo;)V
    .locals 4
    .parameter "index"
    .parameter "item"

    .prologue
    .line 1284
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v2}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v2

    sub-int v0, v2, p1

    .line 1285
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    .line 1287
    .local v1, dest:I
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1288
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1290
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AllApps3D$RolloRS;->createAppIconAllocations(ILcom/android/launcher2/ApplicationInfo;)V

    .line 1292
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v3}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ScriptC_allapps;->set_gIconCount(I)V

    .line 1293
    return-void
.end method

.method private checkClickOK()Z
    .locals 3

    .prologue
    const v2, 0x3ecccccd

    .line 961
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v0}, Lcom/android/launcher2/AllApps3D;->access$1100(Lcom/android/launcher2/AllApps3D;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScrollPos:F

    iget v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScrollPos:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAppIconAllocations(ILcom/android/launcher2/ApplicationInfo;)V
    .locals 5
    .parameter "index"
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    .line 1252
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v1, v2, v3, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1255
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher2/ApplicationInfo;->titleBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v1, v2, v3, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1258
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    const/16 v3, 0x5e

    const/4 v1, 0x4

    .line 1192
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->set_COLUMNS_PER_PAGE_PORTRAIT(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->set_ROWS_PER_PAGE_PORTRAIT(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->set_COLUMNS_PER_PAGE_LANDSCAPE(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->set_ROWS_PER_PAGE_LANDSCAPE(I)V

    .line 1197
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f020030

    invoke-static {v0, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHomeButtonNormal:Landroid/renderscript/Allocation;

    .line 1199
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f02002f

    invoke-static {v0, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHomeButtonFocused:Landroid/renderscript/Allocation;

    .line 1201
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f020031

    invoke-static {v0, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHomeButtonPressed:Landroid/renderscript/Allocation;

    .line 1204
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHomeButtonNormal:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->set_gHomeButton(Landroid/renderscript/Allocation;)V

    .line 1206
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mSelectionBitmap:Landroid/graphics/Bitmap;

    .line 1208
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mSelectionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mSelectionCanvas:Landroid/graphics/Canvas;

    .line 1210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/AllApps3D$RolloRS;->setApps(Ljava/util/ArrayList;)V

    .line 1211
    return-void
.end method

.method private initGl()V
    .locals 0

    .prologue
    .line 1189
    return-void
.end method

.method private initProgramFragment()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1145
    new-instance v6, Landroid/renderscript/Sampler$Builder;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 1146
    .local v6, sb:Landroid/renderscript/Sampler$Builder;
    sget-object v7, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v6, v7}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 1147
    sget-object v7, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v6, v7}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 1148
    sget-object v7, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v6, v7}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 1149
    sget-object v7, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v6, v7}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 1150
    invoke-virtual {v6}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v1

    .line 1152
    .local v1, linear:Landroid/renderscript/Sampler;
    sget-object v7, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v6, v7}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 1153
    sget-object v7, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v6, v7}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 1154
    invoke-virtual {v6}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v2

    .line 1156
    .local v2, nearest:Landroid/renderscript/Sampler;
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 1157
    .local v0, bf:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v7, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v8, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v7, v8, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 1159
    invoke-virtual {v0, v10}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 1160
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v3

    .line 1161
    .local v3, pfTexMip:Landroid/renderscript/ProgramFragment;
    invoke-virtual {v3, v1, v9}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 1163
    invoke-virtual {v0, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 1164
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v5

    .line 1165
    .local v5, pfTexNearest:Landroid/renderscript/ProgramFragment;
    invoke-virtual {v5, v2, v9}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 1167
    sget-object v7, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v8, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v7, v8, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 1169
    invoke-virtual {v0, v10}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 1170
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v4

    .line 1171
    .local v4, pfTexMipAlpha:Landroid/renderscript/ProgramFragment;
    invoke-virtual {v4, v1, v9}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 1173
    iget-object v7, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/ScriptC_allapps;->set_gPFTexNearest(Landroid/renderscript/ProgramFragment;)V

    .line 1174
    iget-object v7, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v7, v3}, Lcom/android/launcher2/ScriptC_allapps;->set_gPFTexMip(Landroid/renderscript/ProgramFragment;)V

    .line 1175
    iget-object v7, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/ScriptC_allapps;->set_gPFTexMipAlpha(Landroid/renderscript/ProgramFragment;)V

    .line 1176
    return-void
.end method

.method private initProgramStore()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1179
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 1180
    .local v0, bs:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 1181
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/renderscript/ProgramStore$Builder;->setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;

    .line 1182
    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 1183
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 1185
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScriptC_allapps;->set_gPS(Landroid/renderscript/ProgramStore;)V

    .line 1186
    return-void
.end method

.method private initProgramVertex()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1064
    new-instance v6, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mPVA:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 1065
    iget v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mWidth:I

    iget v7, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHeight:I

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/AllApps3D$RolloRS;->resize(II)V

    .line 1067
    new-instance v2, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 1068
    .local v2, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v2, v9}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->setTextureMatrixEnable(Z)Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    .line 1069
    invoke-virtual {v2}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v1

    .line 1070
    .local v1, pv:Landroid/renderscript/ProgramVertex;
    move-object v0, v1

    check-cast v0, Landroid/renderscript/ProgramVertexFixedFunction;

    move-object v6, v0

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mPVA:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v6, v7}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 1071
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 1073
    new-instance v6, Lcom/android/launcher2/ScriptField_VpConsts;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lcom/android/launcher2/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mUniformAlloc:Lcom/android/launcher2/ScriptField_VpConsts;

    .line 1074
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mUniformAlloc:Lcom/android/launcher2/ScriptField_VpConsts;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/ScriptC_allapps;->bind_vpConstants(Lcom/android/launcher2/ScriptField_VpConsts;)V

    .line 1076
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->initMesh()V

    .line 1077
    new-instance v4, Landroid/renderscript/ProgramVertex$Builder;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 1078
    .local v4, sb:Landroid/renderscript/ProgramVertex$Builder;
    const-string v5, "varying vec4 varColor;\nvarying vec2 varTex0;\nvoid main() {\n  float ani = UNI_Position.z;\n  float bendY1 = UNI_BendPos.x;\n  float bendY2 = UNI_BendPos.y;\n  float bendAngle = 47.0 * (3.14 / 180.0);\n  float bendDistance = bendY1 * 0.4;\n  float distanceDimLevel = 0.6;\n  float bendStep = (bendAngle / bendDistance) * (bendAngle * 0.5);\n  float aDy = cos(bendAngle);\n  float aDz = sin(bendAngle);\n  float scale = (2.0 / 480.0);\n  float x = UNI_Position.x + UNI_ImgSize.x * (1.0 - ani) * (ATTRIB_position.x - 0.5);\n  float ys= UNI_Position.y + UNI_ImgSize.y * (1.0 - ani) * ATTRIB_position.y;\n  float y = 0.0;\n  float z = 0.0;\n  float lum = 1.0;\n  float cv = min(ys, bendY1 - bendDistance) - (bendY1 - bendDistance);\n  y += cv * aDy;\n  z += -cv * aDz;\n  cv = clamp(ys, bendY1 - bendDistance, bendY1) - bendY1;\n  lum += cv / bendDistance * distanceDimLevel;\n  y += cv * cos(cv * bendStep);\n  z += cv * sin(cv * bendStep);\n  cv = max(ys, bendY2 + bendDistance) - (bendY2 + bendDistance);\n  y += cv * aDy;\n  z += cv * aDz;\n  cv = clamp(ys, bendY2, bendY2 + bendDistance) - bendY2;\n  lum -= cv / bendDistance * distanceDimLevel;\n  y += cv * cos(cv * bendStep);\n  z += cv * sin(cv * bendStep);\n  y += clamp(ys, bendY1, bendY2);\n  vec4 pos;\n  pos.x = (x + UNI_ScaleOffset.z) * UNI_ScaleOffset.x;\n  pos.y = (y + UNI_ScaleOffset.w) * UNI_ScaleOffset.x;\n  pos.z = z * UNI_ScaleOffset.x;\n  pos.w = 1.0;\n  pos.x *= 1.0 + ani * 4.0;\n  pos.y *= 1.0 + ani * 4.0;\n  pos.z -= ani * 1.5;\n  lum *= 1.0 - ani;\n  gl_Position = UNI_Proj * pos;\n  varColor.rgba = vec4(lum, lum, lum, 1.0);\n  varTex0.xy = ATTRIB_position;\n  varTex0.y = 1.0 - varTex0.y;\n}\n"

    .line 1135
    .local v5, t:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/renderscript/ProgramVertex$Builder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 1136
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mUniformAlloc:Lcom/android/launcher2/ScriptField_VpConsts;

    invoke-virtual {v6}, Lcom/android/launcher2/ScriptField_VpConsts;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/renderscript/ProgramVertex$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 1137
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v6, v8}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 1138
    invoke-virtual {v4}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v3

    .line 1139
    .local v3, pvc:Landroid/renderscript/ProgramVertex;
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mUniformAlloc:Lcom/android/launcher2/ScriptField_VpConsts;

    invoke-virtual {v6}, Lcom/android/launcher2/ScriptField_VpConsts;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v3, v6, v8}, Landroid/renderscript/ProgramVertex;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 1141
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/ScriptC_allapps;->set_gPVCurve(Landroid/renderscript/ProgramVertex;)V

    .line 1142
    return-void
.end method

.method private reallocAppsList(I)V
    .locals 6
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 1265
    new-array v0, p1, [Landroid/renderscript/Allocation;

    .line 1266
    .local v0, icons:[Landroid/renderscript/Allocation;
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v4

    invoke-static {v4}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocIcons:Landroid/renderscript/Allocation;

    .line 1268
    new-array v1, p1, [Landroid/renderscript/Allocation;

    .line 1269
    .local v1, labels:[Landroid/renderscript/Allocation;
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v4

    invoke-static {v4}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocLabels:Landroid/renderscript/Allocation;

    .line 1271
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v3}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v2

    .line 1273
    .local v2, oldCount:I
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    invoke-static {v3, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1276
    iput-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    .line 1277
    iput-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    .line 1278
    return-void
.end method

.method private removeApp(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1299
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v3}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v0, v3, v5

    .line 1300
    .local v0, count:I
    add-int/lit8 v2, p1, 0x1

    .line 1302
    .local v2, src:I
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    iget-object v4, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    invoke-static {v3, v2, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1303
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    iget-object v4, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    invoke-static {v3, v2, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1305
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v4, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v4}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ScriptC_allapps;->set_gIconCount(I)V

    .line 1306
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v3}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v1

    .line 1308
    .local v1, last:I
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    aput-object v6, v3, v1

    .line 1309
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    aput-object v6, v3, v1

    .line 1310
    return-void
.end method

.method private saveAppsList()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocIcons:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocIcons:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([Landroid/renderscript/BaseObj;)V

    .line 1320
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocLabels:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([Landroid/renderscript/BaseObj;)V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocIcons:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bind_gIcons(Landroid/renderscript/Allocation;)V

    .line 1324
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocLabels:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bind_gLabels(Landroid/renderscript/Allocation;)V

    .line 1326
    :cond_1
    return-void
.end method

.method private setApps(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1221
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllApps3D$RolloRS;->pause()V

    .line 1222
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 1223
    .local v1, count:I
    :goto_0
    move v0, v1

    .line 1224
    .local v0, allocCount:I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 1225
    const/4 v0, 0x1

    .line 1228
    :cond_0
    new-array v3, v1, [Landroid/renderscript/Allocation;

    iput-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    .line 1229
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v4

    invoke-static {v4}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocIcons:Landroid/renderscript/Allocation;

    .line 1231
    new-array v3, v1, [Landroid/renderscript/Allocation;

    iput-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mLabels:[Landroid/renderscript/Allocation;

    .line 1232
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v4

    invoke-static {v4}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocLabels:Landroid/renderscript/Allocation;

    .line 1234
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/ScriptC_allapps;->set_gIconCount(I)V

    .line 1235
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1236
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/AllApps3D$RolloRS;->createAppIconAllocations(ILcom/android/launcher2/ApplicationInfo;)V

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1222
    .end local v0           #allocCount:I
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 1238
    .restart local v0       #allocCount:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->saveAppsList()V

    .line 1239
    const-string v3, "rs"

    const-string v4, "setApps"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllApps3D$RolloRS;->resume()V

    .line 1241
    return-void
.end method

.method private setZoom(FZ)V
    .locals 2
    .parameter "zoom"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 1244
    if-eqz p2, :cond_0

    .line 1245
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllApps3D$RolloRS;->clearSelectedIcon()V

    .line 1246
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 1248
    :cond_0
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/ScriptC_allapps;->invoke_setZoom(FI)V

    .line 1249
    return-void
.end method


# virtual methods
.method clearSelectedIcon()V
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->set_gSelectedIconIndex(I)V

    .line 1403
    return-void
.end method

.method dirtyCheck()V
    .locals 2

    .prologue
    .line 1214
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1700()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1800()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/AllApps3D$RolloRS;->setZoom(FZ)V

    .line 1217
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1425
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sRollo.mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sRollo.mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sRollo.mIcons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 1429
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sRollo.mIcons.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mIcons:[Landroid/renderscript/Allocation;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    return-void
.end method

.method fling(FF)V
    .locals 1
    .parameter "pos"
    .parameter "v"

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/ScriptC_allapps;->invoke_fling(FF)V

    .line 1330
    return-void
.end method

.method getProjectionMatrix(II)Landroid/renderscript/Matrix4f;
    .locals 11
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1016
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 1017
    .local v0, m1:Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 1019
    .local v10, m2:Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    .line 1020
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v2, v1, v2

    .line 1021
    .local v2, aspect:F
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x42c8

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 1027
    :goto_0
    const/high16 v1, 0x4334

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 1028
    .end local v2           #aspect:F
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 1030
    const/high16 v1, -0x4000

    const/high16 v2, 0x4000

    const/high16 v3, 0x3f80

    invoke-virtual {v10, v1, v2, v3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 1031
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 1033
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-virtual {v10, v1, v2, v3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 1034
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 1035
    return-object v0

    .line 1023
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v2, v1, v2

    .line 1024
    .restart local v2       #aspect:F
    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    neg-float v6, v2

    const/high16 v8, 0x3f80

    const/high16 v9, 0x42c8

    move-object v3, v0

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0
.end method

.method public init(Landroid/content/res/Resources;II)V
    .locals 4
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mRes:Landroid/content/res/Resources;

    .line 983
    iput p2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mWidth:I

    .line 984
    iput p3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHeight:I

    .line 985
    new-instance v0, Lcom/android/launcher2/ScriptC_allapps;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mRes:Landroid/content/res/Resources;

    const/high16 v3, 0x7f06

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ScriptC_allapps;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    .line 987
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->initProgramVertex()V

    .line 988
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->initProgramFragment()V

    .line 989
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->initProgramStore()V

    .line 990
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->initGl()V

    .line 991
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D$RolloRS;->initData()V

    .line 993
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocIcons:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bind_gIcons(Landroid/renderscript/Allocation;)V

    .line 994
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllocLabels:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScriptC_allapps;->bind_gLabels(Landroid/renderscript/Allocation;)V

    .line 995
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 996
    return-void
.end method

.method public initMesh()V
    .locals 6

    .prologue
    .line 999
    new-instance v2, Landroid/renderscript/Mesh$TriangleMeshBuilder;

    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/renderscript/Mesh$TriangleMeshBuilder;-><init>(Landroid/renderscript/RenderScript;II)V

    .line 1001
    .local v2, tm:Landroid/renderscript/Mesh$TriangleMeshBuilder;
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 1002
    const v3, 0x3d888889

    int-to-float v4, v0

    mul-float v1, v3, v4

    .line 1003
    .local v1, pos:F
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 1004
    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 1001
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v1           #pos:F
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1

    .line 1007
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 1008
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 1006
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1010
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->create(Z)Landroid/renderscript/Mesh;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mMesh:Landroid/renderscript/Mesh;

    .line 1011
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v4, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ScriptC_allapps;->set_gSMCell(Landroid/renderscript/Mesh;)V

    .line 1012
    return-void
.end method

.method move(F)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->invoke_move(F)V

    .line 1334
    return-void
.end method

.method moveTo(F)V
    .locals 1
    .parameter "row"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ScriptC_allapps;->invoke_moveTo(F)V

    .line 1338
    return-void
.end method

.method pause()V
    .locals 2

    .prologue
    .line 966
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 967
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 969
    :cond_0
    return-void
.end method

.method resize(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v5, 0x4220

    .line 1039
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AllApps3D$RolloRS;->getProjectionMatrix(II)Landroid/renderscript/Matrix4f;

    move-result-object v1

    .line 1040
    .local v1, proj:Landroid/renderscript/Matrix4f;
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mPVA:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v2, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 1042
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mUniformAlloc:Lcom/android/launcher2/ScriptField_VpConsts;

    if-eqz v2, :cond_1

    .line 1043
    new-instance v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;

    invoke-direct {v0}, Lcom/android/launcher2/ScriptField_VpConsts$Item;-><init>()V

    .line 1044
    .local v0, i:Lcom/android/launcher2/ScriptField_VpConsts$Item;
    iput-object v1, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    .line 1045
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    const v3, 0x3b888889

    iput v3, v2, Landroid/renderscript/Float4;->x:F

    .line 1046
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    const/4 v3, 0x0

    iput v3, v2, Landroid/renderscript/Float4;->y:F

    .line 1047
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    int-to-float v3, p1

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    neg-float v3, v3

    const/high16 v4, 0x3e80

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/renderscript/Float4;->z:F

    .line 1048
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    const v3, -0x3c41e000

    iput v3, v2, Landroid/renderscript/Float4;->w:F

    .line 1049
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->BendPos:Landroid/renderscript/Float2;

    const/high16 v3, 0x42f0

    iput v3, v2, Landroid/renderscript/Float2;->x:F

    .line 1050
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->BendPos:Landroid/renderscript/Float2;

    const/high16 v3, 0x442a

    iput v3, v2, Landroid/renderscript/Float2;->y:F

    .line 1051
    if-le p1, p2, :cond_0

    .line 1052
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    iput v5, v2, Landroid/renderscript/Float4;->z:F

    .line 1053
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    int-to-float v3, p2

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/renderscript/Float4;->w:F

    .line 1054
    iget-object v2, v0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->BendPos:Landroid/renderscript/Float2;

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/renderscript/Float2;->y:F

    .line 1056
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mUniformAlloc:Lcom/android/launcher2/ScriptField_VpConsts;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher2/ScriptField_VpConsts;->set(Lcom/android/launcher2/ScriptField_VpConsts$Item;IZ)V

    .line 1059
    .end local v0           #i:Lcom/android/launcher2/ScriptField_VpConsts$Item;
    :cond_1
    iput p1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mWidth:I

    .line 1060
    iput p2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHeight:I

    .line 1061
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    .line 972
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 975
    :cond_0
    return-void
.end method

.method selectIcon(III)I
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "pressed"

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    if-eqz v1, :cond_0

    .line 1347
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/AllApps3D;->chooseTappedIcon(II)I

    move-result v0

    .line 1348
    .local v0, index:I
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher2/AllApps3D$RolloRS;->selectIcon(II)V

    move v1, v0

    .line 1351
    .end local v0           #index:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method selectIcon(II)V
    .locals 11
    .parameter "index"
    .parameter "pressed"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1362
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v5}, Lcom/android/launcher2/AllApps3D;->access$1900(Lcom/android/launcher2/AllApps3D;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1363
    .local v0, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_3

    .line 1364
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    if-eqz v5, :cond_1

    .line 1365
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v5, p1}, Lcom/android/launcher2/AllApps3D;->access$2002(Lcom/android/launcher2/AllApps3D;I)I

    .line 1367
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/ScriptC_allapps;->set_gSelectedIconIndex(I)V

    .line 1368
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v5}, Lcom/android/launcher2/AllApps3D;->access$2100(Lcom/android/launcher2/AllApps3D;)I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 1369
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v5, v10}, Lcom/android/launcher2/AllApps3D;->access$2102(Lcom/android/launcher2/AllApps3D;I)I

    .line 1396
    :cond_2
    :goto_0
    return-void

    .line 1372
    :cond_3
    if-ne p2, v9, :cond_4

    .line 1373
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v5, v9}, Lcom/android/launcher2/AllApps3D;->access$2102(Lcom/android/launcher2/AllApps3D;I)I

    .line 1376
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v5}, Lcom/android/launcher2/ScriptC_allapps;->get_gSelectedIconIndex()I

    move-result v2

    .line 1377
    .local v2, prev:I
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/ScriptC_allapps;->set_gSelectedIconIndex(I)V

    .line 1379
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1380
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mSelectionBitmap:Landroid/graphics/Bitmap;

    .line 1382
    .local v3, selectionBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mSelectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    if-ne p2, v8, :cond_5

    move v8, v9

    :goto_1
    iget-object v9, v1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/launcher2/Utilities;->drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V

    .line 1386
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1600()Landroid/renderscript/RenderScriptGL;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 1387
    .local v4, si:Landroid/renderscript/Allocation;
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/ScriptC_allapps;->set_gSelectedIconTexture(Landroid/renderscript/Allocation;)V

    .line 1389
    if-eq v2, p1, :cond_2

    .line 1390
    iget-object v5, v1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1392
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AllApps3D;->sendAccessibilityEvent(I)V

    goto :goto_0

    .end local v4           #si:Landroid/renderscript/Allocation;
    :cond_5
    move v8, v10

    .line 1382
    goto :goto_1
.end method

.method setHomeSelected(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x2

    .line 1406
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v1}, Lcom/android/launcher2/AllApps3D;->access$2100(Lcom/android/launcher2/AllApps3D;)I

    move-result v0

    .line 1407
    .local v0, prev:I
    packed-switch p1, :pswitch_data_0

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1409
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHomeButtonNormal:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScriptC_allapps;->set_gHomeButton(Landroid/renderscript/Allocation;)V

    goto :goto_0

    .line 1412
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    invoke-static {v1, v3}, Lcom/android/launcher2/AllApps3D;->access$2102(Lcom/android/launcher2/AllApps3D;I)I

    .line 1413
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHomeButtonFocused:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScriptC_allapps;->set_gHomeButton(Landroid/renderscript/Allocation;)V

    .line 1414
    if-eq v0, v3, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AllApps3D;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1419
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$RolloRS;->mHomeButtonPressed:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScriptC_allapps;->set_gHomeButton(Landroid/renderscript/Allocation;)V

    goto :goto_0

    .line 1407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
