.class public LI/H;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# static fields
.field private static final a:Ljava/lang/Integer;


# instance fields
.field private b:Lx/E;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/google/googlenav/ui/view/android/L;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, LI/H;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LI/H;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    iput v0, p0, LI/H;->k:I

    return-void
.end method

.method private a(Lcom/google/googlenav/c;IZILi/aw;)Lcom/google/googlenav/ui/view/android/aX;
    .locals 13

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Li/bl;->l(Lcom/google/googlenav/c;)Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->be()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/google/googlenav/c;->b(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aR()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aU()Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    move-object v8, v6

    move-object v6, v12

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v10

    new-instance v11, Lcom/google/googlenav/ui/view/android/aX;

    invoke-direct {v11}, Lcom/google/googlenav/ui/view/android/aX;-><init>()V

    invoke-virtual {v11, v2}, Lcom/google/googlenav/ui/view/android/aX;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/aX;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/googlenav/ui/view/android/aX;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/view/android/aX;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/googlenav/ui/view/android/aX;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/googlenav/ui/view/android/aX;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/googlenav/ui/view/android/aX;->a(Lf/h;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/view/android/aX;->a(Z)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->b(Z)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/view/android/aX;->c(Z)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/googlenav/ui/view/android/aX;->a(I)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->b(I)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->a(Li/bl;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v2

    return-object v2

    :cond_0
    move-object v12, v8

    move-object v8, v6

    move-object v6, v12

    goto :goto_0

    :cond_1
    move-object v12, v8

    move-object v8, v6

    move-object v6, v12

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    const/4 v1, 0x0

    const/16 v2, 0x32f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LI/H;->j:Ljava/lang/String;

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LI/H;->k:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x329

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, LI/H;->g:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LI/H;->e:Landroid/widget/TextView;

    const/16 v1, 0x330

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, LI/H;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LI/H;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->clear()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/B;

    iget-object v2, p0, LI/H;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LI/H;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    return-void
.end method

.method private b(Li/aw;)Ljava/util/List;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, LI/H;->b:Lx/E;

    invoke-virtual {v0}, Lx/E;->b()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/c;

    const/16 v4, 0x6b3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LI/H;->a(Lcom/google/googlenav/c;IZILi/aw;)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aX;->a()Lcom/google/googlenav/ui/view/android/aZ;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method private b(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0f0332

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x328

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LI/H;->j:Ljava/lang/String;

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v1, Lcom/google/googlenav/ui/ax;

    invoke-direct {v1, p1}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    new-instance v2, Lx/q;

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    return-void
.end method

.method private c(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LI/H;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/E;

    iput-object v0, p0, LI/H;->b:Lx/E;

    const v0, 0x7f0f0331

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LI/H;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0f032f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LI/H;->g:Landroid/widget/TextView;

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LI/H;->h:Landroid/widget/ListView;

    iget-object v0, p0, LI/H;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0304

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LI/H;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0330

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LI/H;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f03010a

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1, p2}, LI/H;->c(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, LI/H;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;I)V

    iput-object v0, p0, LI/H;->i:Lcom/google/googlenav/ui/view/android/L;

    iget-object v0, p0, LI/H;->c:Landroid/content/Context;

    const v1, 0x7f04001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    iget-object v1, p0, LI/H;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    invoke-direct {p0, p2}, LI/H;->a(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, LI/H;->b(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V

    return-void
.end method

.method public a(Li/aw;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, LI/H;->b(Li/aw;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, LI/H;->a(Ljava/util/List;)V

    iget-object v0, p0, LI/H;->h:Landroid/widget/ListView;

    iget-object v1, p0, LI/H;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, LI/H;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, LI/H;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, LI/H;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0d002f

    return v0
.end method

.method public c()V
    .locals 3

    sget-object v0, LI/H;->a:Ljava/lang/Integer;

    iget-object v1, p0, LI/H;->b:Lx/E;

    invoke-virtual {v1}, Lx/E;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/H;->d:Landroid/widget/TextView;

    const/16 v1, 0x32d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, LI/H;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, LI/H;->d:Landroid/widget/TextView;

    const/16 v1, 0x32c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LI/H;->b:Lx/E;

    invoke-virtual {v2}, Lx/E;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
