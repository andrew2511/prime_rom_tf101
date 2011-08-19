.class public Laa/E;
.super Landroid/location/Location;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:LG/i;

.field private e:LG/Q;

.field private f:LF/i;

.field private g:D

.field private h:I

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Laa/E;->g:D

    const/4 v0, -0x1

    iput v0, p0, Laa/E;->h:I

    const/4 v0, 0x0

    iput v0, p0, Laa/E;->i:I

    instance-of v0, p1, Laa/E;

    if-eqz v0, :cond_0

    check-cast p1, Laa/E;

    invoke-virtual {p1}, Laa/E;->a()Z

    move-result v0

    iput-boolean v0, p0, Laa/E;->a:Z

    invoke-virtual {p1}, Laa/E;->b()Z

    move-result v0

    iput-boolean v0, p0, Laa/E;->b:Z

    invoke-virtual {p1}, Laa/E;->e()Z

    move-result v0

    iput-boolean v0, p0, Laa/E;->c:Z

    invoke-virtual {p1}, Laa/E;->g()LG/i;

    move-result-object v0

    iput-object v0, p0, Laa/E;->d:LG/i;

    iget-object v0, p1, Laa/E;->e:LG/Q;

    iput-object v0, p0, Laa/E;->e:LG/Q;

    invoke-virtual {p1}, Laa/E;->i()LF/i;

    move-result-object v0

    iput-object v0, p0, Laa/E;->f:LF/i;

    invoke-virtual {p1}, Laa/E;->k()D

    move-result-wide v0

    iput-wide v0, p0, Laa/E;->g:D

    iget v0, p1, Laa/E;->h:I

    iput v0, p0, Laa/E;->h:I

    iget v0, p1, Laa/E;->i:I

    iput v0, p0, Laa/E;->i:I

    iget-wide v0, p1, Laa/E;->j:J

    iput-wide v0, p0, Laa/E;->j:J

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Laa/E;->j:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Laa/E;->g:D

    const/4 v0, -0x1

    iput v0, p0, Laa/E;->h:I

    const/4 v0, 0x0

    iput v0, p0, Laa/E;->i:I

    return-void
.end method


# virtual methods
.method public a(LG/Q;)F
    .locals 9

    const/4 v0, 0x1

    new-array v8, v0, [F

    invoke-virtual {p0}, Laa/E;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Laa/E;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, LG/Q;->b()D

    move-result-wide v4

    invoke-virtual {p1}, LG/Q;->d()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Laa/E;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public a(LG/y;)F
    .locals 11

    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    const/4 v0, 0x1

    new-array v8, v0, [F

    invoke-virtual {p0}, Laa/E;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Laa/E;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, LG/y;->a()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-virtual {p1}, LG/y;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Laa/E;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public a(D)V
    .locals 0

    iput-wide p1, p0, Laa/E;->g:D

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Laa/E;->h:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Laa/E;->j:J

    return-void
.end method

.method public a(LF/i;)V
    .locals 0

    iput-object p1, p0, Laa/E;->f:LF/i;

    return-void
.end method

.method public a(LG/i;LG/Q;)V
    .locals 1

    iput-object p1, p0, Laa/E;->d:LG/i;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Laa/E;->e:LG/Q;

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Laa/E;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Laa/E;->a:Z

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Laa/E;->i:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Laa/E;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Laa/E;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laa/E;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Laa/E;->c:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Laa/E;->h:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Laa/E;->h:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Laa/E;->c:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Laa/E;->i:I

    return v0
.end method

.method public g()LG/i;
    .locals 1

    iget-object v0, p0, Laa/E;->d:LG/i;

    return-object v0
.end method

.method public h()LG/Q;
    .locals 1

    iget-object v0, p0, Laa/E;->e:LG/Q;

    return-object v0
.end method

.method public i()LF/i;
    .locals 1

    iget-object v0, p0, Laa/E;->f:LF/i;

    return-object v0
.end method

.method public j()Z
    .locals 4

    iget-wide v0, p0, Laa/E;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()D
    .locals 2

    iget-wide v0, p0, Laa/E;->g:D

    return-wide v0
.end method

.method public l()LG/y;
    .locals 8

    const-wide v6, 0x412e848000000000L

    const-wide/high16 v4, 0x3fe0

    new-instance v0, LG/y;

    invoke-virtual {p0}, Laa/E;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Laa/E;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, LG/y;-><init>(II)V

    return-object v0
.end method

.method public m()Lf/h;
    .locals 8

    const-wide v6, 0x412e848000000000L

    const-wide/high16 v4, 0x3fe0

    new-instance v0, Lf/h;

    invoke-virtual {p0}, Laa/E;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Laa/E;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Laa/E;->j:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DriveAboutLocation[mIsGps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Laa/E;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGpsAccurate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Laa/E;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Laa/E;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRteCon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/E;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumSatInFix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laa/E;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFixTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/E;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
