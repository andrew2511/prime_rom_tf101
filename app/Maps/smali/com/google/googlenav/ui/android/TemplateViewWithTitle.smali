.class public Lcom/google/googlenav/ui/android/TemplateViewWithTitle;
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
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithTitle;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/android/TemplateViewWithTitle;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;Lx/U;)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/bx;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithTitle;->a(Lcom/google/googlenav/ui/bx;IZ)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithTitle;->a:Landroid/widget/TextView;

    return-void
.end method
