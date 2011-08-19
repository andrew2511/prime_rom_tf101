.class public Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;
.super Lcom/google/googlenav/ui/android/TemplateView;

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f022d

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    new-instance v1, Lx/q;

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v4, v4, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lx/U;->a(Lx/Q;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f022e

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    new-instance v1, Lx/q;

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v4, v4, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lx/U;->a(Lx/Q;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f022f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    new-instance v1, Lx/q;

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->h:Lcom/google/googlenav/ui/bx;

    iget-object v4, v4, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lx/U;->a(Lx/Q;)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f022d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f022e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f022f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForOfflineMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
