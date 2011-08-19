.class Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BackgroundSpan.java"


# static fields
.field public static final BOTTOM_PADDING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BackgroundSpan"

.field public static final TOP_PADDING:I = 0x5


# instance fields
.field private mAfterPadding:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mAfterPadding:I

    .line 42
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    if-eqz p2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 66
    :cond_0
    const-string v5, "BackgroundSpan"

    const-string v6, "Unexpected parameters for draw()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    invoke-interface/range {p2 .. p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 71
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    .line 74
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    move-object v5, p0

    move-object/from16 v6, p9

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 75
    iget v6, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mAfterPadding:I

    sub-int/2addr v5, v6

    .line 77
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p9

    move-object v1, v7

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 80
    new-instance v7, Landroid/graphics/Rect;

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/lit8 v9, p6, 0x5

    move/from16 v0, p5

    float-to-int v0, v0

    move v10, v0

    add-int/2addr v10, v5

    move/from16 v0, p7

    int-to-float v0, v0

    move v12, v0

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x5

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    iget-object v8, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 84
    iget-object v8, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 85
    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_3
    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v5, v5, p5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 90
    invoke-interface/range {p2 .. p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    move-object v0, p1

    move-object v1, v6

    move v2, v5

    move v3, v7

    move-object/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getAfterPadding()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mAfterPadding:I

    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 100
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p3, p4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mAfterPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setAfterPadding(I)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mAfterPadding:I

    .line 56
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundSpan;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method
