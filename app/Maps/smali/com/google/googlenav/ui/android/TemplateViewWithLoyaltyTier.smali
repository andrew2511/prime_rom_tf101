.class public Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/widget/TextView;


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
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bG:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    const v2, 0x7f020269

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bH:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    const v2, 0x7f020267

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bI:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    const v2, 0x7f020268

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bJ:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    const v2, 0x7f02026c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bK:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    const v2, 0x7f02026d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bL:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    const v2, 0x7f02026a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    iget-object v1, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/av;->bM:Lcom/google/googlenav/ui/av;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    const v2, 0x7f02026b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_7
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f034d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithLoyaltyTier;->a:Landroid/widget/TextView;

    return-void
.end method
