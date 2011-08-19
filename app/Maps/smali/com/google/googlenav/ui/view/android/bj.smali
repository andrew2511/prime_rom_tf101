.class public Lcom/google/googlenav/ui/view/android/bj;
.super Lcom/google/googlenav/ui/view/android/bc;


# instance fields
.field private volatile b:Z

.field private final c:Ljava/util/List;

.field private final d:Lx/B;

.field private e:I

.field private f:Lcom/google/googlenav/ui/view/android/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/bc;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;)V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bj;->b:Z

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bj;->d:Lx/B;

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lx/B;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p2, v0}, Lx/B;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/bx;->s:LI/B;

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0}, Lx/B;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/bx;->s:LI/B;

    invoke-interface {v2}, LI/B;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x3f

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bj;->e:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->a()V

    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/bx;)I
    .locals 2

    const v1, 0x7f03009a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030098

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/bx;->r:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f03008f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f030092

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0300c9

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0300ca

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0300d0

    goto :goto_0

    :pswitch_5
    const v0, 0x7f03000d

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0300ab

    goto :goto_0

    :pswitch_7
    const v0, 0x7f030044

    goto :goto_0

    :pswitch_8
    const v0, 0x7f030145

    goto :goto_0

    :pswitch_9
    const v0, 0x7f030090

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0300a3

    goto :goto_0

    :pswitch_b
    const v0, 0x7f030095

    goto :goto_0

    :pswitch_c
    const v0, 0x7f03009d

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0300af

    goto :goto_0

    :pswitch_e
    const v0, 0x7f030097

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0300b2

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0300ac

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0300aa

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0300a8

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0300a9

    goto :goto_0

    :pswitch_14
    const v0, 0x7f0300b0

    goto :goto_0

    :pswitch_15
    move v0, v1

    goto :goto_0

    :pswitch_16
    const v0, 0x7f030094

    goto :goto_0

    :pswitch_17
    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f03009b

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_18
    const v0, 0x7f0300ad

    goto :goto_0

    :pswitch_19
    const v0, 0x7f030096

    goto :goto_0

    :pswitch_1a
    const v0, 0x7f0300b1

    goto :goto_0

    :pswitch_1b
    const v0, 0x7f030091

    goto :goto_0

    :pswitch_1c
    const v0, 0x7f03005e

    goto :goto_0

    :pswitch_1d
    const v0, 0x7f0300a1

    goto/16 :goto_0

    :pswitch_1e
    const v0, 0x7f03010b

    goto/16 :goto_0

    :pswitch_1f
    const v0, 0x7f030075

    goto/16 :goto_0

    :pswitch_20
    const v0, 0x7f030093

    goto/16 :goto_0

    :pswitch_21
    const v0, 0x7f0300ae

    goto/16 :goto_0

    :pswitch_22
    const v0, 0x7f0300a7

    goto/16 :goto_0

    :pswitch_23
    const v0, 0x7f03010d

    goto/16 :goto_0

    :pswitch_24
    const v0, 0x7f0300a2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_9
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_17
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_18
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_1f
        :pswitch_13
        :pswitch_16
        :pswitch_21
        :pswitch_21
        :pswitch_5
        :pswitch_9
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private a(Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->f:Lcom/google/googlenav/ui/view/android/aj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/view/android/aj;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/aj;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->f:Lcom/google/googlenav/ui/view/android/aj;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->f:Lcom/google/googlenav/ui/view/android/aj;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/ui/view/android/aj;->a(Landroid/content/Context;Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/bx;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    instance-of v2, p2, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v2, :cond_3

    check-cast p2, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->f()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    iget v2, p1, Lcom/google/googlenav/ui/bx;->r:I

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/TemplateView;->f()Lcom/google/googlenav/ui/bx;

    move-result-object v3

    iget v3, v3, Lcom/google/googlenav/ui/bx;->r:I

    if-eq v2, v3, :cond_a

    invoke-static {p1, p3}, Lcom/google/googlenav/ui/view/android/bj;->c(Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v1

    move-object v2, v1

    move v1, v4

    :goto_1
    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/android/bj;->b:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/view/android/bk;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/google/googlenav/ui/view/android/bk;-><init>(Lcom/google/googlenav/ui/view/android/bj;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/view/android/M;)V

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/google/googlenav/ui/android/EditableTemplateView;

    move-object v1, v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bj;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Lcom/google/googlenav/ui/view/android/e;)V

    :cond_1
    iget v1, p1, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p1, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    check-cast p0, Lo/U;

    invoke-virtual {p0}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/googlenav/android/ab;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_2
    :goto_3
    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-static {p1, p3}, Lcom/google/googlenav/ui/view/android/bj;->c(Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v1

    move-object v2, v1

    move v1, v4

    goto :goto_1

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_3

    :cond_7
    iget v1, p1, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v3, 0x28

    if-eq v1, v3, :cond_8

    iget v1, p1, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v3, 0x21

    if-ne v1, v3, :cond_9

    :cond_8
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/googlenav/ui/bx;->r:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const v1, 0x7f080011

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_a
    move-object v2, p2

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;Landroid/widget/ListView;)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/bj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/o;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/o;-><init>(Lcom/google/googlenav/ui/view/android/bj;Lcom/google/googlenav/ui/view/android/M;)V

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/android/TemplateView;)V
    .locals 2

    const v0, 0x7f0f002f

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020258

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bj;->b:Z

    return p1
.end method

.method private b(Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->I:Lcom/google/googlenav/ui/bk;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/google/googlenav/ui/bk;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/googlenav/ui/android/OfferView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/android/OfferView;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/google/googlenav/ui/bk;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/OfferView;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/TemplateView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bj;->d:Lx/B;

    invoke-virtual {v1}, Lx/B;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bj;->d:Lx/B;

    invoke-virtual {v1, v0}, Lx/B;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bj;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bj;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->s:LI/B;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/bx;->r:I

    iget-object v1, p0, Lcom/google/googlenav/ui/bx;->s:LI/B;

    invoke-interface {v1}, LI/B;->c()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/bx;->r:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    iget v1, v0, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v1, v0, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/bj;->b(Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/googlenav/ui/bx;->s:LI/B;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->s:LI/B;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/bj;->a(LI/B;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/bx;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/TemplateView;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bj;->e:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bj;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bj;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    iget v0, p0, Lcom/google/googlenav/ui/bx;->r:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
        0x14 -> :sswitch_0
        0x38 -> :sswitch_0
    .end sparse-switch
.end method
