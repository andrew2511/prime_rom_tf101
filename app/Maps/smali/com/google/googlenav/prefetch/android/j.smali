.class public Lcom/google/googlenav/prefetch/android/j;
.super Ljava/lang/Object;

# interfaces
.implements LH/o;


# instance fields
.field private a:Lf/h;

.field private b:J

.field private c:LE/i;


# direct methods
.method public constructor <init>(LE/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/j;->c:LE/i;

    return-void
.end method


# virtual methods
.method public a(ILH/f;)V
    .locals 0

    return-void
.end method

.method public a(Lf/h;LH/f;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, LH/f;->p()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, LH/f;->h()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lf/h;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/j;->c:LE/i;

    invoke-interface {v3, v0, v8, v10}, LE/i;->a(Lf/h;ILjava/lang/String;)V

    move v3, v9

    :goto_0
    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lf/h;

    iput-wide v1, p0, Lcom/google/googlenav/prefetch/android/j;->b:J

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lf/h;

    invoke-virtual {v3, v0}, Lf/h;->b(Lf/h;)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-wide v4, p0, Lcom/google/googlenav/prefetch/android/j;->b:J

    sub-long v4, v1, v4

    const/16 v6, 0x64

    if-ge v3, v6, :cond_2

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/j;->c:LE/i;

    invoke-interface {v3, v0, v8, v10}, LE/i;->a(Lf/h;ILjava/lang/String;)V

    move v3, v9

    goto :goto_0

    :cond_3
    move v3, v8

    goto :goto_0
.end method
