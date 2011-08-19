.class public LI/q;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;
.implements Lv/z;


# instance fields
.field protected a:Lcom/google/googlenav/ui/view/android/L;

.field private final b:Lv/t;

.field private final c:Lh/eY;

.field private final d:Lcom/google/googlenav/bL;

.field private final e:Lh/cD;

.field private final f:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lv/t;Lh/eY;Lcom/google/googlenav/bL;Lh/cD;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/q;->b:Lv/t;

    iput-object p2, p0, LI/q;->c:Lh/eY;

    iput-object p3, p0, LI/q;->d:Lcom/google/googlenav/bL;

    iput-object p4, p0, LI/q;->e:Lh/cD;

    iput-object p5, p0, LI/q;->f:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->b()Lv/m;

    move-result-object v0

    invoke-interface {v0, p0}, Lv/m;->a(Lv/z;)V

    return-void
.end method

.method static synthetic a(LI/q;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, LI/q;->d:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method static synthetic a(LI/q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LI/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(LI/q;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, LI/q;->f:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LI/q;->e:Lh/cD;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, LI/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, LI/q;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LI/q;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, LI/q;->e:Lh/cD;

    invoke-static {v0}, Lu/h;->c(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    invoke-interface {v3, v0, v1, v2}, Lh/cD;->a(Lu/h;Ljava/lang/Long;Law/e;)V

    :cond_0
    iget-object v0, p0, LI/q;->c:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0}, Lh/dH;->u()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030079

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, LI/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0xee

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_0
    return-object v6

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LI/B;

    invoke-virtual {v6, p0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_0
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

    new-instance v1, LI/I;

    invoke-direct {v1, p0}, LI/I;-><init>(LI/q;)V

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
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, LI/q;->a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v1

    iput-object v1, p0, LI/q;->a:Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, LI/q;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, LI/N;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LI/N;-><init>(LI/q;LI/I;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, LI/q;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x1c

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LI/q;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    iget-object v1, p0, LI/q;->d:Lcom/google/googlenav/bL;

    invoke-interface {v1, v0, v4}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/c;I)V

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a=o"

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "t=rp"

    aput-object v2, v0, v1

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "f"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v0, p0, LI/q;->d:Lcom/google/googlenav/bL;

    invoke-interface {v0, p1, v2, v4}, Lcom/google/googlenav/bL;->a(Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public a(Lv/e;)V
    .locals 0

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

.method protected c()Ljava/util/List;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x4

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, LI/q;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    move v9, v12

    :goto_1
    if-ge v9, v8, :cond_6

    iget-object v0, p0, LI/q;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lv/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LI/q;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v13}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v11}, Law/e;->i(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v11, v12}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move v1, v13

    :goto_3
    invoke-virtual {v0, v11}, Law/e;->i(I)I

    move-result v5

    if-ge v1, v5, :cond_4

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v1}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    invoke-virtual {v4}, Lv/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v5, Lx/q;

    const/16 v10, 0xaf0

    invoke-virtual {v4}, Lv/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v10, v9, v4}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_4

    :cond_6
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, LI/q;->a:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/q;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, LI/q;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LI/q;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->j()V

    return-void
.end method
