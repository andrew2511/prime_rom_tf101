.class public Lcom/google/googlenav/ui/view/android/aA;
.super Lcom/google/googlenav/ui/view/android/aG;


# instance fields
.field private h:Lx/J;

.field private i:Lx/J;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aG;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;Lx/K;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/aG;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;Lx/K;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aA;)Lx/J;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->h:Lx/J;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILk/l;Ljava/util/Vector;)V
    .locals 3

    sget-object v0, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/ui/aV;->f(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->b(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/aA;)Lx/J;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->i:Lx/J;

    return-object v0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->h:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->h:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->i:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->i:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/android/aG;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/L;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lx/B;->d:Lx/G;

    iget-object v1, v1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    iget-object p0, v1, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    check-cast p0, Lo/U;

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/android/ab;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method protected a(Lcom/google/googlenav/ui/br;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->h()I

    move-result v0

    const/16 v1, 0x136

    if-eq v0, v1, :cond_0

    const/16 v1, 0x135

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aA;->b(I)V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x898

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aA;->p()V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/aG;->a(Lcom/google/googlenav/ui/br;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(I)V
    .locals 9

    const/16 v8, 0x136

    const/16 v6, 0x135

    const/16 v5, 0x134

    const/4 v7, -0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->an:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    const/16 v1, 0x191

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v5, :cond_0

    move-object v2, v0

    :goto_0
    invoke-direct {p0, v1, v5, v2, v4}, Lcom/google/googlenav/ui/view/android/aA;->a(Ljava/lang/String;ILk/l;Ljava/util/Vector;)V

    const/16 v1, 0x189

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v6, :cond_1

    move-object v2, v0

    :goto_1
    invoke-direct {p0, v1, v6, v2, v4}, Lcom/google/googlenav/ui/view/android/aA;->a(Ljava/lang/String;ILk/l;Ljava/util/Vector;)V

    const/16 v1, 0x18c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v8, :cond_2

    :goto_2
    invoke-direct {p0, v1, v8, v0, v4}, Lcom/google/googlenav/ui/view/android/aA;->a(Ljava/lang/String;ILk/l;Ljava/util/Vector;)V

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x3d8

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aA;->t()V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/bn;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/bn;-><init>(Lcom/google/googlenav/ui/view/android/aA;)V

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->h:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->h:Lx/J;

    invoke-interface {v0, v7}, Lx/J;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x148

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_2
.end method

.method public dismiss()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aA;->t()V

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/aG;->dismiss()V

    return-void
.end method

.method protected p()V
    .locals 8

    const/4 v7, -0x1

    const/16 v6, 0x144

    const/4 v2, 0x0

    const/16 v0, 0x164

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lx/G;

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "15"

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    const/16 v5, 0x899

    invoke-static {v0, v1, v5}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "30"

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    const/16 v5, 0x89a

    invoke-static {v0, v1, v5}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    const/16 v5, 0x89b

    invoke-static {v0, v1, v5}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aA;->u()V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/view/android/bo;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/android/bo;-><init>(Lcom/google/googlenav/ui/view/android/aA;)V

    invoke-virtual {v1, v0, v3}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->i:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->i:Lx/J;

    invoke-interface {v0, v7}, Lx/J;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x148

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method
