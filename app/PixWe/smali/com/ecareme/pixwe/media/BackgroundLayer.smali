.class public Lcom/ecareme/pixwe/media/BackgroundLayer;
.super Lcom/ecareme/pixwe/media/Layer;
.source "BackgroundLayer.java"


# static fields
.field private static final ADAPTIVE_BACKGROUND_HEIGHT:I = 0x80

.field private static final ADAPTIVE_BACKGROUND_WIDTH:I = 0x100

.field private static final MAX_ADAPTIVES_TO_KEEP_IN_MEMORY:I = 0x10

.field private static final PARALLAX:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "AdaptiveBackground"

.field private static final Z_FAR_PLANE:F = 0.9999f


# instance fields
.field private mBackground:Lcom/ecareme/pixwe/media/CrossFadingTexture;

.field private mBackgroundBlitWidth:I

.field private mBackgroundOverlap:I

.field private final mCacheAdaptiveTexture:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ecareme/pixwe/media/Texture;",
            "Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

.field private final mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/GridLayer;)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mCacheAdaptiveTexture:Ljava/util/HashMap;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    .line 43
    iput-object p1, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 44
    return-void
.end method

.method private getAdaptive(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/DisplayItem;)Lcom/ecareme/pixwe/media/Texture;
    .locals 5
    .parameter "view"
    .parameter "item"

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    .line 94
    :goto_0
    return-object v3

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/ecareme/pixwe/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v1

    .line 79
    .local v1, itemThumbnail:Lcom/ecareme/pixwe/media/Texture;
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mCacheAdaptiveTexture:Ljava/util/HashMap;

    .line 83
    .local v0, adaptives:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/ecareme/pixwe/media/Texture;Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;

    .line 84
    .local v2, retVal:Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;
    if-nez v2, :cond_4

    .line 85
    new-instance v2, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;

    .end local v2           #retVal:Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;
    const/16 v3, 0x100

    const/16 v4, 0x80

    invoke-direct {v2, v1, v3, v4}, Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;-><init>(Lcom/ecareme/pixwe/media/Texture;II)V

    .line 86
    .restart local v2       #retVal:Lcom/ecareme/pixwe/media/AdaptiveBackgroundTexture;
    iget v3, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mCount:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 87
    const/4 v3, 0x0

    iput v3, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mCount:I

    .line 88
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 89
    const-string v3, "AdaptiveBackground"

    const-string v4, "Clearing unused adaptive backgrounds."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3
    iget v3, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mCount:I

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v3, v2

    .line 94
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/BackgroundLayer;->clearCache()V

    .line 153
    iput-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackground:Lcom/ecareme/pixwe/media/CrossFadingTexture;

    .line 154
    iput-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    .line 155
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mCacheAdaptiveTexture:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 159
    return-void
.end method

.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 48
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method protected onSizeChanged()V
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mWidth:F

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundBlitWidth:I

    .line 148
    iget v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundBlitWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundOverlap:I

    .line 149
    return-void
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 19
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackground:Lcom/ecareme/pixwe/media/CrossFadingTexture;

    move-object v12, v0

    .line 109
    .local v12, anchorTexture:Lcom/ecareme/pixwe/media/CrossFadingTexture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackground:Lcom/ecareme/pixwe/media/CrossFadingTexture;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/16 v5, 0x302

    const/16 v6, 0x303

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 112
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const/high16 v7, 0x4604

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 113
    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CrossFadingTexture;->bind(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v14

    .line 114
    .local v14, bind:Z
    if-nez v14, :cond_4

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    .line 125
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/GridLayer;->getScrollPosition()F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    float-to-int v15, v5

    .line 126
    .local v15, cameraPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundBlitWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundOverlap:I

    move v6, v0

    sub-int v13, v5, v6

    .line 127
    .local v13, backgroundSpacing:I
    neg-int v5, v15

    rem-int v11, v5, v13

    .line 128
    .local v11, anchorEdge:I
    add-int v17, v11, v13

    .line 130
    .local v17, rightEdge:I
    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    const v8, 0x3f7ff972

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundBlitWidth:I

    move v5, v0

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mHeight:F

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 132
    int-to-float v6, v11

    const/4 v7, 0x0

    const v8, 0x3f7ff972

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundBlitWidth:I

    move v5, v0

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mHeight:F

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 134
    sub-int v16, v11, v13

    .line 135
    .local v16, leftEdge:I
    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    const v8, 0x3f7ff972

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundBlitWidth:I

    move v5, v0

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mHeight:F

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 137
    if-eqz v14, :cond_3

    .line 138
    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CrossFadingTexture;->unbind(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 141
    :cond_3
    const/4 v5, 0x1

    const/16 v6, 0x303

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 142
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    goto/16 :goto_0

    .line 117
    .end local v11           #anchorEdge:I
    .end local v13           #backgroundSpacing:I
    .end local v15           #cameraPosition:I
    .end local v16           #leftEdge:I
    .end local v17           #rightEdge:I
    :cond_4
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/CrossFadingTexture;->getTexture()Lcom/ecareme/pixwe/media/Texture;

    move-result-object v18

    .line 118
    .local v18, texture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    goto/16 :goto_1
.end method

.method public renderOpaque(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 2
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 99
    const/16 v0, 0x4000

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 100
    iget-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    if-nez v0, :cond_0

    .line 101
    const v0, 0x7f020015

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    .line 102
    iget-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 104
    :cond_0
    return-void
.end method

.method public update(Lcom/ecareme/pixwe/media/RenderView;F)Z
    .locals 8
    .parameter "view"
    .parameter "frameInterval"

    .prologue
    .line 55
    iget-object v4, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mFallbackBackground:Lcom/ecareme/pixwe/media/Texture;

    .line 56
    .local v4, fallback:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 57
    :cond_0
    const/4 v6, 0x0

    .line 71
    :goto_0
    return v6

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackground:Lcom/ecareme/pixwe/media/CrossFadingTexture;

    .line 59
    .local v0, background:Lcom/ecareme/pixwe/media/CrossFadingTexture;
    if-nez v0, :cond_2

    .line 60
    new-instance v0, Lcom/ecareme/pixwe/media/CrossFadingTexture;

    .end local v0           #background:Lcom/ecareme/pixwe/media/CrossFadingTexture;
    invoke-direct {v0, v4}, Lcom/ecareme/pixwe/media/CrossFadingTexture;-><init>(Lcom/ecareme/pixwe/media/Texture;)V

    .line 61
    .restart local v0       #background:Lcom/ecareme/pixwe/media/CrossFadingTexture;
    iput-object v0, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackground:Lcom/ecareme/pixwe/media/CrossFadingTexture;

    .line 63
    :cond_2
    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/CrossFadingTexture;->update(F)Z

    move-result v5

    .line 64
    .local v5, retVal:Z
    iget-object v6, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/GridLayer;->getScrollPosition()F

    move-result v6

    float-to-int v2, v6

    .line 65
    .local v2, cameraPosition:I
    iget v6, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundBlitWidth:I

    iget v7, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mBackgroundOverlap:I

    sub-int v1, v6, v7

    .line 66
    .local v1, backgroundSpacing:I
    div-int v6, v2, v1

    mul-int v2, v6, v1

    .line 67
    iget-object v6, p0, Lcom/ecareme/pixwe/media/BackgroundLayer;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/GridLayer;->getRepresentativeDisplayItem()Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v3

    .line 68
    .local v3, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v3, :cond_3

    .line 69
    invoke-direct {p0, p1, v3}, Lcom/ecareme/pixwe/media/BackgroundLayer;->getAdaptive(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/DisplayItem;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ecareme/pixwe/media/CrossFadingTexture;->setTexture(Lcom/ecareme/pixwe/media/Texture;)V

    :cond_3
    move v6, v5

    .line 71
    goto :goto_0
.end method
