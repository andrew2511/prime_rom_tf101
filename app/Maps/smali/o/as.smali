.class public final Lo/as;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, p0}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {v0}, LA/a;->a([B)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILo/Z;)V
    .locals 2

    new-instance v0, Lo/aD;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lo/aD;-><init>(LT/c;Ljava/lang/String;ILo/Z;)V

    invoke-virtual {v0}, Lo/aD;->b()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILo/cf;)V
    .locals 2

    new-instance v0, Lo/aB;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lo/aB;-><init>(LT/c;Ljava/lang/String;ILo/cf;)V

    invoke-virtual {v0}, Lo/aB;->b()V

    return-void
.end method

.method public static a(Ljava/lang/String;ZLo/M;)V
    .locals 2

    new-instance v0, Lo/aC;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lo/aC;-><init>(LT/c;Ljava/lang/String;ZLo/M;)V

    invoke-virtual {v0}, Lo/aC;->b()V

    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {p1}, LA/a;->a(I)[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method
