.class public Lcom/google/googlenav/ui/view/android/bp;
.super Lcom/google/googlenav/ui/view/android/aO;


# instance fields
.field private h:Lcom/google/googlenav/ui/view/android/aD;

.field private i:Lcom/google/googlenav/ui/view/android/aD;

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;ZZ)V
    .locals 1

    const v0, 0x7f0d0032

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/android/bp;->j:Z

    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/android/bp;->k:Z

    return-void
.end method

.method private a(Lx/B;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/bp;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/d;->U()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0f0024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const/16 v3, 0x1f1

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bp;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {v2, p1, v3, v1}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;Landroid/widget/ListView;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p1}, Lx/B;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bp;->a(Landroid/widget/AbsListView;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->d(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lx/d;)Landroid/view/View;
    .locals 10

    const/16 v7, 0x8

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v2, 0x7f0f0017

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0018

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lx/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lx/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lx/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v2, 0x7f0f0019

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x105

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/ui/view/android/bp;->a(Lx/d;Landroid/view/View;)V

    const v2, 0x7f0f000a

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030003

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f0004

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iget-boolean v5, p0, Lcom/google/googlenav/ui/view/android/bp;->k:Z

    if-eqz v5, :cond_1

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/google/googlenav/ui/view/android/aD;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bp;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-boolean v7, p0, Lcom/google/googlenav/ui/view/android/bp;->j:Z

    if-eqz v7, :cond_2

    move v7, v8

    :goto_0
    invoke-direct {v5, v6, p0, v7}, Lcom/google/googlenav/ui/view/android/aD;-><init>(Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/view/android/aO;I)V

    iput-object v5, p0, Lcom/google/googlenav/ui/view/android/bp;->h:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bp;->h:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v6, p1, Lx/d;->c:Lx/g;

    invoke-virtual {v5, v6, v3}, Lcom/google/googlenav/ui/view/android/aD;->a(Lx/g;Landroid/view/View;)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/aD;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bp;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-boolean v6, p0, Lcom/google/googlenav/ui/view/android/bp;->j:Z

    if-eqz v6, :cond_3

    move v6, v8

    :goto_1
    invoke-direct {v3, v5, p0, v6}, Lcom/google/googlenav/ui/view/android/aD;-><init>(Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/view/android/aO;I)V

    iput-object v3, p0, Lcom/google/googlenav/ui/view/android/bp;->i:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bp;->i:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v5, p1, Lx/d;->c:Lx/g;

    invoke-virtual {v3, v5, v4}, Lcom/google/googlenav/ui/view/android/aD;->a(Lx/g;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/H;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/google/googlenav/ui/view/android/H;-><init>(Landroid/content/Context;Lx/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/bp;->a(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-object v0

    :cond_2
    move v7, v9

    goto :goto_0

    :cond_3
    move v6, v9

    goto :goto_1
.end method

.method private a(Landroid/view/View;ILcom/google/googlenav/ui/bx;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p3, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Lx/d;Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lx/d;->a()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lx/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0018

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lx/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bp;->k:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lx/d;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->g:Lx/z;

    check-cast v0, Lx/B;

    iget-object v1, v0, Lx/B;->s:Lx/n;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0f003f

    iget-object v2, v0, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/bp;->a(Landroid/view/View;ILcom/google/googlenav/ui/bx;)V

    const v1, 0x7f0f0040

    iget-object v2, v0, Lx/B;->s:Lx/n;

    iget-object v2, v2, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/bp;->a(Landroid/view/View;ILcom/google/googlenav/ui/bx;)V

    const v1, 0x7f0f0140

    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(Landroid/view/View;ILcom/google/googlenav/ui/bx;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lx/z;)Landroid/view/View;
    .locals 2

    iget v0, p1, Lx/z;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lx/z;->m:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    check-cast p1, Lx/d;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bp;->a(Lx/d;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    check-cast p1, Lx/B;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bp;->a(Lx/B;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->p()Lx/B;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, v0, Lx/B;->s:Lx/n;

    iget-object v0, v0, Lx/n;->b:[Lcom/google/googlenav/ui/bx;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0f003f -> :sswitch_0
        0x7f0f0040 -> :sswitch_1
        0x7f0f0140 -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/widget/AdapterView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/AdapterView;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->h:Lcom/google/googlenav/ui/view/android/aD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->h:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/aD;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->i:Lcom/google/googlenav/ui/view/android/aD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->i:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/aD;->a(I)V

    :cond_1
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->g:Lx/z;

    instance-of v0, v0, Lx/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->i:Lcom/google/googlenav/ui/view/android/aD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->i:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->i:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->h:Lcom/google/googlenav/ui/view/android/aD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->h:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->h:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->g:Lx/z;

    check-cast v0, Lx/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bp;->f:Landroid/view/View;

    const v2, 0x7f0f0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bp;->a(Lx/d;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->o()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->o()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/android/H;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/google/googlenav/ui/view/android/H;-><init>(Landroid/content/Context;Lx/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->o()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bp;->c:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bp;->c:I

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bp;->a(I)V

    :cond_2
    invoke-virtual {v0}, Lx/d;->j()V

    :cond_3
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/aO;->e()V

    return-void
.end method

.method public o()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->f:Landroid/view/View;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected p()Lx/B;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object p0

    check-cast p0, Lx/B;

    return-object p0
.end method
