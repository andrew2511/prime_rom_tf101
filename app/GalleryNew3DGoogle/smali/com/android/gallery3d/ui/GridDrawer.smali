.class public Lcom/android/gallery3d/ui/GridDrawer;
.super Lcom/android/gallery3d/ui/IconDrawer;
.source "GridDrawer.java"


# instance fields
.field private final FONT_COLOR:I

.field private final FONT_SIZE:I

.field private final IMPORT_LABEL_PADDING:I

.field private final mContext:Landroid/content/Context;

.field private final mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mFrameSelectedTop:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mGridWidth:I

.field private final mImportBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mImportLabel:Lcom/android/gallery3d/ui/Texture;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSelectionMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "context"
    .parameter "selectionManager"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/IconDrawer;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->FONT_SIZE:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->FONT_COLOR:I

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->IMPORT_LABEL_PADDING:I

    .line 41
    iput-object p1, p0, Lcom/android/gallery3d/ui/GridDrawer;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020001

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 43
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020014

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 44
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020015

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->mFrameSelectedTop:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 45
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f02002d

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->mImportBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 46
    iput-object p2, p0, Lcom/android/gallery3d/ui/GridDrawer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;IIIZZ)V
    .locals 19
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
    move/from16 v0, p3

    neg-int v0, v0

    move v4, v0

    div-int/lit8 v6, v4, 0x2

    .line 60
    .local v6, x:I
    move/from16 v0, p4

    neg-int v0, v0

    move v4, v0

    div-int/lit8 v7, v4, 0x2

    .local v7, y:I
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    .line 62
    invoke-static/range {v4 .. v11}, Lcom/android/gallery3d/ui/GridDrawer;->drawWithRotationAndGray(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIII)V

    .line 65
    div-int/lit8 v4, p5, 0x5a

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 66
    move/from16 v18, p3

    .line 67
    .local v18, temp:I
    move/from16 p3, p4

    .line 68
    move/from16 p4, v18

    .line 69
    move/from16 v0, p3

    neg-int v0, v0

    move v4, v0

    div-int/lit8 v6, v4, 0x2

    .line 70
    move/from16 v0, p4

    neg-int v0, v0

    move v4, v0

    div-int/lit8 v7, v4, 0x2

    .end local v18           #temp:I
    :cond_0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p9

    move v11, v6

    move v12, v7

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p7

    .line 73
    invoke-virtual/range {v8 .. v15}, Lcom/android/gallery3d/ui/GridDrawer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)V

    .line 76
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mSelectionMode:Z

    move v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 77
    if-nez p7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mFrameSelectedTop:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v4, v0

    move-object v5, v4

    .local v5, frame:Lcom/android/gallery3d/ui/NinePatchTexture;
    :goto_0
    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p4

    .line 82
    invoke-static/range {v4 .. v9}, Lcom/android/gallery3d/ui/GridDrawer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V

    .line 84
    if-nez p7, :cond_4

    .line 85
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GridDrawer;->getIcon(I)Lcom/android/gallery3d/ui/ResourceTexture;

    move-result-object v8

    .line 86
    .local v8, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    if-eqz v8, :cond_4

    .line 87
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GridDrawer;->getIconDimension(Lcom/android/gallery3d/ui/ResourceTexture;II)Lcom/android/gallery3d/ui/IconDrawer$IconDimension;

    move-result-object v17

    .line 88
    .local v17, id:Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    const/4 v4, 0x3

    move/from16 v0, p8

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mImportLabel:Lcom/android/gallery3d/ui/Texture;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mGridWidth:I

    move v4, v0

    move v0, v4

    move/from16 v1, p3

    if-eq v0, v1, :cond_2

    .line 90
    :cond_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/GridDrawer;->mGridWidth:I

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f080064

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v5           #frame:Lcom/android/gallery3d/ui/NinePatchTexture;
    move-result-object v4

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->width:I

    move v5, v0

    sub-int v5, p3, v5

    const/16 v9, 0xa

    sub-int/2addr v5, v9

    const/high16 v9, 0x4160

    const/4 v10, -0x1

    invoke-static {v4, v5, v9, v10}, Lcom/android/gallery3d/ui/MultiLineTexture;->newInstance(Ljava/lang/String;IFI)Lcom/android/gallery3d/ui/MultiLineTexture;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/ui/GridDrawer;->mImportLabel:Lcom/android/gallery3d/ui/Texture;

    .line 95
    :cond_2
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->height:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mImportLabel:Lcom/android/gallery3d/ui/Texture;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 96
    .local v16, bgHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mImportBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/NinePatchTexture;->setSize(II)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mImportBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v4, v0

    neg-int v5, v7

    sub-int v5, v5, v16

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v6

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mImportLabel:Lcom/android/gallery3d/ui/Texture;

    move-object v4, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->width:I

    move v5, v0

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xa

    neg-int v6, v7

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mImportLabel:Lcom/android/gallery3d/ui/Texture;

    move-object v7, v0

    .end local v6           #x:I
    .end local v7           #y:I
    invoke-interface {v7}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v7

    sub-int v7, v16, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 101
    .end local v16           #bgHeight:I
    :cond_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->x:I

    move v10, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->y:I

    move v11, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->width:I

    move v12, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->height:I

    move v13, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 104
    .end local v8           #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    .end local v17           #id:Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    :cond_4
    return-void

    .line 77
    .restart local v6       #x:I
    .restart local v7       #y:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v4, v0

    move-object v5, v4

    goto/16 :goto_0

    .line 79
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GridDrawer;->mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v5, v0

    .restart local v5       #frame:Lcom/android/gallery3d/ui/NinePatchTexture;
    goto/16 :goto_0
.end method

.method public drawFocus(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GridDrawer;->mSelectionMode:Z

    .line 52
    return-void
.end method
