.class public Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;
.super Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;


# instance fields
.field private k:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->b(Lcom/google/googlenav/ui/bx;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->b:Lx/Q;

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;->k:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->onFinishInflate()V

    const v0, 0x7f0f0230

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;->k:Landroid/widget/LinearLayout;

    return-void
.end method
