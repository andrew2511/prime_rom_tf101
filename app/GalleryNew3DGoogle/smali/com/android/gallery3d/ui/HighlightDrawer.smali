.class public Lcom/android/gallery3d/ui/HighlightDrawer;
.super Lcom/android/gallery3d/ui/IconDrawer;
.source "HighlightDrawer.java"


# instance fields
.field private final mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mFrameSelectedTop:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mHighlightItem:Lcom/android/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/IconDrawer;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020001

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HighlightDrawer;->mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 33
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020014

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HighlightDrawer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 34
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020015

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HighlightDrawer;->mFrameSelectedTop:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;IIIZZ)V
    .locals 18
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
    .line 44
    move/from16 v0, p3

    neg-int v0, v0

    move v5, v0

    div-int/lit8 v7, v5, 0x2

    .line 45
    .local v7, x:I
    move/from16 v0, p4

    neg-int v0, v0

    move v5, v0

    div-int/lit8 v8, v5, 0x2

    .local v8, y:I
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    .line 47
    invoke-static/range {v5 .. v12}, Lcom/android/gallery3d/ui/HighlightDrawer;->drawWithRotationAndGray(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIII)V

    .line 50
    div-int/lit8 v5, p5, 0x5a

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 51
    move/from16 v17, p3

    .line 52
    .local v17, temp:I
    move/from16 p3, p4

    .line 53
    move/from16 p4, v17

    .line 54
    move/from16 v0, p3

    neg-int v0, v0

    move v5, v0

    div-int/lit8 v7, v5, 0x2

    .line 55
    move/from16 v0, p4

    neg-int v0, v0

    move v5, v0

    div-int/lit8 v8, v5, 0x2

    .end local v17           #temp:I
    :cond_0
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p9

    move v12, v7

    move v13, v8

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p7

    .line 58
    invoke-virtual/range {v9 .. v16}, Lcom/android/gallery3d/ui/HighlightDrawer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/HighlightDrawer;->mHighlightItem:Lcom/android/gallery3d/data/Path;

    move-object v5, v0

    move-object/from16 v0, p6

    move-object v1, v5

    if-ne v0, v1, :cond_3

    .line 62
    if-nez p7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/HighlightDrawer;->mFrameSelectedTop:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v5, v0

    move-object v6, v5

    .local v6, frame:Lcom/android/gallery3d/ui/NinePatchTexture;
    :goto_0
    move-object/from16 v5, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 67
    invoke-static/range {v5 .. v10}, Lcom/android/gallery3d/ui/HighlightDrawer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V

    .line 69
    if-nez p7, :cond_1

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/HighlightDrawer;->drawIcon(Lcom/android/gallery3d/ui/GLCanvas;III)Lcom/android/gallery3d/ui/IconDrawer$IconDimension;

    .line 72
    :cond_1
    return-void

    .line 62
    .end local v6           #frame:Lcom/android/gallery3d/ui/NinePatchTexture;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/HighlightDrawer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v5, v0

    move-object v6, v5

    goto :goto_0

    .line 64
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/HighlightDrawer;->mFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v6, v0

    .restart local v6       #frame:Lcom/android/gallery3d/ui/NinePatchTexture;
    goto :goto_0
.end method

.method public setHighlightItem(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/ui/HighlightDrawer;->mHighlightItem:Lcom/android/gallery3d/data/Path;

    .line 39
    return-void
.end method
