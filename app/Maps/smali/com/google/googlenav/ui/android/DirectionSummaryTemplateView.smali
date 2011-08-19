.class public Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;
.super Lcom/google/googlenav/ui/android/TemplateView;


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
    .locals 3

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/googlenav/ui/bt;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bt;

    move-object v1, v0

    const v2, 0x7f0f0031

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v1, v1, Lcom/google/googlenav/ui/bt;->a:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    return-void
.end method
