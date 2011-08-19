.class Lh/bH;
.super Ljava/lang/Object;

# interfaces
.implements Li/o;


# instance fields
.field final synthetic a:Lh/H;

.field final synthetic b:Lh/dh;


# direct methods
.method constructor <init>(Lh/dh;Lh/H;)V
    .locals 0

    iput-object p1, p0, Lh/bH;->b:Lh/dh;

    iput-object p2, p0, Lh/bH;->a:Lh/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 11

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh/bH;->b:Lh/dh;

    iget-object v1, p0, Lh/bH;->a:Lh/H;

    invoke-static {v0, v1}, Lh/dh;->a(Lh/dh;Lh/H;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v9

    invoke-virtual {v9}, Lo/U;->F()[Lcom/google/googlenav/bG;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lh/bH;->b:Lh/dh;

    iget-object v1, p0, Lh/bH;->a:Lh/H;

    invoke-static {v0, v1}, Lh/dh;->a(Lh/dh;Lh/H;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    aget-object v10, v0, v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v6

    new-instance v0, Lcom/google/googlenav/be;

    invoke-virtual {v10}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v10}, Lcom/google/googlenav/bG;->b()J

    move-result-wide v4

    new-instance v8, Lh/cQ;

    invoke-direct {v8, p0, v9, p1, v10}, Lh/cQ;-><init>(Lh/bH;Lo/U;Lcom/google/googlenav/j;Lcom/google/googlenav/bG;)V

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/be;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/google/googlenav/aj;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method
