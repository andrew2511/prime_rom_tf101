.class public Lcom/google/googlenav/ui/android/FlowLayout;
.super Landroid/view/ViewGroup;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:I

.field private c:Lcom/google/googlenav/ui/android/ak;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/googlenav/ui/android/FlowLayout;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v2, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    new-instance v0, Lcom/google/googlenav/ui/android/ak;

    invoke-direct {v0, v2, v2, v1}, Lcom/google/googlenav/ui/android/ak;-><init>(IIZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v2, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    new-instance v0, Lcom/google/googlenav/ui/android/ak;

    invoke-direct {v0, v2, v2, v1}, Lcom/google/googlenav/ui/android/ak;-><init>(IIZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const v2, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    new-instance v0, Lcom/google/googlenav/ui/android/ak;

    invoke-direct {v0, v2, v2, v1}, Lcom/google/googlenav/ui/android/ak;-><init>(IIZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    iput v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    return-void
.end method

.method private a(I)I
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->g:I

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(I)Landroid/view/View;
    .locals 4

    add-int/lit8 v0, p1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iget v0, v0, Lcom/google/googlenav/ui/android/ak;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iget v1, v1, Lcom/google/googlenav/ui/android/ak;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iget v0, v0, Lcom/google/googlenav/ui/android/ak;->a:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ab()I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->ac()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iget v0, v0, Lcom/google/googlenav/ui/android/ak;->a:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iget v0, v0, Lcom/google/googlenav/ui/android/ak;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/android/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->a(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->c()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    iget v3, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move v11, v5

    move v5, v2

    move v2, v11

    move v12, v3

    move v3, v4

    move v4, v12

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v9, v5, v7

    if-le v9, v0, :cond_4

    if-lt v3, v1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v5, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    iget v9, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    add-int/lit8 v9, v9, 0x5

    add-int/2addr v4, v9

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int v9, v5, v7

    add-int/lit8 v9, v9, 0x8

    if-lt v3, v1, :cond_5

    iget-object v10, p0, Lcom/google/googlenav/ui/android/FlowLayout;->c:Lcom/google/googlenav/ui/android/ak;

    iget-boolean v10, v10, Lcom/google/googlenav/ui/android/ak;->c:Z

    if-nez v10, :cond_7

    :cond_5
    add-int/2addr v7, v5

    add-int/2addr v8, v4

    invoke-virtual {v6, v5, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    move v5, v9

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/FlowLayout;->b(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-direct {p0, v10, v9, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Landroid/view/View;II)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/2addr v7, v5

    add-int/2addr v8, v4

    invoke-virtual {v6, v5, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    move v5, v9

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->b()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v9, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int v0, v5, v7

    add-int v2, v4, v8

    invoke-virtual {v6, v5, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, v9

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v0

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_9
    add-int v0, v5, v7

    add-int v1, v4, v8

    invoke-virtual {v6, v5, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    move v0, v5

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 13

    const/16 v11, 0x8

    const/high16 v10, -0x8000

    const/4 v9, 0x0

    sget-boolean v0, Lcom/google/googlenav/ui/android/FlowLayout;->a:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->a()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->a(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->c()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    iget v3, p0, Lcom/google/googlenav/ui/android/FlowLayout;->d:I

    move v4, v9

    move v5, v9

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v11, :cond_1

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    const/4 v4, 0x1

    move v5, v2

    move v2, v9

    move v12, v3

    move v3, v4

    move v4, v12

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v11, :cond_6

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    const/high16 v9, 0x4000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v7, v5, v6

    if-le v7, v0, :cond_5

    if-lt v3, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    add-int/2addr v0, v4

    iget v1, p0, Lcom/google/googlenav/ui/android/FlowLayout;->e:I

    add-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/android/FlowLayout;->setMeasuredDimension(II)V

    return-void

    :cond_4
    iget v5, p0, Lcom/google/googlenav/ui/android/FlowLayout;->f:I

    iget v7, p0, Lcom/google/googlenav/ui/android/FlowLayout;->b:I

    add-int/lit8 v7, v7, 0x5

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
