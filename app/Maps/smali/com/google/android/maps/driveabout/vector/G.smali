.class public Lcom/google/android/maps/driveabout/vector/G;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/G;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/G;->b:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)Z
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/G;->b:Z

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/G;->a:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/G;->a:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:J

    :cond_1
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:J

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:Z

    :cond_2
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(J)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:Z

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1
.end method
