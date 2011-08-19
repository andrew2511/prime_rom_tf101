.class public Lcom/google/android/maps/driveabout/vector/bE;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bE;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->b:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;)I
    .locals 5

    const/high16 v4, 0x1

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->a:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->b:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    move v0, v4

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->c:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->c:I

    sub-int v0, v1, v0

    shl-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method
