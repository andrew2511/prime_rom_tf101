.class Lcom/google/googlenav/ui/android/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/LasagneView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/LasagneView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/LasagneView;->a(Lcom/google/googlenav/ui/android/LasagneView;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/LasagneView;->a(Lcom/google/googlenav/ui/android/LasagneView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/LasagneView;->a(Lcom/google/googlenav/ui/android/LasagneView;I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v0, p3}, Lcom/google/googlenav/ui/android/LasagneView;->b(Lcom/google/googlenav/ui/android/LasagneView;I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/android/LasagneView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/T;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/T;->a()LG/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/LasagneView;->b(Lcom/google/googlenav/ui/android/LasagneView;)Lau/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/LasagneView;->b(Lcom/google/googlenav/ui/android/LasagneView;)Lau/e;

    move-result-object v1

    invoke-virtual {v0}, LG/B;->a()LG/Z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lau/e;->a(LG/Z;)V

    goto :goto_0
.end method
