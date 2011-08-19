.class Lh/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lh/cL;


# direct methods
.method constructor <init>(Lh/cL;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lh/dz;->b:Lh/cL;

    iput-object p2, p0, Lh/dz;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lh/dz;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lh/dz;->b:Lh/cL;

    invoke-static {v2}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lh/dz;->b:Lh/cL;

    invoke-static {v1}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/googlenav/bu;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/dz;->b:Lh/cL;

    invoke-static {v1}, Lh/cL;->b(Lh/cL;)Lh/eY;

    move-result-object v1

    invoke-virtual {v1}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v1

    iget-object v2, p0, Lh/dz;->b:Lh/cL;

    invoke-static {v2}, Lh/cL;->a(Lh/cL;)[Lcom/google/googlenav/bu;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/google/googlenav/bu;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
