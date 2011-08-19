.class public Lo/ab;
.super Lo/aV;


# direct methods
.method public constructor <init>(Lo/aN;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/aV;-><init>(Lo/aN;)V

    return-void
.end method


# virtual methods
.method public b(Law/e;)Z
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method
