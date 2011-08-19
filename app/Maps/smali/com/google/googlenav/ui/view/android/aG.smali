.class public Lcom/google/googlenav/ui/view/android/aG;
.super Lcom/google/googlenav/ui/view/android/aO;


# instance fields
.field private final h:Lx/K;

.field private i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/Map;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    iput v1, p0, Lcom/google/googlenav/ui/view/android/aG;->j:I

    iput v1, p0, Lcom/google/googlenav/ui/view/android/aG;->k:I

    iput v1, p0, Lcom/google/googlenav/ui/view/android/aG;->l:I

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->m:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aG;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;Lx/K;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x103000d

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    iput v1, p0, Lcom/google/googlenav/ui/view/android/aG;->j:I

    iput v1, p0, Lcom/google/googlenav/ui/view/android/aG;->k:I

    iput v1, p0, Lcom/google/googlenav/ui/view/android/aG;->l:I

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->m:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aG;->n:Z

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aG;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/view/android/aG;->l:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aG;)Lx/K;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    return-object v0
.end method

.method private b(I)I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->d()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    invoke-interface {v0}, Lx/K;->bt()I

    move-result v0

    goto :goto_0

    :cond_1
    sub-int v1, v0, v2

    if-eq p1, v1, :cond_2

    if-nez v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lx/K;->l(Z)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    invoke-interface {v0, v2}, Lx/K;->l(Z)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/aG;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/view/android/aG;->k:I

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/aG;)Lcom/google/googlenav/ui/android/SwipeySwitcher;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/aG;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aG;->k:I

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/aG;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aG;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/aG;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aG;->l:I

    return v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/aG;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aG;->p()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/android/aG;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aG;->j:I

    return v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/view/android/aG;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->m:Ljava/util/Map;

    return-object v0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    invoke-interface {v1}, Lx/K;->bt()I

    move-result v1

    invoke-interface {v0, v1}, Lx/K;->j(I)Lx/J;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/e;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->g:Lx/z;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->f:Landroid/view/View;

    goto :goto_0
.end method

.method private t()Lcom/google/googlenav/ui/android/C;
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/view/android/ba;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/ba;-><init>(Lcom/google/googlenav/ui/view/android/aG;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/aO;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aG;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aG;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0f027c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SwipeySwitcher;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    new-instance v1, Lcom/google/googlenav/ui/view/android/X;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/android/X;-><init>(Lcom/google/googlenav/ui/view/android/aG;Lcom/google/googlenav/ui/view/android/ba;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aG;->t()Lcom/google/googlenav/ui/android/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/C;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aG;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->d()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/aG;->l:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aG;->p()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lx/K;->l(Z)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lx/K;->l(Z)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/view/android/aG;->j:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/view/android/aG;->j:I

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->g:Lx/z;

    invoke-virtual {v0}, Lx/z;->j()V

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/aO;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aG;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aG;->n:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    invoke-interface {v0}, Lx/K;->bu()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    invoke-interface {v0, v1}, Lx/K;->m(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b()V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aG;->n:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->i:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aG;->n:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aG;->p()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->g:Lx/z;

    invoke-virtual {v0}, Lx/z;->j()V

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/aO;->e()V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aG;->n:Z

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->h:Lx/K;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/aO;->q()V

    :cond_0
    return-void
.end method
