.class public Lcom/google/googlenav/ui/view/android/bg;
.super Lcom/google/googlenav/ui/view/android/a;


# instance fields
.field private f:Lx/V;

.field private g:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x103000b

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bg;)Lcom/google/googlenav/suggest/android/SuggestView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/bg;)Lx/V;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/V;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    const v0, 0x7f03011a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bg;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f0f0345

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    invoke-virtual {v0}, Lx/V;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    invoke-virtual {v1}, Lx/V;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/bw;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/bw;-><init>(Lcom/google/googlenav/ui/view/android/bg;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    iget-object v1, v1, Lx/V;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0346

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    iget-object v1, v1, Lx/V;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/googlenav/ui/view/android/bg;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    iget v1, v1, Lx/V;->c:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bg;->g:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v3}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0346
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bg;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bg;->f:Lx/V;

    iget v1, v1, Lx/V;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
