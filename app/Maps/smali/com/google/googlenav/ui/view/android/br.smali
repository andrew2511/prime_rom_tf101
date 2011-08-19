.class public Lcom/google/googlenav/ui/view/android/br;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/CharSequence;

.field private final f:Ljava/lang/CharSequence;

.field private final g:LaB/f;

.field private final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaB/f;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/br;->a:Ljava/lang/CharSequence;

    if-nez p2, :cond_1

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/br;->b:Ljava/lang/CharSequence;

    if-nez p3, :cond_2

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/br;->c:Ljava/lang/CharSequence;

    if-nez p4, :cond_3

    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/br;->d:Ljava/lang/CharSequence;

    if-nez p5, :cond_4

    move-object v0, v2

    :goto_4
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/br;->e:Ljava/lang/CharSequence;

    if-nez p6, :cond_5

    move-object v0, v2

    :goto_5
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/br;->f:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/google/googlenav/ui/view/android/br;->g:LaB/f;

    iput p8, p0, Lcom/google/googlenav/ui/view/android/br;->h:I

    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/av;->ad:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/av;->B:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->bU:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {p4, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {p5, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {p6, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030116

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/D;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/D;-><init>()V

    const v1, 0x7f0f033d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/D;->a:Landroid/widget/TextView;

    const v1, 0x7f0f0024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/D;->b:Landroid/widget/TextView;

    const v1, 0x7f0f033e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/D;->c:Landroid/widget/TextView;

    const v1, 0x7f0f033f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/D;->d:Landroid/widget/TextView;

    const v1, 0x7f0f0340

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/D;->e:Landroid/widget/TextView;

    const v1, 0x7f0f0341

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/D;->f:Landroid/widget/TextView;

    const v1, 0x7f0f0033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/D;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 2

    check-cast p2, Lcom/google/googlenav/ui/view/android/D;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/D;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/br;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/D;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/br;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/D;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/br;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/D;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/br;->d:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/D;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/br;->e:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/D;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/br;->f:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/D;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/br;->g:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
