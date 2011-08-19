.class Lcom/google/googlenav/ui/view/android/X;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/android/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aG;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/aG;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/aG;Lcom/google/googlenav/ui/view/android/ba;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/X;-><init>(Lcom/google/googlenav/ui/view/android/aG;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->f(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/aG;->c(Lcom/google/googlenav/ui/view/android/aG;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->g(Lcom/google/googlenav/ui/view/android/aG;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/aG;->g(Lcom/google/googlenav/ui/view/android/aG;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(ILandroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/Z;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/aG;->c(Lcom/google/googlenav/ui/view/android/aG;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;

    move-result-object v1

    invoke-interface {v1, v0}, Lx/K;->l(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->b(Lcom/google/googlenav/ui/view/android/aG;)Lcom/google/googlenav/ui/android/SwipeySwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(I)Lcom/google/googlenav/ui/android/Z;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;

    move-result-object v1

    invoke-interface {v1, v0}, Lx/K;->j(I)Lx/J;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/aG;->a(Lx/z;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/bl;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/X;->a(I)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/googlenav/ui/view/android/bl;-><init>(Lcom/google/googlenav/ui/view/android/aG;Landroid/view/View;Landroid/content/Intent;Lcom/google/googlenav/ui/view/android/ba;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->b(Lcom/google/googlenav/ui/view/android/aG;)Lcom/google/googlenav/ui/android/SwipeySwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(I)Lcom/google/googlenav/ui/android/Z;

    move-result-object v0

    goto :goto_0
.end method
