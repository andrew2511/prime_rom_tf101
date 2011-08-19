.class Lh/eO;
.super Ljava/lang/Object;

# interfaces
.implements Lh/ef;


# instance fields
.field final synthetic a:Lo/o;

.field final synthetic b:Lo/i;

.field final synthetic c:Lh/df;


# direct methods
.method constructor <init>(Lh/df;Lo/o;Lo/i;)V
    .locals 0

    iput-object p1, p0, Lh/eO;->c:Lh/df;

    iput-object p2, p0, Lh/eO;->a:Lo/o;

    iput-object p3, p0, Lh/eO;->b:Lo/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lh/eO;->c:Lh/df;

    iget-object v0, v0, Lh/df;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lh/dt;

    iget-object v2, p0, Lh/eO;->a:Lo/o;

    invoke-direct {v1, p0, v2}, Lh/dt;-><init>(Lh/eO;Lo/o;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
