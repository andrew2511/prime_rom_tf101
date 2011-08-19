.class public Lcom/google/googlenav/ui/view/android/I;
.super Lcom/google/googlenav/ui/view/android/aO;


# instance fields
.field private h:Lcom/google/googlenav/ui/view/android/aD;

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/android/I;->i:Z

    return-void
.end method


# virtual methods
.method protected a(Lx/z;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/I;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/aD;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/I;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/android/I;->i:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v1, v2, p0, v3}, Lcom/google/googlenav/ui/view/android/aD;-><init>(Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/view/android/aO;I)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/I;->h:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/I;->h:Lcom/google/googlenav/ui/view/android/aD;

    check-cast p1, Lx/g;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/aD;->a(Lx/g;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/I;->h:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/aD;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected a(Landroid/widget/AdapterView;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/I;->h:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/aD;->a(I)V

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aO;->a(Landroid/widget/AdapterView;I)V

    return-void
.end method
