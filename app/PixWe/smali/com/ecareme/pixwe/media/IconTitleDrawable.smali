.class public final Lcom/ecareme/pixwe/media/IconTitleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IconTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;

.field private mTitleLayout:Landroid/text/StaticLayout;

.field private final mTitleWidth:I

.field private mTitleY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)V
    .locals 2
    .parameter "title"
    .parameter "icon"
    .parameter "config"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    .line 38
    iput-object p1, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitle:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitle:Ljava/lang/String;

    invoke-static {p3}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$0(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleWidth:I

    .line 40
    iput-object p2, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object p3, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mConfig:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/IconTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mConfig:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$1(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I

    move-result v5

    add-int v2, v4, v5

    .line 68
    .local v2, x:I
    iget v3, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleY:I

    .line 69
    .local v3, y:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    iget-object v4, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 71
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mConfig:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    .line 53
    .local v0, config:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;
    invoke-static {v0}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$2(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I

    move-result v1

    invoke-static {v0}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$0(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mConfig:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    .line 47
    .local v0, config:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;
    invoke-static {v0}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$1(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I

    move-result v1

    iget v2, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xf

    return v1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 26
    .parameter "bounds"

    .prologue
    .line 90
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    .line 91
    .local v23, left:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 92
    .local v25, top:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    .line 93
    .local v24, right:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    sub-int v18, v5, v25

    .line 94
    .local v18, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mConfig:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    move-object/from16 v17, v0

    .line 95
    .local v17, config:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;
    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$3(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I

    move-result v5

    add-int v20, v23, v5

    .line 96
    .local v20, iconLeft:I
    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$2(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I

    move-result v21

    .line 97
    .local v21, iconSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 98
    .local v19, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_0

    .line 99
    sub-int v5, v18, v21

    div-int/lit8 v5, v5, 0x2

    add-int v22, v25, v5

    .line 100
    .local v22, iconY:I
    add-int v5, v20, v21

    add-int v6, v25, v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v22

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    .end local v22           #iconY:I
    :cond_0
    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$1(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I

    move-result v5

    sub-int v10, v24, v5

    .line 105
    .local v10, outerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitle:Ljava/lang/String;

    move-object v6, v0

    .line 106
    .local v6, title:Ljava/lang/String;
    new-instance v5, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static/range {v17 .. v17}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->access$0(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;

    move-result-object v9

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x1

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move/from16 v16, v10

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 106
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int v5, v18, v5

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, v25

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/IconTitleDrawable;->mTitleY:I

    .line 109
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 81
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 85
    return-void
.end method
