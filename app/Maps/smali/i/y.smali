.class public Li/y;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/c;)I
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    goto :goto_0
.end method
