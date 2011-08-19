.class Lcom/google/googlenav/ui/android/V;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/a;->a()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/a;->a()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/SwipeySwitcher;I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;I)I

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p3, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    cmpl-float v0, p3, v1

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/V;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    cmpg-float v0, p3, v1

    if-gez v0, :cond_3

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/V;->b()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    cmpg-float v0, p3, v1

    if-gez v0, :cond_4

    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_5

    move v1, v4

    :goto_2
    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->d(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    :goto_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    :goto_4
    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/SwipeySwitcher;Z)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    goto :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v0

    float-to-int v1, p3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/V;->a()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->scrollTo(II)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/ui/android/a;->a()I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;

    move-result-object v2

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/google/googlenav/ui/android/aq;

    if-eqz v2, :cond_4

    move v0, v4

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/V;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_4
    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/google/googlenav/ui/android/aq;

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
