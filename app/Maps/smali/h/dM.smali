.class public Lh/dM;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private a:Lh/cN;

.field private final b:Z

.field private c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh/dM;->b:Z

    return-void
.end method

.method static synthetic a(Lh/dM;)Lh/cN;
    .locals 1

    iget-object v0, p0, Lh/dM;->a:Lh/cN;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0300b5

    return v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lh/dM;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aW;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/aW;I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh/dM;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()V

    iget-object v0, p0, Lh/dM;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dM;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dM;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lh/dM;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lh/dM;->h:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lh/dM;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean v0, p0, Lh/dM;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dM;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lh/dM;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    const v0, 0x7f0f006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lh/dM;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    const v0, 0x7f0f0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/dM;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lh/dM;->d:Landroid/widget/TextView;

    const/16 v1, 0x1ff

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0074

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/dM;->e:Landroid/widget/TextView;

    const v0, 0x7f0f0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/dM;->f:Landroid/widget/TextView;

    const v0, 0x7f0f007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lh/dM;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lh/dM;->g:Landroid/widget/CheckBox;

    const/16 v1, 0xa1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dM;->g:Landroid/widget/CheckBox;

    new-instance v1, Lh/bS;

    invoke-direct {v1, p0}, Lh/bS;-><init>(Lh/dM;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lh/dM;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lh/dM;->h:Landroid/widget/CheckBox;

    const/16 v1, 0xa2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dM;->h:Landroid/widget/CheckBox;

    new-instance v1, Lh/bR;

    invoke-direct {v1, p0}, Lh/bR;-><init>(Lh/dM;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lh/dM;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0243

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lh/dM;->i:Landroid/widget/Button;

    iget-object v0, p0, Lh/dM;->i:Landroid/widget/Button;

    const/16 v1, 0xa8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/dM;->i:Landroid/widget/Button;

    new-instance v1, Lh/bQ;

    invoke-direct {v1, p0}, Lh/bQ;-><init>(Lh/dM;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Lh/cN;)V
    .locals 0

    iput-object p1, p0, Lh/dM;->a:Lh/cN;

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

.method c()Z
    .locals 1

    iget-object v0, p0, Lh/dM;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lh/dM;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method
