.class public final Lcom/google/googlenav/ui/view/android/q;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lx/q;

.field private final d:LaB/f;

.field private final e:LaB/f;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/q;->a:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/av;->x:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/q;->b:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/q;->c:Lx/q;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/q;->d:LaB/f;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/q;->e:LaB/f;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030115

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/j;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/j;-><init>()V

    const v1, 0x7f0f0024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/j;->a:Landroid/widget/TextView;

    const v1, 0x7f0f000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/j;->b:Landroid/widget/TextView;

    const v1, 0x7f0f002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/j;->c:Landroid/widget/ImageView;

    const v1, 0x7f0f0033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/j;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 2

    check-cast p2, Lcom/google/googlenav/ui/view/android/j;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/j;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/q;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/j;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/q;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/j;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/q;->d:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/j;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/q;->e:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    return-void
.end method

.method public b()Lx/q;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/q;->c:Lx/q;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
