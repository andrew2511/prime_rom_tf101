.class public Lcom/google/googlenav/ui/view/android/y;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:LaB/f;

.field private final e:Lf/h;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaB/f;Lf/h;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/ui/av;->N:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/y;->a:Ljava/lang/CharSequence;

    sget-object v0, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/y;->b:Ljava/lang/CharSequence;

    sget-object v0, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    invoke-static {p3, v0}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/y;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/y;->d:LaB/f;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/y;->e:Lf/h;

    iput p6, p0, Lcom/google/googlenav/ui/view/android/y;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0300a0

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/l;-><init>(Lcom/google/googlenav/ui/view/android/x;)V

    const v1, 0x7f0f0024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/l;->a:Landroid/widget/TextView;

    const v1, 0x7f0f0013

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/l;->b:Landroid/widget/TextView;

    const v1, 0x7f0f022b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/l;->c:Landroid/widget/TextView;

    const v1, 0x7f0f0042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/l;->d:Landroid/widget/ImageView;

    const v1, 0x7f0f0205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/l;->e:Lcom/google/googlenav/ui/view/android/DistanceView;

    const v1, 0x7f0f020f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/l;->f:Lcom/google/googlenav/ui/view/android/HeadingView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 3

    check-cast p2, Lcom/google/googlenav/ui/view/android/l;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/l;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/y;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/l;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/y;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/l;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/y;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/l;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/y;->d:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/l;->e:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/l;->f:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/y;->e:Lf/h;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lf/h;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
