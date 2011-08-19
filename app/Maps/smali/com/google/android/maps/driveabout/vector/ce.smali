.class Lcom/google/android/maps/driveabout/vector/ce;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:I

.field private final f:J

.field private final g:Lcom/google/android/maps/driveabout/vector/O;

.field private h:Lcom/google/android/maps/driveabout/vector/T;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/O;FFFI)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ce;->g:Lcom/google/android/maps/driveabout/vector/O;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ce;->b:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/ce;->c:F

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:F

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->f:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->a:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->g:Lcom/google/android/maps/driveabout/vector/O;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->b:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->c:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:F

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/O;FFF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->f:J

    sub-long/2addr v0, v3

    long-to-int v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->a:Lcom/google/android/maps/driveabout/vector/bI;

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:I

    sub-int v3, v6, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bX;-><init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/cm;IZF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->h:Lcom/google/android/maps/driveabout/vector/T;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->h:Lcom/google/android/maps/driveabout/vector/T;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/T;->a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->h:Lcom/google/android/maps/driveabout/vector/T;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->h:Lcom/google/android/maps/driveabout/vector/T;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/T;->c()I

    move-result v0

    goto :goto_0
.end method
