.class public Lcom/google/googlenav/ui/android/PieLineView;
.super Landroid/widget/TextView;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/view/Display;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0xe

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc7

    const/16 v3, 0xb

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xdc

    const/16 v3, 0x6e

    const/16 v4, 0x1a

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xda

    const/16 v3, 0xdb

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x95

    const/16 v3, 0xd8

    const/16 v4, 0x43

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x96

    invoke-static {v5, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/googlenav/ui/android/PieLineView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->b:Landroid/view/Display;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(II)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x4000

    if-eq v1, v2, :cond_0

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;I)I
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    return v0
.end method

.method private a(Lcom/google/googlenav/ui/android/aj;Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p1, Lcom/google/googlenav/ui/android/aj;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/googlenav/ui/android/aj;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int v2, p3, v4

    if-gt v1, v2, :cond_0

    iget-object v0, p1, Lcom/google/googlenav/ui/android/aj;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/google/googlenav/ui/android/aj;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/googlenav/ui/android/aj;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    sub-int v1, p3, v4

    if-gt v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/googlenav/ui/android/aj;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingRight()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/PieLineView;->getPaddingBottom()I

    move-result v3

    sub-int v8, v1, v3

    iget-object v1, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v9, v6

    move v4, v6

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/aj;

    iget v5, v1, Lcom/google/googlenav/ui/android/aj;->a:I

    if-lez v5, :cond_2

    iget v1, v1, Lcom/google/googlenav/ui/android/aj;->a:I

    add-int/2addr v1, v9

    add-int/lit8 v4, v4, 0x1

    move v9, v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, v4, 0x1

    sub-int v10, v2, v1

    move v11, v6

    move v12, v6

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/PieLineView;->e:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/android/aj;

    move-object v7, v0

    iget v1, v7, Lcom/google/googlenav/ui/android/aj;->a:I

    if-lez v1, :cond_5

    iget v1, v7, Lcom/google/googlenav/ui/android/aj;->a:I

    mul-int/2addr v1, v10

    div-int v13, v1, v9

    iget-object v1, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    sget-object v2, Lcom/google/googlenav/ui/android/PieLineView;->a:[I

    sget-object v3, Lcom/google/googlenav/ui/android/PieLineView;->a:[I

    array-length v3, v3

    rem-int v3, v11, v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v12

    const/4 v3, 0x0

    add-int v1, v12, v13

    int-to-float v4, v1

    int-to-float v5, v8

    iget-object v6, p0, Lcom/google/googlenav/ui/android/PieLineView;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    invoke-direct {p0, v7, v1, v13}, Lcom/google/googlenav/ui/android/PieLineView;->a(Lcom/google/googlenav/ui/android/aj;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2, v8}, Lcom/google/googlenav/ui/android/PieLineView;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v2

    add-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v1, v13, 0x1

    add-int/2addr v1, v12

    :goto_2
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v12, v1

    goto :goto_1

    :cond_5
    move v1, v12

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->b:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/PieLineView;->a(II)I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/android/PieLineView;->a(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/PieLineView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/PieLineView;->d:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
