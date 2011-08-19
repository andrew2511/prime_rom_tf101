.class public Lcom/google/googlenav/ui/android/TemplateViewForJustifications;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field protected a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 7

    const v6, 0x7f03009f

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    array-length v0, v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v5, v5, v5, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    array-length v0, v0

    sub-int v1, v0, v2

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v3, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f01e8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForJustifications;->a:Landroid/widget/LinearLayout;

    return-void
.end method
