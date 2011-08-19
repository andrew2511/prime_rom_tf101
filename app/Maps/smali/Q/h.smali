.class public LQ/h;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LH/f;Lf/h;)I
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, LQ/h;->a(LH/f;)Lf/h;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(LH/f;)Lf/h;
    .locals 1

    invoke-virtual {p0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, LH/f;->p()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/ui/aQ;Lf/h;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/aQ;->a(Lf/h;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    goto :goto_0
.end method
