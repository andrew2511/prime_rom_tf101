.class Lcom/google/googlenav/ui/android/e;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/LasagneView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/LasagneView;Landroid/content/Context;LG/e;)V
    .locals 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/e;->a:Lcom/google/googlenav/ui/android/LasagneView;

    const v0, 0x7f030099

    const v1, 0x7f0f0215

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p3}, LG/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/B;

    new-instance v2, Lcom/google/googlenav/ui/android/T;

    invoke-direct {v2, v0}, Lcom/google/googlenav/ui/android/T;-><init>(LG/B;)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/e;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/e;->a:Lcom/google/googlenav/ui/android/LasagneView;

    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object p0, v0

    invoke-static {v2, p0, p1}, Lcom/google/googlenav/ui/android/LasagneView;->a(Lcom/google/googlenav/ui/android/LasagneView;Landroid/widget/RelativeLayout;I)V

    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
