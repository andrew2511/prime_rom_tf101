.class public Lcom/google/googlenav/ui/view/android/aD;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final a:I

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Lx/g;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private final o:Lcom/google/googlenav/ui/view/android/e;

.field private final p:Lcom/google/googlenav/ui/view/android/aO;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/view/android/aO;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aD;->o:Lcom/google/googlenav/ui/view/android/e;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aD;->p:Lcom/google/googlenav/ui/view/android/aO;

    iput p3, p0, Lcom/google/googlenav/ui/view/android/aD;->a:I

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->m:Z

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v0, v0, Lx/g;->e:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aD;->a:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->i:Landroid/widget/Button;

    const/16 v1, 0x101

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/aD;->k:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v0, v0, Lx/g;->e:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->a:Lcom/google/googlenav/ui/bx;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->b:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aD;->c()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->f:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->j()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->g:Landroid/view/View;

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->d:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aD;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aD;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aD;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->c:Lcom/google/googlenav/ui/bx;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v0, v0, Lx/g;->c:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v0, v0, Lx/g;->e:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v0, v0, Lx/g;->e:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->d:Landroid/widget/ImageButton;

    const v1, 0x7f0202a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->d:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->d:Landroid/widget/ImageButton;

    const v1, 0x7f0202a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->o:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x197

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->b(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->o:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x198

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->b(Z)V

    goto :goto_0
.end method

.method public a(Lx/g;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->e()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->g()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->f()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->h()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aD;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aD;->b()V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aD;->l:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget v0, v0, Lx/g;->i:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->m:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-boolean v0, v0, Lx/g;->j:Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aD;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->o:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x199

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Landroid/view/View;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->g:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aD;->j()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->b(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->p:Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->f:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->p:Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->d:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->p:Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aD;->j:Lx/g;

    iget-object v1, v1, Lx/g;->e:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f000c -> :sswitch_0
        0x7f0f000e -> :sswitch_3
        0x7f0f000f -> :sswitch_1
        0x7f0f0023 -> :sswitch_2
    .end sparse-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f000c

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aD;->b(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aD;->n:Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
