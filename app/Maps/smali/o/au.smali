.class public Lo/au;
.super Lo/aV;


# direct methods
.method public constructor <init>(Lo/aN;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/aV;-><init>(Lo/aN;)V

    return-void
.end method


# virtual methods
.method public a(Law/e;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lo/aV;->a(Law/e;)V

    new-instance v0, Lo/R;

    new-instance v1, Lo/az;

    invoke-direct {v1, v2}, Lo/az;-><init>(Lo/ar;)V

    invoke-direct {v0, v2, v1}, Lo/R;-><init>(LaU/a;Lo/r;)V

    invoke-virtual {v0, p1}, Lo/R;->a(Law/e;)V

    return-void
.end method

.method public b(Law/e;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Law/e;->b(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0
.end method
