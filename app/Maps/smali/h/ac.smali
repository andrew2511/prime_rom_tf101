.class public Lh/ac;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf/h;Ljava/lang/String;Lo/cd;)Lo/J;
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x66

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    new-instance v1, Lo/bV;

    invoke-direct {v1}, Lo/bV;-><init>()V

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/bV;->a(I)Lo/bV;

    move-result-object v1

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/bV;->b(I)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/bV;->a(Ljava/lang/String;)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lo/bV;->f(I)Lo/bV;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/bV;->a(Z)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/bV;->b(Z)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/bV;->d(Z)Lo/bV;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lo/bV;->g(I)Lo/bV;

    move-result-object v1

    invoke-static {v0}, LaC/a;->a(Law/e;)V

    invoke-virtual {v1}, Lo/bV;->a()Lo/J;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-object v0
.end method
