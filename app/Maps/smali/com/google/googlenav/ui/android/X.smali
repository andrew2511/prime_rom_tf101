.class Lcom/google/googlenav/ui/android/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->i(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/r;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/Z;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/google/googlenav/ui/android/Z;->g()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j(Lcom/google/googlenav/ui/android/SwipeySwitcher;)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, v4

    iget-object v2, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(Lcom/google/googlenav/ui/android/SwipeySwitcher;I)I

    move-result v1

    iget-object v3, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-interface {v2, v1, v3}, Lcom/google/googlenav/ui/android/a;->a(ILandroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/Z;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/googlenav/ui/android/Z;->a()V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->removeViewAt(I)V

    :cond_4
    iget-object v2, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v2, v1, v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/SwipeySwitcher;Lcom/google/googlenav/ui/android/Z;I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/Z;->b()V

    goto :goto_0
.end method
