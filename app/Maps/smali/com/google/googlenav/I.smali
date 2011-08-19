.class final Lcom/google/googlenav/I;
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
    .locals 4

    check-cast p1, Lcom/google/googlenav/bF;

    check-cast p2, Lcom/google/googlenav/bF;

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bU()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/googlenav/bF;->bU()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
