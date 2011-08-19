.class public Lcom/google/googlenav/ui/view/android/am;
.super Lcom/google/googlenav/ui/view/android/e;

# interfaces
.implements Lx/m;


# direct methods
.method public constructor <init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const v1, 0x7f0f0110

    const v0, 0x7f0f0085

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/am;->a:Lcom/google/googlenav/ui/view/android/a;

    check-cast p0, Lcom/google/googlenav/ui/view/android/V;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->b(I)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->b(I)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->b(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public b(I)V
    .locals 2

    const v1, 0x7f0f0110

    const v0, 0x7f0f0085

    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/am;->a:Lcom/google/googlenav/ui/view/android/a;

    check-cast p0, Lcom/google/googlenav/ui/view/android/V;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->b(I)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->b(I)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/am;->a:Lcom/google/googlenav/ui/view/android/a;

    check-cast p0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/V;->n()V

    return-void
.end method
