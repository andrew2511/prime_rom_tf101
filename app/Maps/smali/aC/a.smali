.class public LaC/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Law/e;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;J)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;J)Law/e;
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Lbf/a;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Law/e;->b(IJ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Law/e;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Law/e;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Law/e;->e(I)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method
