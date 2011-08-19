.class public Lcom/google/googlenav/ui/android/GridTemplateView;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v4

    :goto_0
    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bC:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->n:Lcom/google/googlenav/ui/bi;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bi;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->h:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/GridTemplateView;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bi;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0f0192

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0136

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0f0125

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->i:Landroid/widget/TextView;

    const v0, 0x7f0f0193

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/GridTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GridTemplateView;->a:Landroid/widget/TextView;

    return-void
.end method
