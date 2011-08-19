.class Lcom/google/googlenav/ui/view/android/aE;
.super Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/bf;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aE;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/bf;->a(Landroid/view/View;)V

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aE;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/bf;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aE;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bf;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0
.end method
