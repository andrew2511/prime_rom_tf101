.class public Lcom/google/googlenav/ui/view/android/J;
.super Lcom/google/googlenav/ui/view/android/bj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/J;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    iget v1, v0, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bj;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300fa

    invoke-virtual {p0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, v0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v3, v3

    :goto_1
    if-ge v4, v3, :cond_1

    iget-object v5, v0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v5, v5, v4

    invoke-static {v5, v2}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_0
.end method
