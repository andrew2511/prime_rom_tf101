.class public Lh/dw;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private a:Lh/dd;

.field private final b:Lh/dR;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/google/googlenav/ui/view/android/L;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lh/dR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/dw;->b:Lh/dR;

    return-void
.end method

.method static synthetic a(Lh/dw;)Lh/dR;
    .locals 1

    iget-object v0, p0, Lh/dw;->b:Lh/dR;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0f0036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lh/dw;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lh/dw;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lh/dw;->b:Lh/dR;

    iget-object v1, v1, Lh/dR;->a:Lh/ew;

    iget-object v1, v1, Lh/ew;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lh/dw;->b:Lh/dR;

    iget-object v1, v1, Lh/dR;->a:Lh/ew;

    iget-object v1, v1, Lh/ew;->b:Lcom/google/googlenav/ao;

    invoke-virtual {v1}, Lcom/google/googlenav/ao;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lh/dw;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lh/dw;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lh/z;

    invoke-direct {v1, p0}, Lh/z;-><init>(Lh/dw;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lh/dw;->h:Landroid/widget/Button;

    iget-object v0, p0, Lh/dw;->h:Landroid/widget/Button;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dw;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lh/dw;->h:Landroid/widget/Button;

    new-instance v1, Lh/D;

    invoke-direct {v1, p0}, Lh/D;-><init>(Lh/dw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lh/dw;->i:Landroid/widget/Button;

    iget-object v0, p0, Lh/dw;->i:Landroid/widget/Button;

    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dw;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lh/dw;->i:Landroid/widget/Button;

    new-instance v1, Lh/C;

    invoke-direct {v1, p0}, Lh/C;-><init>(Lh/dw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0f0036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {v1, p2, v2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lh/dw;->g:Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, Lh/dw;->g:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v1, Lh/B;

    invoke-direct {v1, p0}, Lh/B;-><init>(Lh/dw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0f0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lh/dw;->j:Landroid/widget/Button;

    iget-object v0, p0, Lh/dw;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lh/dw;->j:Landroid/widget/Button;

    new-instance v1, Lh/A;

    invoke-direct {v1, p0}, Lh/A;-><init>(Lh/dw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lh/dw;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lh/dw;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lh/dw;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lh/dw;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lh/dw;)Lcom/google/googlenav/ui/view/android/L;
    .locals 1

    iget-object v0, p0, Lh/dw;->g:Lcom/google/googlenav/ui/view/android/L;

    return-object v0
.end method

.method static synthetic e(Lh/dw;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lh/dw;->j:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030011

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f0f0035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/dw;->e:Landroid/view/View;

    const v0, 0x7f0f0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/dw;->f:Landroid/view/View;

    iget-object v0, p0, Lh/dw;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lh/dw;->a(Landroid/view/View;)V

    iget-object v0, p0, Lh/dw;->f:Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lh/dw;->a(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lh/dw;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/dw;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lh/dd;->c:Lh/dd;

    iput-object v0, p0, Lh/dw;->a:Lh/dd;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    new-instance v3, Lh/cB;

    invoke-direct {v3, p0, v0}, Lh/cB;-><init>(Lh/dw;Law/e;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/dw;->g:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/dw;->j:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lh/dw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

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
    const v0, 0x103000d

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lh/dw;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/dw;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lh/dd;->b:Lh/dd;

    iput-object v0, p0, Lh/dw;->a:Lh/dd;

    iget-object v0, p0, Lh/dw;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lh/dw;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/dw;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lh/dw;->b:Lh/dR;

    iget-object v0, v0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->b:Lcom/google/googlenav/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dw;->b:Lh/dR;

    iget-object v0, v0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->b:Lcom/google/googlenav/ao;

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lh/dw;->d:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f003d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lh/dd;
    .locals 1

    iget-object v0, p0, Lh/dw;->a:Lh/dd;

    return-object v0
.end method
