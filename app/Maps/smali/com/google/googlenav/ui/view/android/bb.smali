.class public Lcom/google/googlenav/ui/view/android/bb;
.super Lcom/google/googlenav/ui/view/android/bj;

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bj;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v2, 0x7f030119

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bb;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    instance-of v0, p2, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_0

    check-cast p2, Lcom/google/googlenav/ui/android/TemplateView;

    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    return-object v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    goto :goto_0
.end method
