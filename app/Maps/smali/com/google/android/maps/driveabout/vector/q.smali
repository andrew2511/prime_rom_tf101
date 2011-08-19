.class public Lcom/google/android/maps/driveabout/vector/q;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/q;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;)F
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/q;->a:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/q;->a:J

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/q;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/q;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/q;->b:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/q;->b:I

    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/q;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(J)V

    const/high16 v0, 0x4200

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/q;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
