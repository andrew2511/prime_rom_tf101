.class public Lcom/google/googlenav/ui/android/TemplateViewWithRightText;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


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
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->x:Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-boolean v0, p1, Lcom/google/googlenav/ui/bx;->v:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(ZLandroid/widget/TextView;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Lcom/google/googlenav/ui/bx;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0030

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->i:Landroid/widget/TextView;

    return-void
.end method
