.class public Lcom/google/googlenav/ui/Workspace;
.super Landroid/view/ViewGroup;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Runnable;

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Landroid/view/VelocityTracker;

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/google/googlenav/ui/TabRow;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Lcom/google/googlenav/ui/N;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/Workspace;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    new-instance v0, Lcom/google/googlenav/ui/u;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/u;-><init>(Lcom/google/googlenav/ui/Workspace;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->c:I

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->d()V

    return-void
.end method

.method private a(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    sub-int v0, p2, v0

    if-ne p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;IJ)V
    .locals 3

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->o:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->p:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->q:I

    return-void
.end method

.method private e()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->d(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_1

    move v0, v2

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/TabRow;->a()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/google/googlenav/ui/TabRow;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    iput v4, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->requestLayout()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/N;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/N;

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    goto :goto_0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method public c(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->invalidate()V

    return-void
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iput v4, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    goto :goto_0
.end method

.method d(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v6, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v1

    mul-int v3, v6, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v1

    sub-int/2addr v3, v1

    mul-int/lit16 v0, v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->awakenScrollBars(I)Z

    if-nez v0, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v5, v0

    :goto_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    add-int/lit8 v4, v5, 0xa

    int-to-long v7, v4

    invoke-virtual {p0, v0, v7, v8}, Lcom/google/googlenav/ui/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    invoke-virtual {v0, v6, v9}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/N;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/N;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-interface {v0, v6, v1}, Lcom/google/googlenav/ui/N;->a(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->invalidate()V

    goto :goto_0

    :cond_6
    move v5, v0

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_2
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->d(I)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->d(I)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move-object v0, p1

    :goto_1
    if-ne v0, v1, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-eqz v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-eqz v0, :cond_8

    move v0, v6

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v2, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->o:I

    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->p:I

    if-le v2, v4, :cond_4

    move v4, v6

    :goto_2
    if-le v2, v3, :cond_5

    move v2, v6

    :goto_3
    if-le v0, v3, :cond_6

    move v0, v6

    :goto_4
    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    :cond_2
    if-eqz v4, :cond_3

    iput v6, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    :cond_3
    iget-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v7, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :cond_6
    move v0, v5

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    iput-boolean v6, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v5

    :goto_5
    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    goto :goto_1

    :cond_7
    move v0, v6

    goto :goto_5

    :pswitch_3
    iput v5, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput-boolean v5, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_8
    move v0, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    move v1, v7

    move v2, v7

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/view/View;->measure(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/Workspace;->a(II)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    iput-boolean v4, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    :cond_3
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    check-cast p1, Lcom/google/googlenav/ui/al;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/al;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/googlenav/ui/al;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/al;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/al;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iput v1, v0, Lcom/google/googlenav/ui/al;->a:I

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v0

    if-gez v1, :cond_3

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/google/googlenav/ui/Workspace;->scrollBy(II)V

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/google/googlenav/ui/Workspace;->scrollBy(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->awakenScrollBars()Z

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-ne v0, v5, :cond_5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->q:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42c8

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    move v0, v5

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v2

    if-eqz v0, :cond_7

    const/16 v3, 0x258

    if-le v1, v3, :cond_7

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-lez v3, :cond_7

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    sub-int/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->d(I)V

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    :cond_5
    iput v6, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    const/16 v0, -0x258

    if-ge v1, v0, :cond_8

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->d(I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->f()V

    goto :goto_2

    :pswitch_4
    iput v6, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/View;)I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eq v0, v2, :cond_0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->a()V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->d(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->d(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
