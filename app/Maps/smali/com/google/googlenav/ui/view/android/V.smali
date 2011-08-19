.class public Lcom/google/googlenav/ui/view/android/V;
.super Lcom/google/googlenav/ui/view/android/a;


# instance fields
.field private f:Lx/v;

.field private g:Lcom/google/googlenav/suggest/android/SuggestView;

.field private h:Lcom/google/googlenav/suggest/android/SuggestView;

.field private i:Landroid/widget/RadioGroup;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/googlenav/ac;

.field private o:Z

.field private final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x7f0d0031

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/aU;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aU;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->p:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/F;
    .locals 0

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/F;

    return-object p0
.end method

.method private a(Lu/h;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/googlenav/ui/av;->aA:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ui/aI;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/V;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->q()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/V;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->c(I)V

    return-void
.end method

.method private a(ZLu/h;Lcom/google/googlenav/suggest/android/SuggestView;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->o:Z

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Z)V

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/F;->a(Z)V

    const-string v0, ""

    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/V;->o:Z

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/V;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lu/h;->k()Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Z)V

    invoke-virtual {p2}, Lu/h;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/F;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/F;->a(Z)V

    invoke-direct {p0, p3, v0}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/V;->o:Z

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/F;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/F;->a(Z)V

    invoke-virtual {p3}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aA:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/text/Editable;Lcom/google/googlenav/ui/av;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/F;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/F;->a(Z)V

    sget-object v1, Lcom/google/googlenav/ui/av;->aB:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aI;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/V;)Lcom/google/googlenav/suggest/android/SuggestView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->b()Lu/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(ZLu/h;Lcom/google/googlenav/suggest/android/SuggestView;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/V;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0f0110

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f0118

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe5

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f011b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x455

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x42e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f011a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->d()Lu/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(ZLu/h;Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->d()Lu/h;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->n:Lcom/google/googlenav/ac;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->n:Lcom/google/googlenav/ac;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->l:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->k:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->n:Lcom/google/googlenav/ac;

    invoke-virtual {v1, v4, v0, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->m:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->v()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->d()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->f()Lf/h;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/V;)Lcom/google/googlenav/suggest/android/SuggestView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/V;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->t()V

    return-void
.end method

.method private p()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030047

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030046

    goto :goto_0

    :cond_1
    const v0, 0x7f030045

    goto :goto_0
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->dismissDropDown()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->dismissDropDown()V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->requestFocus()Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private s()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->t()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    const/16 v1, 0x2d8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/ae;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v0, 0x7f0f0110

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->b()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->b()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v1}, Lx/v;->b()Lu/h;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(Lu/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    const/16 v1, 0x2d7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/ae;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->d()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->b()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v1}, Lx/v;->d()Lu/h;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(Lu/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private t()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->b()Lu/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, v4, v4, v3}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget-object v1, v1, Lx/v;->a:Lu/g;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v5

    :goto_1
    invoke-virtual {v1, v0}, Lu/g;->a(Lu/h;)V

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/V;->b(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-virtual {v0}, Lx/v;->d()Lu/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v4, v4, v3}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget-object v1, v1, Lx/v;->a:Lu/g;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v5

    :goto_2
    invoke-virtual {v1, v0}, Lu/g;->b(Lu/h;)V

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/V;->c(Z)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v0

    goto :goto_2
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    const/4 v1, 0x0

    iput v1, v0, Lx/v;->b:I

    :goto_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->v()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    const/4 v1, 0x1

    iput v1, v0, Lx/v;->b:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    const/4 v1, 0x2

    iput v1, v0, Lx/v;->b:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    const/4 v1, 0x3

    iput v1, v0, Lx/v;->b:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f0119
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private v()V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f011c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget v1, v1, Lx/v;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->l:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget v1, v1, Lx/v;->b:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->m:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 8

    const v7, 0x7f0f0118

    const/4 v6, -0x1

    const v5, 0x7f0f011a

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/V;->j:Z

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/V;->k:Z

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/V;->l:Z

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/V;->m:Z

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->af()Lcom/google/googlenav/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->n:Lcom/google/googlenav/ac;

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->q()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->n:Lcom/google/googlenav/ac;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->n:Lcom/google/googlenav/ac;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->j:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->j:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/V;->l:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->n:Lcom/google/googlenav/ac;

    invoke-virtual {v1, v4, v0, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->k:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->k:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/V;->m:Z

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/v;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f0f0110

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v1, 0x3f8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/F;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/F;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aT;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aT;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v1, 0xef

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/F;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/F;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aS;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aS;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/aR;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aR;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->i:Landroid/widget/RadioGroup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/V;->c(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/google/googlenav/d;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    const v0, 0x7f0f0111

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0xae

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0xac

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->n()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->r()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0116

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x412

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0117

    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/googlenav/ui/view/android/V;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    const/16 v0, 0xe6

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/ui/view/android/V;->a(II)V

    const v0, 0x7f0f0119

    const/16 v1, 0x433

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(II)V

    const v0, 0x7f0f011b

    const/16 v1, 0x437

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(II)V

    const/16 v0, 0x208

    invoke-direct {p0, v5, v0}, Lcom/google/googlenav/ui/view/android/V;->a(II)V

    const v0, 0x7f0f0024

    const/16 v1, 0xd8

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(II)V

    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f011b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->u()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget-object v0, v0, Lx/v;->c:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget-object v0, v0, Lx/v;->d:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->o()V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget-object v0, v0, Lx/v;->e:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->d()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0xe4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0xec

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f0111
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public b(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const v0, 0x7f0f0110

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0f0085

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    goto :goto_0
.end method

.method public n()V
    .locals 3

    const v2, 0x7f0f0113

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->b(Z)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->c(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget v0, v0, Lx/v;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1a4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f011c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;->v()V

    :goto_1
    return-void

    :pswitch_0
    const v0, 0x7f0f0118

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0f011b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0f011a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->f:Lx/v;

    iget-object v0, v0, Lx/v;->e:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v2, v0, p0}, Lcom/google/googlenav/ui/view/android/V;->a(I[Lcom/google/googlenav/ui/aI;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected o()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/a;->onStop()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/V;->h:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->a()V

    return-void
.end method
