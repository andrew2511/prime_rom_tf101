.class public Lcom/google/android/maps/driveabout/vector/cd;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;)I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cd;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cd;->a:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cd;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-ltz v0, :cond_1

    const/16 v1, 0xfa

    if-le v0, v1, :cond_2

    :cond_1
    const/high16 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    shl-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
