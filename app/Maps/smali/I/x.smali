.class public LI/x;
.super LI/M;

# interfaces
.implements LaD/n;
.implements Lh/eJ;
.implements Lv/z;


# instance fields
.field a:Lcom/google/googlenav/ui/view/android/e;

.field b:Ljava/util/List;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field volatile f:Z

.field private final j:Li/av;

.field private k:Landroid/widget/ListView;

.field private l:Lcom/google/googlenav/ui/android/LoadingFooterView;

.field private m:I


# direct methods
.method public constructor <init>(Li/av;)V
    .locals 1

    invoke-direct {p0, p1}, LI/M;-><init>(Li/bl;)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LI/x;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LI/x;->f:Z

    iput-object p1, p0, LI/x;->j:Li/av;

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->b()Lv/m;

    move-result-object v0

    invoke-interface {v0, p0}, Lv/m;->a(Lv/z;)V

    return-void
.end method

.method static synthetic a(LI/x;)Lcom/google/googlenav/ui/android/LoadingFooterView;
    .locals 1

    iget-object v0, p0, LI/x;->l:Lcom/google/googlenav/ui/android/LoadingFooterView;

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V
    .locals 4

    const/4 v3, -0x1

    const v0, 0x7f03007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v0, p0, LI/x;->l:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v0, p0, LI/x;->l:Lcom/google/googlenav/ui/android/LoadingFooterView;

    new-instance v1, LI/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LI/s;-><init>(LI/x;LI/L;)V

    new-instance v2, Lx/q;

    invoke-direct {v2, v3, v3}, Lx/q;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->a(Lx/x;Lx/q;)V

    iget-object v0, p0, LI/x;->l:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method private c(I)Ljava/util/List;
    .locals 7

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, LI/x;->j:Li/av;

    invoke-virtual {v0}, Li/av;->V()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget v0, p0, LI/x;->m:I

    add-int/2addr v0, p1

    iget-object v4, p0, LI/x;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    :cond_0
    :goto_0
    iget v0, p0, LI/x;->m:I

    iget-object v4, p0, LI/x;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget v4, p0, LI/x;->m:I

    iget-object v0, p0, LI/x;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v5, p0, LI/x;->m:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, LI/x;->m:I

    invoke-interface {v2, v0}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lv/d;->g()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v0}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v0

    invoke-virtual {p0, v0}, LI/x;->a(Lv/v;)Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    const/16 v6, 0x57a

    invoke-virtual {p0, v0, v4, v5, v6}, LI/x;->a(Lcom/google/googlenav/c;IZI)Lcom/google/googlenav/ui/view/android/aZ;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, LI/x;->j:Li/av;

    invoke-virtual {v0, v3, p0}, Li/av;->a(Ljava/util/Vector;LaD/n;)V

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030079

    return v0
.end method

.method a(Lv/v;)Lcom/google/googlenav/c;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lv/v;->b()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv/v;->b()Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/j;)Ljava/util/List;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LI/x;->e()V

    iput v2, p0, LI/x;->m:I

    const/16 v0, 0xa

    invoke-direct {p0, v0}, LI/x;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, LI/x;->a(I)V

    return-object v0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, LI/x;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LI/x;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, LI/x;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0f003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x3ef

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LI/L;

    invoke-direct {v1, p0}, LI/L;-><init>(LI/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Law/e;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, LI/x;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LI/x;->j:Li/av;

    invoke-virtual {v0}, Li/av;->bt()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LI/x;->k:Landroid/widget/ListView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, LI/x;->g()V

    iget-object v1, p0, LI/x;->k:Landroid/widget/ListView;

    iget-object v2, p0, LI/x;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, LI/x;->k:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, LI/x;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, LI/x;->a(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v4}, LI/x;->a(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;I)V

    iget-object v0, p0, LI/x;->k:Landroid/widget/ListView;

    iget-object v1, p0, LI/x;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, LI/x;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, LI/x;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public a(Lv/e;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, LI/x;->a:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/e;->c(I)V

    return-void
.end method

.method public ar_()V
    .locals 1

    iget-object v0, p0, LI/x;->i:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/x;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->a()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0033

    :goto_0
    return v0

    :cond_0
    const v0, 0x103000c

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, LI/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, LI/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, LI/x;->a:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/e;->c(I)V

    return-void
.end method

.method c()Lcom/google/googlenav/ui/bu;
    .locals 1

    iget-object v0, p0, LI/x;->j:Li/av;

    invoke-virtual {v0}, Li/av;->bo()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, LI/x;->a:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/e;->c(I)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, LI/x;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LI/x;->i()V

    iput-boolean v1, p0, LI/x;->f:Z

    iget-object v0, p0, LI/x;->k:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/x;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    iget-object v0, p0, LI/x;->l:Lcom/google/googlenav/ui/android/LoadingFooterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, LI/x;->l:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected e()V
    .locals 3

    iget-object v0, p0, LI/x;->j:Li/av;

    invoke-virtual {v0}, Li/av;->V()Lv/t;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, LI/x;->j:Li/av;

    invoke-virtual {v1}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aR;->f()Z

    invoke-virtual {p0}, LI/x;->c()Lcom/google/googlenav/ui/bu;

    move-result-object v1

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lv/j;->a(Lf/h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LI/x;->b:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lv/j;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LI/x;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public f()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, LI/x;->i:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_3

    const/16 v0, 0x19

    invoke-direct {p0, v0}, LI/x;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/B;

    iget-object v3, p0, LI/x;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v0, p0, LI/x;->m:I

    iget-object v2, p0, LI/x;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, LI/x;->l:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    :cond_1
    iget-object v0, p0, LI/x;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method protected g()V
    .locals 3

    iget-object v0, p0, LI/x;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LI/x;->c:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LI/x;->j:Li/av;

    invoke-virtual {v0}, Li/av;->V()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3f6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-object v0, p0, LI/x;->c:Landroid/view/View;

    const v2, 0x7f0f000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LI/x;->d:Landroid/widget/TextView;

    iget-object v0, p0, LI/x;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LI/x;->c:Landroid/view/View;

    const v1, 0x7f0f0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LI/x;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f020366

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    iget-object v1, p0, LI/x;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    const/16 v0, 0x3ee

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f2

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, LI/x;->j:Li/av;

    const/16 v1, 0x579

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Li/av;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LI/x;->f:Z

    return-void
.end method
