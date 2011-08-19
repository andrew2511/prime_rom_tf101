.class Lcom/google/googlenav/bC;
.super Lo/X;


# instance fields
.field final synthetic d:Lcom/google/googlenav/az;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/az;Lh/eY;LaU/a;Lo/aN;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bC;->d:Lcom/google/googlenav/az;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/X;-><init>(Lh/eY;LaU/a;Lo/aN;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bC;)Lo/aN;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bC;->c:Lo/aN;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/bC;)Lo/aN;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bC;->c:Lo/aN;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/bC;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    const/16 v0, 0x55

    const-string v1, "os"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "s=a"

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/bC;->a:Lh/eY;

    iget-object v1, p0, Lcom/google/googlenav/bC;->d:Lcom/google/googlenav/az;

    invoke-static {v1}, Lcom/google/googlenav/az;->a(Lcom/google/googlenav/az;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/at;

    invoke-direct {v2, p0}, Lcom/google/googlenav/at;-><init>(Lcom/google/googlenav/bC;)V

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(Ljava/lang/String;Lh/de;)V

    return-void
.end method
