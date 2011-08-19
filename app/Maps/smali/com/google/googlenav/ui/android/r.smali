.class Lcom/google/googlenav/ui/android/r;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/google/googlenav/ui/android/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;Lcom/google/googlenav/ui/android/R;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/android/r;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->b:Ljava/util/ArrayList;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/r;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/r;->d:Lcom/google/googlenav/ui/android/R;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)Lcom/google/googlenav/ui/android/Z;
    .locals 6

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/googlenav/ui/android/aq;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/r;->d:Lcom/google/googlenav/ui/android/R;

    invoke-interface {v3}, Lcom/google/googlenav/ui/android/R;->a()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/r;->b:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/googlenav/ui/android/r;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/googlenav/ui/android/aq;-><init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/android/r;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/Z;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/android/aq;

    move-object v2, v0

    invoke-static {v2, p1}, Lcom/google/googlenav/ui/android/aq;->a(Lcom/google/googlenav/ui/android/aq;Landroid/content/Intent;)Landroid/content/Intent;

    return-object v1
.end method

.method a(Lcom/google/googlenav/ui/android/Z;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
