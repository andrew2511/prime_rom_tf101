.class Landroid/widget/TextView$CorrectionHighlighter;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorrectionHighlighter"
.end annotation


# static fields
.field private static final FADE_OUT_DURATION:I = 0x190


# instance fields
.field private mEnd:I

.field private mFadingStartTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mStart:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    .line 5267
    iput-object p1, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5261
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    .line 5262
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    .line 5268
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 5269
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5270
    return-void
.end method

.method static synthetic access$300(Landroid/widget/TextView$CorrectionHighlighter;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5260
    invoke-direct {p0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    return-void
.end method

.method private invalidate(Z)V
    .registers 12
    .parameter "delayed"

    .prologue
    .line 5327
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_7

    .line 5344
    :goto_6
    return-void

    .line 5329
    :cond_7
    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v9

    monitor-enter v9

    .line 5330
    :try_start_c
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5332
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    .line 5333
    .local v7, left:I
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x1

    #calls: Landroid/widget/TextView;->getVerticalOffset(Z)I
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;Z)I

    move-result v1

    add-int v8, v0, v1

    .line 5335
    .local v8, top:I
    if-eqz p1, :cond_59

    .line 5336
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const-wide/16 v1, 0x10

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v7

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, v8

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int/2addr v5, v7

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/2addr v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->postInvalidateDelayed(JIIII)V

    .line 5343
    :goto_54
    monitor-exit v9

    goto :goto_6

    .end local v7           #left:I
    .end local v8           #top:I
    :catchall_56
    move-exception v0

    monitor-exit v9
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_56

    throw v0

    .line 5340
    .restart local v7       #left:I
    .restart local v8       #top:I
    :cond_59
    :try_start_59
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    invoke-static {}, Landroid/widget/TextView;->access$600()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->postInvalidate(IIII)V
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_56

    goto :goto_54
.end method

.method private stopAnimation()V
    .registers 3

    .prologue
    .line 5347
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$802(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;

    .line 5348
    return-void
.end method

.method private updatePaint()Z
    .registers 10

    .prologue
    .line 5301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/widget/TextView$CorrectionHighlighter;->mFadingStartTime:J

    sub-long v2, v5, v7

    .line 5302
    .local v2, duration:J
    const-wide/16 v5, 0x190

    cmp-long v5, v2, v5

    if-lez v5, :cond_10

    const/4 v5, 0x0

    .line 5309
    :goto_f
    return v5

    .line 5304
    :cond_10
    const/high16 v5, 0x3f80

    long-to-float v6, v2

    const/high16 v7, 0x43c8

    div-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 5305
    .local v0, coef:F
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mHighlightColor:I
    invoke-static {v5}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 5306
    .local v4, highlightColorAlpha:I
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mHighlightColor:I
    invoke-static {v5}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v0

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    add-int v1, v5, v6

    .line 5308
    .local v1, color:I
    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5309
    const/4 v5, 0x1

    goto :goto_f
.end method

.method private updatePath()Z
    .registers 7

    .prologue
    .line 5313
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v1, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5314
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_8

    const/4 v4, 0x0

    .line 5323
    :goto_7
    return v4

    .line 5317
    :cond_8
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 5318
    .local v2, length:I
    iget v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5319
    .local v3, start:I
    iget v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5321
    .local v0, end:I
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 5322
    iget-object v4, p0, Landroid/widget/TextView$CorrectionHighlighter;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5323
    const/4 v4, 0x1

    goto :goto_7
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .registers 6
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v2, 0x0

    .line 5283
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->updatePath()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->updatePaint()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5284
    if-eqz p2, :cond_13

    .line 5285
    int-to-float v0, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5288
    :cond_13
    iget-object v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/TextView$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5290
    if-eqz p2, :cond_21

    .line 5291
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5293
    :cond_21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    .line 5298
    :goto_25
    return-void

    .line 5295
    :cond_26
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->stopAnimation()V

    .line 5296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V

    goto :goto_25
.end method

.method public highlight(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 5273
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    .line 5274
    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    .line 5275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mFadingStartTime:J

    .line 5277
    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mStart:I

    if-ltz v0, :cond_21

    iget v0, p0, Landroid/widget/TextView$CorrectionHighlighter;->mEnd:I

    if-gez v0, :cond_24

    .line 5278
    :cond_21
    invoke-direct {p0}, Landroid/widget/TextView$CorrectionHighlighter;->stopAnimation()V

    .line 5280
    :cond_24
    return-void
.end method
