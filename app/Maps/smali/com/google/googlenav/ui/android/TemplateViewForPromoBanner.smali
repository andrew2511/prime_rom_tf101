.class public Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;
.super Lcom/google/googlenav/ui/android/TemplateViewWithRightText;


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private final j:[Lcom/google/googlenav/ui/aI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->j:[Lcom/google/googlenav/ui/aI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->j:[Lcom/google/googlenav/ui/aI;

    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->j:[Lcom/google/googlenav/ui/aI;

    aput-object p2, v0, v2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->j:[Lcom/google/googlenav/ui/aI;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->j:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->x:Lcom/google/googlenav/ui/aI;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v0, v0, v4

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v1, v1

    if-le v1, v2, :cond_2

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->a:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->a(Lcom/google/googlenav/ui/bx;I)I

    move-result v0

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->e:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    goto :goto_2

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->onFinishInflate()V

    const v0, 0x7f0f0030

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForPromoBanner;->i:Landroid/widget/TextView;

    return-void
.end method
