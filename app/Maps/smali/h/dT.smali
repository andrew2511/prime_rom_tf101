.class Lh/dT;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lh/ba;


# direct methods
.method constructor <init>(Lh/ba;)V
    .locals 0

    iput-object p1, p0, Lh/dT;->a:Lh/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lh/dT;->a:Lh/ba;

    iget-object v0, v0, Lh/ba;->a:Lh/dY;

    invoke-static {v0}, Lh/dY;->b(Lh/dY;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/fm;

    iget v0, v0, Lh/fm;->b:I

    iget-object v1, p0, Lh/dT;->a:Lh/ba;

    iget-object v1, v1, Lh/ba;->a:Lh/dY;

    invoke-static {v1}, Lh/dY;->c(Lh/dY;)Lcom/google/googlenav/bL;

    move-result-object v1

    iget-object v2, p0, Lh/dT;->a:Lh/ba;

    iget-object v2, v2, Lh/ba;->a:Lh/dY;

    invoke-static {v2}, Lh/dY;->d(Lh/dY;)Lcom/google/googlenav/z;

    move-result-object v2

    iget-object v3, p0, Lh/dT;->a:Lh/ba;

    iget-object v3, v3, Lh/ba;->a:Lh/dY;

    invoke-static {v3}, Lh/dY;->e(Lh/dY;)Lcom/google/googlenav/a;

    move-result-object v3

    const-string v4, "w"

    invoke-static {v1, v2, v0, v3, v4}, Lh/dY;->a(Lcom/google/googlenav/bL;Lcom/google/googlenav/z;ILcom/google/googlenav/a;Ljava/lang/String;)V

    iget-object v0, p0, Lh/dT;->a:Lh/ba;

    iget-object v0, v0, Lh/ba;->a:Lh/dY;

    invoke-virtual {v0}, Lh/dY;->v()V

    return-void
.end method
