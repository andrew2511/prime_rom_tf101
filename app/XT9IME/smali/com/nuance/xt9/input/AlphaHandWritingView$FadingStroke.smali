.class Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;
.super Ljava/lang/Object;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadingStroke"
.end annotation


# instance fields
.field public mColor:I

.field public mCurrentAlpha:I

.field public mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "color"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 184
    .local v0, dm:Landroid/util/DisplayMetrics;
    iput p2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    .line 185
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 186
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    .line 187
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 190
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 191
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40c0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    return-void
.end method


# virtual methods
.method public decreaseAlpha()V
    .locals 5

    .prologue
    .line 203
    iget v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 204
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 205
    return-void
.end method

.method public resetAlpha()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 198
    iget v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    .line 199
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    return-void
.end method
