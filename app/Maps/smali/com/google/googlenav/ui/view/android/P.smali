.class public Lcom/google/googlenav/ui/view/android/P;
.super Lcom/google/googlenav/ui/view/android/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/a;)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030151

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0380

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/P;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v2

    iget-object v2, v2, Lx/z;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f00b4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/Q;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/Q;-><init>(Lcom/google/googlenav/ui/view/android/P;)V

    new-instance v3, Lx/q;

    invoke-direct {v3, v4, v4}, Lx/q;-><init>(II)V

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/view/android/R;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/R;-><init>(Lcom/google/googlenav/ui/view/android/P;)V

    new-instance v2, Lx/q;

    invoke-direct {v2, v4, v4}, Lx/q;-><init>(II)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/android/e;)V
    .locals 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/P;->b:Lcom/google/googlenav/ui/view/android/e;

    const v0, 0x7f0f0249

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/P;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f024a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/P;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/a;->h()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/P;->a(Lcom/google/googlenav/ui/view/android/a;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/P;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public n()Lcom/google/googlenav/ui/view/android/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/P;->b:Lcom/google/googlenav/ui/view/android/e;

    return-object v0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/P;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    iget v0, v0, Lx/z;->l:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/P;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    const v1, 0x7f0f0244

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/P;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/P;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
