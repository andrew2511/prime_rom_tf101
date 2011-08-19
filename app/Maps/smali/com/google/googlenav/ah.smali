.class public Lcom/google/googlenav/ah;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lk/f;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/googlenav/ah;->a(ZI)Lk/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(IZI)Lk/f;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->f()Lk/q;

    move-result-object v0

    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move v4, p2

    move v6, v3

    invoke-interface/range {v0 .. v6}, Lk/q;->a(IZZIZZ)Lk/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZI)Lk/f;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/ah;->a(IZI)Lk/f;

    move-result-object v0

    return-object v0
.end method
