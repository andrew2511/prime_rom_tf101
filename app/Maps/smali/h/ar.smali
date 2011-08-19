.class public abstract Lh/ar;
.super Lh/eR;

# interfaces
.implements Lcom/google/googlenav/P;


# instance fields
.field private a:Lh/eT;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method static synthetic a(ILjava/lang/String;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    invoke-static {p0, p1, p2}, Lh/ar;->b(ILjava/lang/String;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lh/ar;)V
    .locals 0

    invoke-direct {p0}, Lh/ar;->o()V

    return-void
.end method

.method static synthetic a(Lh/ar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/ar;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, p1, p0}, Lcom/google/googlenav/f;-><init>(Ljava/lang/String;Lcom/google/googlenav/P;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lh/ar;->g:Lh/eY;

    const/16 v1, 0x227

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh/fc;

    invoke-direct {v3, v6}, Lh/fc;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    return-void
.end method

.method private static b(ILjava/lang/String;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic b(Lh/ar;)V
    .locals 0

    invoke-direct {p0}, Lh/ar;->m()V

    return-void
.end method

.method static synthetic c(Lh/ar;)V
    .locals 0

    invoke-direct {p0}, Lh/ar;->n()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    invoke-virtual {p0}, Lh/ar;->i()I

    move-result v1

    invoke-interface {v0, v1}, Lh/eT;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ar;->a:Lh/eT;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lh/ar;->k:I

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    invoke-interface {v0}, Lh/eT;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ar;->a:Lh/eT;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lh/ar;->k:I

    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    invoke-interface {v0}, Lh/eT;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ar;->a:Lh/eT;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lh/ar;->k:I

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/ar;->a:Lh/eT;

    invoke-virtual {p0}, Lh/ar;->v()V

    invoke-virtual {p0, v0}, Lh/ar;->a(Lh/eT;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/ar;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/ar;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/ar;->d()V

    iget v0, p0, Lh/ar;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/ar;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/ar;->k:I

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh/eP;
    .locals 6

    new-instance v0, Lh/eP;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lh/eP;-><init>(Lh/ar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lh/ar;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    const/4 v0, 0x3

    iput v0, p0, Lh/ar;->k:I

    invoke-virtual {p0}, Lh/ar;->h()Lh/eP;

    move-result-object v0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    new-instance v2, Lx/z;

    invoke-direct {v2, v0}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v1, v2, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, p0, Lh/ar;->j:Lx/J;

    iget-object v1, p0, Lh/ar;->j:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    iget-object v1, p0, Lh/ar;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->v()LaU/a;

    move-result-object v1

    invoke-static {v0, v1}, Lc/m;->a(Lc/l;LaU/a;)V

    return-void
.end method

.method public a(Lh/eT;)V
    .locals 0

    iput-object p1, p0, Lh/ar;->a:Lh/eT;

    invoke-virtual {p0}, Lh/ar;->u()V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lh/ar;->h:LaU/a;

    new-instance v1, Lh/U;

    invoke-direct {v1, p0, p2}, Lh/U;-><init>(Lh/ar;[B)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput v0, p0, Lh/ar;->k:I

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/ar;->k:I

    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 1

    invoke-super {p0}, Lh/eR;->b()V

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ar;->a:Lh/eT;

    invoke-interface {v0}, Lh/eT;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh/ar;->a:Lh/eT;

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lh/ar;->o()V

    return-void
.end method

.method protected abstract h()Lh/eP;
.end method

.method protected abstract i()I
.end method

.method protected abstract j()Ljava/lang/String;
.end method
