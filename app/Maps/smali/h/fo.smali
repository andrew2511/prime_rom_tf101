.class public Lh/fo;
.super Lh/eR;


# instance fields
.field a:Lh/bN;


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->f:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lh/fo;->a:Lh/bN;

    const v0, 0x7f0f0083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lh/bN;->i:Landroid/widget/CheckBox;

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->i:Landroid/widget/CheckBox;

    iget-object v1, p0, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lh/fo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fo;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0f003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lh/ah;

    invoke-direct {v1, p0}, Lh/ah;-><init>(Lh/fo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->d:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lh/ag;

    invoke-direct {v1, p0}, Lh/ag;-><init>(Lh/fo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0f0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lh/fo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fo;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V
    .locals 2

    new-instance v0, Lh/bN;

    invoke-direct {v0}, Lh/bN;-><init>()V

    iput-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iput-object p1, v0, Lh/bN;->a:Ljava/lang/String;

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iput-object p2, v0, Lh/bN;->b:Ljava/lang/String;

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    if-eqz p3, :cond_0

    move-object v1, p3

    :goto_0
    iput-object v1, v0, Lh/bN;->c:Ljava/lang/String;

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    if-eqz p4, :cond_1

    move-object v1, p4

    :goto_1
    iput-object v1, v0, Lh/bN;->d:Ljava/lang/String;

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iput-boolean p5, v0, Lh/bN;->e:Z

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iput-object p6, v0, Lh/bN;->f:Ljava/lang/String;

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iput-boolean p7, v0, Lh/bN;->g:Z

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iput-object p8, v0, Lh/bN;->h:Lh/eJ;

    return-void

    :cond_0
    const/16 v1, 0x2a0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public T_()V
    .locals 1

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    invoke-virtual {p0}, Lh/fo;->v()V

    iput-object v0, p0, Lh/fo;->a:Lh/bN;

    invoke-virtual {p0}, Lh/fo;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/fo;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/fo;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/fo;->d()V

    iget v0, p0, Lh/fo;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/fo;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/fo;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lh/fo;->k:I

    iget-object v0, p0, Lh/fo;->j:Lx/J;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-virtual {p0}, Lh/fo;->h()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fo;->j:Lx/J;

    iget-object v0, p0, Lh/fo;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lh/fo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    invoke-virtual {p0}, Lh/fo;->u()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lh/fo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iput-object v4, v0, Lh/bN;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lh/fo;->u()V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fo;->a:Lh/bN;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lh/fo;->v()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-boolean v0, v0, Lh/bN;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->h:Lh/eJ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->h:Lh/eJ;

    invoke-interface {v1, v0}, Lh/eJ;->c(Z)V

    :cond_2
    invoke-virtual {p0}, Lh/fo;->v()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_1
.end method

.method protected h()LI/n;
    .locals 1

    new-instance v0, Lh/ai;

    invoke-direct {v0, p0}, Lh/ai;-><init>(Lh/fo;)V

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->h:Lh/eJ;

    iget-object v1, p0, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->i:Landroid/widget/CheckBox;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lh/fo;->v()V

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lh/eJ;->a(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    goto :goto_0
.end method
