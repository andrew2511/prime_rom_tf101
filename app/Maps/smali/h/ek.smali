.class public Lh/ek;
.super Lh/eR;


# instance fields
.field private final a:Lcom/google/googlenav/android/BaseMapsActivity;

.field private final b:LE/i;

.field private c:Li/aE;

.field private d:Lx/B;


# direct methods
.method public constructor <init>(Lh/eY;LE/i;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-object p2, p0, Lh/ek;->b:LE/i;

    iput-object p3, p0, Lh/ek;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method private a(Lcom/google/googlenav/prefetch/android/g;)Landroid/app/AlertDialog;
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lh/ek;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lh/ek;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0201e5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x29f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lh/bf;

    invoke-direct {v3, p0, v0, p1}, Lh/bf;-><init>(Lh/ek;Landroid/widget/EditText;Lcom/google/googlenav/prefetch/android/g;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x29d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/g;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private a(ILcom/google/googlenav/prefetch/android/g;Lx/U;)Lcom/google/googlenav/ui/bx;
    .locals 3

    invoke-virtual {p2}, Lcom/google/googlenav/prefetch/android/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/16 v2, 0x16

    invoke-static {v1, p1, v2, p3, p2}, Lh/ek;->a(Ljava/util/Vector;IILx/U;Lcom/google/googlenav/prefetch/android/g;)V

    const/16 v2, 0x17

    invoke-static {v1, p1, v2, p3, p2}, Lh/ek;->a(Ljava/util/Vector;IILx/U;Lcom/google/googlenav/prefetch/android/g;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/googlenav/prefetch/android/g;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lh/ek;)V
    .locals 0

    invoke-direct {p0}, Lh/ek;->j()V

    return-void
.end method

.method private static a(Ljava/util/Vector;IILx/U;Lcom/google/googlenav/prefetch/android/g;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lh/ek;)LE/i;
    .locals 1

    iget-object v0, p0, Lh/ek;->b:LE/i;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/prefetch/android/g;)Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lh/ek;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0201e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x29b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lh/be;

    invoke-direct {v2, p0, p1}, Lh/be;-><init>(Lh/ek;Lcom/google/googlenav/prefetch/android/g;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lh/ek;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ek;->d:Lx/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ek;->d:Lx/B;

    invoke-direct {p0}, Lh/ek;->m()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    iget-object v0, p0, Lh/ek;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    :cond_0
    return-void
.end method

.method private m()Ljava/util/Vector;
    .locals 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lh/ek;->b:LE/i;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, LE/i;->c(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x28f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    new-instance v4, Lcom/google/googlenav/ui/ax;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-direct {p0, v3, v0, v4}, Lh/ek;->a(ILcom/google/googlenav/prefetch/android/g;Lx/U;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/ek;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x7

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/ek;->a(Lax/c;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    nop

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
    iget-object v0, p0, Lh/ek;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    invoke-virtual {p0}, Lh/ek;->h()Lx/B;

    move-result-object v0

    iput-object v0, p0, Lh/ek;->d:Lx/B;

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/ek;->d:Lx/B;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/ek;->j:Lx/J;

    iget-object v0, p0, Lh/ek;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    const-string v0, "wo"

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Li/aE;)V
    .locals 0

    iput-object p1, p0, Lh/ek;->c:Li/aE;

    invoke-virtual {p0}, Lh/ek;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    check-cast p3, Lcom/google/googlenav/prefetch/android/g;

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p3}, Lcom/google/googlenav/prefetch/android/g;->a()LG/w;

    move-result-object v0

    invoke-virtual {v0}, LG/w;->i()LG/S;

    move-result-object v0

    invoke-virtual {v0}, LG/S;->f()LG/Q;

    move-result-object v0

    new-instance v1, Lf/h;

    invoke-virtual {v0}, LG/Q;->a()I

    move-result v2

    invoke-virtual {v0}, LG/Q;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lf/h;-><init>(II)V

    iget-object v0, p0, Lh/ek;->c:Li/aE;

    invoke-virtual {v0, v1}, Li/aE;->a(Lf/h;)Li/aF;

    invoke-virtual {p0}, Lh/ek;->v()V

    const-string v0, "wv"

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p3}, Lh/ek;->a(Lcom/google/googlenav/prefetch/android/g;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->b(Landroid/app/Dialog;)V

    const-string v0, "wr"

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p3}, Lh/ek;->b(Lcom/google/googlenav/prefetch/android/g;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->b(Landroid/app/Dialog;)V

    const-string v0, "wd"

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ek;->d:Lx/B;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lh/ek;->v()V

    iget-object v0, p0, Lh/ek;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/g;->e()V

    return-void
.end method

.method protected h()Lx/B;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/ek;->G_()I

    move-result v1

    const/16 v2, 0x28c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lh/ek;->m()Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0
.end method
