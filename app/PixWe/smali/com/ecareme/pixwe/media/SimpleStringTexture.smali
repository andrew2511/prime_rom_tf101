.class public final Lcom/ecareme/pixwe/media/SimpleStringTexture;
.super Lcom/ecareme/pixwe/media/Texture;
.source "SimpleStringTexture.java"


# instance fields
.field private mBaselineHeight:F

.field private final mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private final mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V
    .locals 1
    .parameter "string"
    .parameter "config"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/SimpleStringTexture;->mBaselineHeight:F

    .line 33
    iput-object p1, p0, Lcom/ecareme/pixwe/media/SimpleStringTexture;->mString:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/ecareme/pixwe/media/SimpleStringTexture;->mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 35
    return-void
.end method


# virtual methods
.method public getBaselineHeight()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ecareme/pixwe/media/SimpleStringTexture;->mBaselineHeight:F

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "view"

    .prologue
    const/4 v13, 0x0

    .line 49
    iget-object v3, p0, Lcom/ecareme/pixwe/media/SimpleStringTexture;->mConfig:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 50
    .local v3, config:Lcom/ecareme/pixwe/media/StringTexture$Config;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->a:F

    iget v10, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->r:F

    iget v11, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->g:F

    iget v12, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->b:F

    invoke-static {v9, v10, v11, v12}, Lcom/ecareme/pixwe/media/Shared;->argb(FFFF)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->shadowRadius:I

    int-to-float v9, v9

    const/high16 v10, -0x100

    invoke-virtual {v7, v9, v13, v13, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 54
    iget-boolean v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    if-eqz v9, :cond_1

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    iget v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-boolean v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->underline:Z

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 57
    iget-boolean v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->strikeThrough:Z

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 58
    iget-boolean v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->italic:Z

    if-eqz v9, :cond_0

    .line 59
    const/high16 v9, -0x4180

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 63
    :cond_0
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SimpleStringTexture;->mString:Ljava/lang/String;

    .line 64
    .local v8, string:Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .local v1, bounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 68
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 69
    .local v5, metrics:Landroid/graphics/Paint$FontMetricsInt;
    iget v9, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v4, v9, v10

    .line 73
    .local v4, height:I
    iget v9, v3, Lcom/ecareme/pixwe/media/StringTexture$Config;->shadowRadius:I

    add-int/lit8 v6, v9, 0x1

    .line 75
    .local v6, padding:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v6

    add-int/2addr v9, v6

    add-int v10, v4, v6

    add-int/2addr v10, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .local v2, canvas:Landroid/graphics/Canvas;
    int-to-float v9, v6

    iget v10, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v10, v6, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    invoke-virtual {v2, v8, v13, v13, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    iget v9, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    iput v9, p0, Lcom/ecareme/pixwe/media/SimpleStringTexture;->mBaselineHeight:F

    .line 82
    return-object v0

    .line 54
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bounds:Landroid/graphics/Rect;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v4           #height:I
    .end local v5           #metrics:Landroid/graphics/Paint$FontMetricsInt;
    .end local v6           #padding:I
    .end local v8           #string:Ljava/lang/String;
    :cond_1
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method
