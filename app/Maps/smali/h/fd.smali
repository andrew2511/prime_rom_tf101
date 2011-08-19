.class Lh/fd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/e;

.field final synthetic b:Lh/G;


# direct methods
.method constructor <init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    iput-object p1, p0, Lh/fd;->b:Lh/G;

    iput-object p2, p0, Lh/fd;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lh/fd;->b:Lh/G;

    invoke-static {v0}, Lh/G;->a(Lh/G;)Lh/bh;

    move-result-object v0

    invoke-static {v0}, Lh/bh;->a(Lh/bh;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/dF;

    invoke-static {v0}, Lh/dF;->a(Lh/dF;)Lh/a;

    move-result-object v1

    sget-object v2, Lh/a;->a:Lh/a;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lh/fd;->a:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x70a

    invoke-static {v0}, Lh/dF;->b(Lh/dF;)I

    move-result v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {v0}, Lh/dF;->a(Lh/dF;)Lh/a;

    move-result-object v1

    sget-object v2, Lh/a;->b:Lh/a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lh/fd;->a:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x708

    invoke-static {v0}, Lh/dF;->b(Lh/dF;)I

    move-result v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method
