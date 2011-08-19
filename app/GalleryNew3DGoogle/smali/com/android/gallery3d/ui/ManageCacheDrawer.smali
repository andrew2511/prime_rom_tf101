.class public Lcom/android/gallery3d/ui/ManageCacheDrawer;
.super Lcom/android/gallery3d/ui/IconDrawer;
.source "ManageCacheDrawer.java"


# instance fields
.field private final mCaching:Lcom/android/gallery3d/ui/StringTexture;

.field private final mCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mLocalAlbumIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private final mUnCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 3
    .parameter "context"
    .parameter "selectionManager"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/IconDrawer;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v2, 0x7f02002f

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 38
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f02000d

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 39
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f02000c

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mUnCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 40
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f02000b

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mLocalAlbumIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 41
    const v1, 0x7f080028

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, cachingLabel:Ljava/lang/String;
    const/high16 v1, 0x4140

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCaching:Lcom/android/gallery3d/ui/StringTexture;

    .line 43
    iput-object p2, p0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 44
    return-void
.end method

.method private static isLocal(I)Z
    .locals 1
    .parameter "dataSourceType"

    .prologue
    .line 51
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;IIIZZ)V
    .locals 24
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "path"
    .parameter "topIndex"
    .parameter "dataSourceType"
    .parameter "mediaType"
    .parameter "wantCache"
    .parameter "isCaching"

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v19

    .line 60
    .local v19, selected:Z
    xor-int v17, p10, v19

    .line 62
    .local v17, chooseToCache:Z
    move/from16 v0, p3

    neg-int v0, v0

    move v6, v0

    div-int/lit8 v7, v6, 0x2

    .line 63
    .local v7, x:I
    move/from16 v0, p4

    neg-int v0, v0

    move v6, v0

    div-int/lit8 v8, v6, 0x2

    .local v8, y:I
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    .line 65
    invoke-static/range {v5 .. v12}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->drawWithRotationAndGray(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIII)V

    .line 68
    div-int/lit8 v6, p5, 0x5a

    and-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 69
    move/from16 v21, p3

    .line 70
    .local v21, temp:I
    move/from16 p3, p4

    .line 71
    move/from16 p4, v21

    .line 72
    move/from16 v0, p3

    neg-int v0, v0

    move v6, v0

    div-int/lit8 v7, v6, 0x2

    .line 73
    move/from16 v0, p4

    neg-int v0, v0

    move v6, v0

    div-int/lit8 v8, v6, 0x2

    .end local v21           #temp:I
    :cond_0
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p9

    move v12, v7

    move v13, v8

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p7

    .line 76
    invoke-virtual/range {v9 .. v16}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v6, v0

    move-object/from16 v5, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V

    .line 80
    if-nez p7, :cond_1

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->drawIcon(Lcom/android/gallery3d/ui/GLCanvas;III)Lcom/android/gallery3d/ui/IconDrawer$IconDimension;

    .line 84
    :cond_1
    if-nez p7, :cond_2

    .line 85
    const/4 v5, 0x0

    .line 86
    .local v5, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    invoke-static/range {p8 .. p8}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->isLocal(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mLocalAlbumIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v5, v0

    .line 94
    :goto_0
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v9

    .line 95
    .local v9, w:I
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v10

    .line 96
    .local v10, h:I
    div-int/lit8 v6, p3, 0x2

    div-int/lit8 v7, v9, 0x2

    .end local v7           #x:I
    sub-int v7, v6, v7

    .line 97
    .restart local v7       #x:I
    move/from16 v0, p4

    neg-int v0, v0

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v8, v10, 0x2

    .end local v8           #y:I
    sub-int v8, v6, v8

    .restart local v8       #y:I
    move-object/from16 v6, p1

    .line 99
    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 101
    if-eqz p11, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCaching:Lcom/android/gallery3d/ui/StringTexture;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v23

    .line 103
    .local v23, textWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCaching:Lcom/android/gallery3d/ui/StringTexture;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v22

    .line 104
    .local v22, textHeight:I
    move/from16 v0, v23

    neg-int v0, v0

    move v6, v0

    div-int/lit8 v7, v6, 0x2

    .line 105
    div-int/lit8 v6, p4, 0x2

    sub-int v8, v6, v22

    .line 108
    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    const v9, 0x3dcccccd

    mul-float/2addr v6, v9

    const/high16 v9, 0x4000

    const/high16 v10, 0x40c0

    invoke-static {v6, v9, v10}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    .end local v9           #w:I
    .end local v10           #h:I
    move-result v20

    .line 110
    .local v20, sideMargin:F
    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    const v9, 0x3dcccccd

    mul-float/2addr v6, v9

    const/high16 v9, 0x4000

    const/high16 v10, 0x40c0

    invoke-static {v6, v9, v10}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v18

    .line 114
    .local v18, clearance:F
    int-to-float v6, v7

    sub-float v12, v6, v20

    int-to-float v6, v8

    sub-float v13, v6, v18

    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    const/high16 v9, 0x4000

    mul-float v9, v9, v20

    add-float v14, v6, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    add-float v15, v6, v18

    const/high16 v16, 0x7f00

    move-object/from16 v11, p1

    invoke-interface/range {v11 .. v16}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCaching:Lcom/android/gallery3d/ui/StringTexture;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 120
    .end local v5           #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    .end local v18           #clearance:F
    .end local v20           #sideMargin:F
    .end local v22           #textHeight:I
    .end local v23           #textWidth:I
    :cond_2
    return-void

    .line 88
    .restart local v5       #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    :cond_3
    if-eqz v17, :cond_4

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v5, v0

    goto/16 :goto_0

    .line 91
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;->mUnCheckedItem:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method public drawFocus(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 124
    return-void
.end method

.method public prepareDrawing()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
