.class public Lcom/google/googlenav/ui/android/TemplateViewForDetails;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/view/ViewGroup;


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

.method private a(Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;)Landroid/widget/TableRow;
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " "

    sget-object v4, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    invoke-virtual {p0, v1, p2}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    invoke-virtual {p0, v2, p3}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-object v3

    :cond_0
    move-object v3, p1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    move v0, v6

    :goto_0
    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    add-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;)Landroid/widget/TableRow;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method protected a(Lcom/google/googlenav/ui/bx;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a(Lcom/google/googlenav/ui/bx;IZ)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0212

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForDetails;->i:Landroid/view/ViewGroup;

    return-void
.end method
