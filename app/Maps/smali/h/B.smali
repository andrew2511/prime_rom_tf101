.class Lh/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lh/dw;


# direct methods
.method constructor <init>(Lh/dw;)V
    .locals 0

    iput-object p1, p0, Lh/B;->a:Lh/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lh/B;->a:Lh/dw;

    invoke-static {v0}, Lh/dw;->d(Lh/dw;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lh/B;->a:Lh/dw;

    invoke-static {v0}, Lh/dw;->d(Lh/dw;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/cB;

    iget-object v1, p0, Lh/B;->a:Lh/dw;

    invoke-static {v1}, Lh/dw;->a(Lh/dw;)Lh/dR;

    move-result-object v1

    invoke-virtual {v0}, Lh/cB;->b()Law/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh/dR;->a(Law/e;)V

    :cond_0
    return-void
.end method
