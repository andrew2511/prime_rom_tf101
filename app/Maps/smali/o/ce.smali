.class public Lo/ce;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)V
    .locals 1

    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    invoke-static {v0, p0}, Lo/as;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lo/ce;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lo/ce;->d()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Lo/ce;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()I
    .locals 2

    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/as;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lo/ce;->a(I)V

    return-void
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lo/ce;->a(I)V

    return-void
.end method

.method public static g()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lo/ce;->a(I)V

    return-void
.end method

.method public static h()V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "LOCATION_REPORTER_PRIVACY_SETTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    new-instance v0, Lo/bX;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/bX;-><init>(LT/c;)V

    invoke-virtual {v0}, Lo/bX;->b()V

    return-void
.end method
