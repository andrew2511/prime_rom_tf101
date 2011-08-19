.class Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;
.super Landroid/widget/LinearLayout;
.source "ArticlesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/ArticlesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowWithBorders"
.end annotation


# static fields
.field private static final BORDER_PAINT:Landroid/graphics/Paint;


# instance fields
.field private drawBottomBorders:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->BORDER_PAINT:Landroid/graphics/Paint;

    .line 329
    sget-object v0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->BORDER_PAINT:Landroid/graphics/Paint;

    const v1, -0x7f7f7f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    sget-object v0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->BORDER_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->setOrientation(I)V

    .line 337
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->setWeightSum(F)V

    .line 338
    iput-boolean v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->drawBottomBorders:Z

    .line 339
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 347
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 349
    invoke-virtual {p0, v8}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 351
    .local v7, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 352
    .local v10, padding:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    int-to-float v2, v10

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getHeight()I

    move-result v0

    sub-int/2addr v0, v10

    int-to-float v4, v0

    sget-object v5, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->BORDER_PAINT:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 347
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 355
    .end local v7           #child:Landroid/view/View;
    .end local v10           #padding:I
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->drawBottomBorders:Z

    if-eqz v0, :cond_1

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 358
    .local v9, leftMostChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 360
    .local v11, rightMostChild:Landroid/view/View;
    if-eqz v9, :cond_1

    if-eqz v11, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getHeight()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->BORDER_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v6, v0, v1

    .line 366
    .local v6, bottomY:I
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v1, v0

    int-to-float v2, v6

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    sget-object v5, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->BORDER_PAINT:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 373
    .end local v6           #bottomY:I
    .end local v9           #leftMostChild:Landroid/view/View;
    .end local v11           #rightMostChild:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public turnBottomBordersOn()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->drawBottomBorders:Z

    .line 378
    return-void
.end method
