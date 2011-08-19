.class public Lh/aS;
.super Lh/eR;


# instance fields
.field private final a:Lcom/google/googlenav/bL;

.field private b:Lk/j;

.field private final c:LaB/f;

.field private final d:LaB/f;


# direct methods
.method protected constructor <init>(Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 3

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-object p2, p0, Lh/aS;->a:Lcom/google/googlenav/bL;

    iget-object v0, p0, Lh/aS;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    iput-object v0, p0, Lh/aS;->b:Lk/j;

    iget-object v0, p0, Lh/aS;->b:Lk/j;

    sget-char v1, Lcom/google/googlenav/ui/aV;->an:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    iput-object v0, p0, Lh/aS;->c:LaB/f;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    iget-object v1, p0, Lh/aS;->c:LaB/f;

    invoke-virtual {v1}, LaB/f;->f()I

    move-result v1

    iget-object v2, p0, Lh/aS;->c:LaB/f;

    invoke-virtual {v2}, LaB/f;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lk/i;->a(II)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    iput-object v0, p0, Lh/aS;->d:LaB/f;

    return-void
.end method

.method static synthetic a(Lh/aS;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/aS;->a:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method static synthetic a(Lh/aS;Lr/c;I)Lcom/google/googlenav/ui/view/android/g;
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/aS;->a(Lr/c;I)Lcom/google/googlenav/ui/view/android/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Lr/c;I)Lcom/google/googlenav/ui/view/android/g;
    .locals 9

    new-instance v0, Lcom/google/googlenav/ui/view/android/g;

    invoke-interface {p1}, Lr/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lr/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lr/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lr/c;->c()Lk/l;

    move-result-object v4

    check-cast v4, LaB/f;

    invoke-interface {p1}, Lr/c;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lh/aS;->c:LaB/f;

    :goto_0
    new-instance v6, Lx/q;

    invoke-interface {p1}, Lr/c;->f()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x44d

    :goto_1
    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, v8}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaB/f;LaB/f;Lx/q;)V

    return-object v0

    :cond_0
    iget-object v5, p0, Lh/aS;->d:LaB/f;

    goto :goto_0

    :cond_1
    const/16 v7, 0x44c

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0f002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f020252

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f0024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x1e8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0f000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x1e6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lh/aS;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/aS;->a(Landroid/view/View;)V

    return-void
.end method

.method private h()LI/n;
    .locals 1

    new-instance v0, Lh/ey;

    invoke-direct {v0, p0}, Lh/ey;-><init>(Lh/aS;)V

    return-object v0
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lax/c;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;
    .locals 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lr/h;->a()Lr/h;

    move-result-object v1

    invoke-virtual {v1}, Lr/h;->b()[Lr/c;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-direct {p0, v3, v2}, Lh/aS;->a(Lr/c;I)Lcom/google/googlenav/ui/view/android/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/aS;->h()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/aS;->j:Lx/J;

    iget-object v0, p0, Lh/aS;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method
