.class public Lh/fS;
.super Lh/eR;


# instance fields
.field a:Ljava/lang/String;

.field b:LI/x;

.field c:LI/q;

.field d:LI/c;

.field final e:Lv/t;

.field f:Lh/cD;


# direct methods
.method protected constructor <init>(Lh/eY;LaU/a;Lv/t;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const-string v0, "recent"

    iput-object v0, p0, Lh/fS;->a:Ljava/lang/String;

    iput-object p3, p0, Lh/fS;->e:Lv/t;

    return-void
.end method

.method private h()LI/j;
    .locals 1

    new-instance v0, Lh/dj;

    invoke-direct {v0, p0}, Lh/dj;-><init>(Lh/fS;)V

    return-object v0
.end method

.method private j()LI/n;
    .locals 1

    new-instance v0, Lh/dk;

    invoke-direct {v0, p0}, Lh/dk;-><init>(Lh/fS;)V

    return-object v0
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/fS;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x8

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/fS;->a(Lax/c;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/fS;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/LayoutInflater;LI/n;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-interface {p3, p1, p0}, LI/n;->a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V

    const-string v0, "card_id"

    invoke-static {v0, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/fS;->b:LI/x;

    invoke-virtual {v0, p1}, LI/x;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 6

    new-instance v0, LI/q;

    iget-object v1, p0, Lh/fS;->e:Lv/t;

    iget-object v2, p0, Lh/fS;->g:Lh/eY;

    iget-object v3, p0, Lh/fS;->g:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v3

    iget-object v4, p0, Lh/fS;->f:Lh/cD;

    new-instance v5, Lh/do;

    invoke-direct {v5, p0}, Lh/do;-><init>(Lh/fS;)V

    invoke-direct/range {v0 .. v5}, LI/q;-><init>(Lv/t;Lh/eY;Lcom/google/googlenav/bL;Lh/cD;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lh/fS;->c:LI/q;

    iget-object v0, p0, Lh/fS;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bL;->q()Li/av;

    move-result-object v0

    iget-object v1, p0, Lh/fS;->f:Lh/cD;

    invoke-virtual {v0, v1}, Li/av;->a(Lh/cD;)V

    new-instance v1, LI/x;

    invoke-direct {v1, v0}, LI/x;-><init>(Li/av;)V

    iput-object v1, p0, Lh/fS;->b:LI/x;

    new-instance v0, LI/c;

    new-instance v1, Lh/dp;

    invoke-direct {v1, p0}, Lh/dp;-><init>(Lh/fS;)V

    invoke-direct {v0, v1}, LI/c;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lh/fS;->d:LI/c;

    iget-object v0, p0, Lh/fS;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fS;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/fS;->j()LI/n;

    move-result-object v2

    invoke-direct {p0}, Lh/fS;->h()LI/j;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lx/z;-><init>(LI/n;LI/j;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fS;->j:Lx/J;

    iget-object v0, p0, Lh/fS;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method protected a(Landroid/widget/TabHost;Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/ui/view/android/e;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1, p4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f0f0349

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p7, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p8}, Lcom/google/googlenav/ui/Workspace;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bL;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lh/fS;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lh/fS;->u()V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/googlenav/bL;->v(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bL;Ljava/lang/String;Lh/cD;)V
    .locals 0

    iput-object p3, p0, Lh/fS;->f:Lh/cD;

    invoke-virtual {p0, p1, p2}, Lh/fS;->a(Lcom/google/googlenav/bL;Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fS;->f:Lh/cD;

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->b()Lv/m;

    move-result-object v0

    iget-object v1, p0, Lh/fS;->c:LI/q;

    invoke-interface {v0, v1}, Lv/m;->b(Lv/z;)V

    iget-object v1, p0, Lh/fS;->b:LI/x;

    invoke-interface {v0, v1}, Lv/m;->b(Lv/z;)V

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lh/fS;->f:Lh/cD;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lh/fS;->v()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fS;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->B()Lh/fQ;

    move-result-object v0

    const/16 v1, 0x32c

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lh/fQ;->a(IILjava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
