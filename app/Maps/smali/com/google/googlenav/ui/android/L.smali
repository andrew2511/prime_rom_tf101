.class Lcom/google/googlenav/ui/android/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/googlenav/ui/android/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->scrollTo(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->postInvalidate()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->scrollTo(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j(Lcom/google/googlenav/ui/android/SwipeySwitcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(Lcom/google/googlenav/ui/android/SwipeySwitcher;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
