.class public Lcom/google/googlenav/ui/view/android/ah;
.super Lcom/google/googlenav/ui/view/android/aO;


# instance fields
.field private h:Landroid/widget/ListView;

.field private i:Lx/z;

.field private j:Lcom/google/googlenav/ui/view/android/aD;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    return-void
.end method

.method private a(Landroid/view/View;Lx/G;I)Landroid/view/View;
    .locals 2

    const v0, 0x7f0f0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p2, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p2, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ah;->b(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v1, v0

    if-lez v1, :cond_0

    const v1, 0x7f0f0009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method

.method private a(Lx/d;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->p()Lx/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    new-instance v2, Lcom/google/googlenav/ui/view/android/bi;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/googlenav/ui/view/android/bi;-><init>(Landroid/content/Context;Lx/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/widget/AbsListView;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    const v2, 0x7f0f0016

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/ah;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->j:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p1, Lx/d;->c:Lx/g;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/aD;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/ah;->b:Lcom/google/googlenav/ui/view/android/e;

    const/4 v4, 0x3

    invoke-direct {v2, v3, p0, v4}, Lcom/google/googlenav/ui/view/android/aD;-><init>(Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/view/android/aO;I)V

    iput-object v2, p0, Lcom/google/googlenav/ui/view/android/ah;->j:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ah;->j:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v3, p1, Lx/d;->c:Lx/g;

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Lx/g;Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V
    .locals 2

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/aj;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, LaB/f;

    if-eqz v1, :cond_1

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f02000c

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public static b(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V
    .locals 2

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/aj;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, LaB/f;

    if-eqz v1, :cond_1

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private t()Lx/G;
    .locals 1

    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/ah;->i:Lx/z;

    check-cast p0, Lx/B;

    iget-object v0, p0, Lx/B;->d:Lx/G;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Lx/G;I)Landroid/view/View;
    .locals 2

    const v0, 0x7f030002

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/view/View;Lx/G;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lx/z;)Landroid/view/View;
    .locals 2

    iget v0, p1, Lx/z;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lx/z;->m:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ah;->i:Lx/z;

    check-cast p1, Lx/d;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ah;->a(Lx/d;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lx/z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ah;->t()Lx/G;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ah;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->b:Lx/Q;

    check-cast v0, Lx/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lx/q;->a()I

    move-result v2

    invoke-virtual {v0}, Lx/q;->b()I

    move-result v3

    invoke-virtual {v0}, Lx/q;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0005
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->i:Lx/z;

    instance-of v0, v0, Lx/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->j:Lcom/google/googlenav/ui/view/android/aD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->j:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->o()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/bi;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->i:Lx/z;

    check-cast v0, Lx/d;

    invoke-direct {v2, v3, v0}, Lcom/google/googlenav/ui/view/android/bi;-><init>(Landroid/content/Context;Lx/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->i:Lx/z;

    invoke-virtual {v0}, Lx/z;->j()V

    :cond_1
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/aO;->e()V

    return-void
.end method

.method protected n()V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ah;->t()Lx/G;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->o()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f0f0005

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ah;->f:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ah;->i:Lx/z;

    iget v2, v2, Lx/z;->m:I

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/view/View;Lx/G;I)Landroid/view/View;

    goto :goto_0
.end method

.method protected o()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method protected p()Lx/B;
    .locals 0

    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/ah;->i:Lx/z;

    check-cast p0, Lx/B;

    return-object p0
.end method
