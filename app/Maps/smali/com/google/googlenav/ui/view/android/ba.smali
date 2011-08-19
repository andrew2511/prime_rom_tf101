.class Lcom/google/googlenav/ui/view/android/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/android/C;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aG;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aG;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->b(Lcom/google/googlenav/ui/view/android/aG;)Lcom/google/googlenav/ui/android/SwipeySwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->b(Lcom/google/googlenav/ui/view/android/aG;)Lcom/google/googlenav/ui/android/SwipeySwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ba;->a(Landroid/widget/ListView;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ba;->a(Z)V

    return-void
.end method

.method public a(FZ)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ba;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/aG;->b(Lcom/google/googlenav/ui/view/android/aG;)Lcom/google/googlenav/ui/android/SwipeySwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->c(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/aG;->d(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->d(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/aG;->c(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->d(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->c(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lx/K;->l(Z)I

    move-result v0

    const-string v1, "f"

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    :goto_1
    const/16 v2, 0x54

    const-string v3, "s"

    invoke-static {v2, v3, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;

    move-result-object v0

    invoke-interface {v0, v1}, Lx/K;->k(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->e(Lcom/google/googlenav/ui/view/android/aG;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/aG;->d(Lcom/google/googlenav/ui/view/android/aG;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/aG;->b(Lcom/google/googlenav/ui/view/android/aG;I)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Lcom/google/googlenav/ui/view/android/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lx/K;->l(Z)I

    move-result v0

    const-string v1, "b"

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_1
.end method
