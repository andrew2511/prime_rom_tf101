.class final LF/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LF/i;LF/i;)I
    .locals 4

    invoke-static {p1}, LF/i;->b(LF/i;)D

    move-result-wide v0

    invoke-static {p2}, LF/i;->b(LF/i;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, LF/i;->b(LF/i;)D

    move-result-wide v0

    invoke-static {p2}, LF/i;->b(LF/i;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LF/i;

    check-cast p2, LF/i;

    invoke-virtual {p0, p1, p2}, LF/k;->a(LF/i;LF/i;)I

    move-result v0

    return v0
.end method
