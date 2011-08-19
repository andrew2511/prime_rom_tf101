.class public Lcom/google/googlenav/ui/view/android/g;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field protected final a:Ljava/lang/CharSequence;

.field protected final b:LaB/f;

.field protected final c:LaB/f;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/CharSequence;

.field private final f:Lx/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaB/f;LaB/f;Lx/q;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Ljava/lang/CharSequence;

    if-nez p2, :cond_1

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->e:Ljava/lang/CharSequence;

    if-nez p3, :cond_2

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->a:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/g;->f:Lx/q;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/g;->b:LaB/f;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/g;->c:LaB/f;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->M:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1ea

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030076

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/p;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/p;-><init>()V

    const v1, 0x7f0f0024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/p;->a:Landroid/widget/TextView;

    const v1, 0x7f0f01ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/p;->b:Landroid/widget/TextView;

    const v1, 0x7f0f000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/p;->c:Landroid/widget/TextView;

    const v1, 0x7f0f002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/p;->d:Landroid/widget/ImageView;

    const v1, 0x7f0f0033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/p;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 2

    check-cast p2, Lcom/google/googlenav/ui/view/android/p;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/p;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/p;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->e:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/p;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/p;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->b:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/p;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->c:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    return-void
.end method

.method public b()Lx/q;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->f:Lx/q;

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
