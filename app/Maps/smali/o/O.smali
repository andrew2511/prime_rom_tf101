.class Lo/O;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Li/q;

.field final synthetic d:Lcom/google/googlenav/bG;

.field final synthetic e:Lo/be;


# direct methods
.method constructor <init>(Lo/be;Ljava/lang/String;Ljava/lang/String;Li/q;Lcom/google/googlenav/bG;)V
    .locals 0

    iput-object p1, p0, Lo/O;->e:Lo/be;

    iput-object p2, p0, Lo/O;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/O;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/O;->c:Li/q;

    iput-object p5, p0, Lo/O;->d:Lcom/google/googlenav/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 12

    const-wide/high16 v10, -0x8000

    const/16 v0, 0x51

    const-string v1, "a"

    const-string v2, "del"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lo/O;->e:Lo/be;

    invoke-static {v0}, Lo/be;->a(Lo/be;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x453

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v9

    new-instance v0, Lcom/google/googlenav/be;

    iget-object v1, p0, Lo/O;->a:Ljava/lang/String;

    iget-object v2, p0, Lo/O;->b:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v8, Lo/ac;

    invoke-direct {v8, p0}, Lo/ac;-><init>(Lo/O;)V

    move-wide v4, v10

    move-wide v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/be;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/google/googlenav/aj;)V

    invoke-virtual {v9, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/16 v0, 0x51

    const-string v1, "d"

    const-string v2, "del"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
