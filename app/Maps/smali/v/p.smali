.class final Lv/p;
.super Ljava/lang/Object;

# interfaces
.implements LA/i;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lv/d;

    invoke-virtual {p1}, Lv/d;->e()J

    move-result-wide v0

    check-cast p2, Lv/d;

    invoke-virtual {p2}, Lv/d;->e()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
