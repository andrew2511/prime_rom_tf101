.class Lo/af;
.super Ljava/lang/Object;

# interfaces
.implements Lo/w;


# instance fields
.field final synthetic a:Lo/U;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;Lo/U;JJ)V
    .locals 0

    iput-object p1, p0, Lo/af;->d:Lo/cg;

    iput-object p2, p0, Lo/af;->a:Lo/U;

    iput-wide p3, p0, Lo/af;->b:J

    iput-wide p5, p0, Lo/af;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lo/af;->d:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x3c0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 8

    iget-object v0, p0, Lo/af;->d:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x16b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lo/af;->d:Lo/cg;

    invoke-static {v0}, Lo/cg;->e(Lo/cg;)Lo/g;

    move-result-object v0

    iget-object v3, p0, Lo/af;->a:Lo/U;

    iget-wide v4, p0, Lo/af;->b:J

    iget-wide v6, p0, Lo/af;->c:J

    move-wide v1, p1

    invoke-virtual/range {v0 .. v7}, Lo/g;->a(JLo/U;JJ)V

    iget-object v0, p0, Lo/af;->d:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->M()V

    invoke-static {p1, p2}, Lo/A;->a(J)V

    return-void
.end method
