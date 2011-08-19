.class public abstract LB/y;
.super LB/s;


# direct methods
.method public constructor <init>(Lu/d;Lu/e;ILjava/util/List;)V
    .locals 6

    sget-object v1, LB/h;->d:LB/h;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LB/s;-><init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/y;->a:Lu/e;

    invoke-static {v0}, LB/u;->d(Lu/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ai_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/y;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aq_()Lf/h;
    .locals 1

    iget-object v0, p0, LB/y;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->h()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/y;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
