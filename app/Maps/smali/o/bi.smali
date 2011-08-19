.class public Lo/bi;
.super Lo/aV;


# direct methods
.method public constructor <init>(Lo/aN;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/aV;-><init>(Lo/aN;)V

    return-void
.end method


# virtual methods
.method public b(Law/e;)Z
    .locals 2

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    goto :goto_0
.end method
