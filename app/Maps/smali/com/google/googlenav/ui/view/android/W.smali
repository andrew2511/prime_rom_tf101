.class public Lcom/google/googlenav/ui/view/android/W;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/ui/view/android/n;

.field private b:[Lcom/google/googlenav/ui/view/android/bf;

.field private final c:Landroid/view/View;

.field private final d:Landroid/content/Context;

.field private e:Lx/u;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Lcom/google/googlenav/ui/view/android/e;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/W;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->d:Landroid/content/Context;

    return-void
.end method

.method private static a(II)Lcom/google/googlenav/ui/view/android/bf;
    .locals 6

    invoke-static {p0, p1}, Lu/v;->b(II)Z

    move-result v5

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/google/googlenav/ui/view/android/bf;

    if-eqz v5, :cond_3

    const v1, 0x7f020277

    :goto_0
    const/16 v2, 0xe6

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe8

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/bf;-><init>(ILjava/lang/String;IIZ)V

    :goto_1
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/googlenav/ui/view/android/bf;

    if-eqz v5, :cond_0

    const v1, 0x7f02027f

    :goto_2
    const/16 v2, 0x433

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe9

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/bf;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1

    :cond_0
    const v1, 0x7f020280

    goto :goto_2

    :pswitch_1
    new-instance v0, Lcom/google/googlenav/ui/view/android/bf;

    if-eqz v5, :cond_1

    const v1, 0x7f020287

    :goto_3
    const/16 v2, 0x437

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xea

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/bf;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1

    :cond_1
    const v1, 0x7f020288

    goto :goto_3

    :pswitch_2
    new-instance v0, Lcom/google/googlenav/ui/view/android/bf;

    if-eqz v5, :cond_2

    const v1, 0x7f020275

    :goto_4
    const/16 v2, 0x208

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xeb

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/bf;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1

    :cond_2
    const v1, 0x7f020276

    goto :goto_4

    :cond_3
    const v1, 0x7f020278

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->g:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/W;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/W;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->c:Landroid/view/View;

    const v1, 0x7f0f01fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/W;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f0f01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x3b9

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lx/u;)[Lcom/google/googlenav/ui/view/android/bf;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/bf;

    iget v1, p1, Lx/u;->b:I

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/view/android/W;->a(II)Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p1, Lx/u;->b:I

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/view/android/W;->a(II)Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p1, Lx/u;->b:I

    invoke-static {v4, v1}, Lcom/google/googlenav/ui/view/android/W;->a(II)Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v1

    aput-object v1, v0, v4

    iget v1, p1, Lx/u;->b:I

    invoke-static {v5, v1}, Lcom/google/googlenav/ui/view/android/W;->a(II)Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v1

    aput-object v1, v0, v5

    return-object v0
.end method

.method private b(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->c:Landroid/view/View;

    const v1, 0x7f0f01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/W;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x7f0f01fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x26b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->c:Landroid/view/View;

    const v1, 0x7f0f01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/W;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/W;->e:Lx/u;

    iget v1, v1, Lx/u;->d:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/W;->e:Lx/u;

    iget v2, v2, Lx/u;->b:I

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/W;->a(II)Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bf;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->e:Lx/u;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/W;->a(Lx/u;)[Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->b:[Lcom/google/googlenav/ui/view/android/bf;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    new-instance v1, Lcom/google/googlenav/ui/view/android/n;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/W;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/W;->c:Landroid/view/View;

    const v4, 0x7f0f01fe

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/view/android/aE;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/W;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/W;->b:[Lcom/google/googlenav/ui/view/android/bf;

    invoke-direct {v4, v5, v6}, Lcom/google/googlenav/ui/view/android/aE;-><init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/bf;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/n;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/n;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aq;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aq;-><init>(Lcom/google/googlenav/ui/view/android/W;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/n;->a(Lcom/google/googlenav/ui/view/android/U;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/n;->show()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/B;

    iget-object v0, v0, Lx/B;->d:Lx/G;

    check-cast v0, Lx/u;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->e:Lx/u;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/W;->g:Lcom/google/googlenav/ui/view/android/e;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/W;->f:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/W;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->e:Lx/u;

    iget-boolean v0, v0, Lx/u;->c:Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/W;->b(Z)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->e:Lx/u;

    iget-boolean v0, v0, Lx/u;->e:Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/W;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/n;->hide()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/W;->a:Lcom/google/googlenav/ui/view/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/n;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/W;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/W;->a()V

    goto :goto_0
.end method
