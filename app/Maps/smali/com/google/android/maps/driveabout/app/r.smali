.class public Lcom/google/android/maps/driveabout/app/r;
.super Ljava/lang/Object;


# instance fields
.field private a:LF/y;

.field private b:J

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    const v0, 0x30d40

    div-int v0, p0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(LF/M;LF/y;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/r;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/r;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2}, LF/y;->a()LG/Q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LF/M;->c()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "|M="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, LF/M;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "|T="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, LF/y;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|L="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, LG/Q;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/r;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, LG/Q;->c()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/r;->a(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|m="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, LF/y;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|a="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|p="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, LF/y;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|t="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/r;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LF/M;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "|R=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x7c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "c"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(LF/y;LF/y;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LF/y;->a()LG/Q;

    move-result-object v0

    invoke-virtual {p1}, LF/y;->a()LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LF/y;->f()I

    move-result v0

    invoke-virtual {p1}, LF/y;->f()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, LF/y;->e()I

    move-result v0

    invoke-virtual {p1}, LF/y;->e()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private static b(LF/M;LF/y;)I
    .locals 4

    invoke-virtual {p1}, LF/y;->k()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->x()I

    move-result v0

    invoke-virtual {p0, v0}, LF/M;->b(I)D

    move-result-wide v0

    invoke-virtual {p1}, LF/y;->x()I

    move-result v2

    invoke-virtual {p0, v2}, LF/M;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1}, LF/M;->b(D)I

    move-result v0

    invoke-virtual {p0, v2, v3}, LF/M;->b(D)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method a()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(LF/M;LF/y;LF/y;Laa/E;)V
    .locals 9

    const/4 v8, 0x1

    const-wide v6, 0x408f400000000000L

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/r;->a:LF/y;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/r;->a(LF/y;LF/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, LF/y;->k()LF/y;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p3}, LF/y;->x()I

    move-result v0

    invoke-virtual {p1}, LF/M;->m()LG/m;

    move-result-object v1

    invoke-virtual {v1}, LG/m;->b()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/r;->d:Z

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/r;->a:LF/y;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, LF/y;->a()LG/Q;

    move-result-object v0

    invoke-virtual {p4, v0}, Laa/E;->a(LG/Q;)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    move v0, v8

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/r;->d:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/r;->a(LF/M;LF/y;)V

    :cond_3
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/r;->a:LF/y;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/r;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3}, LF/y;->e()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, LF/y;->x()I

    move-result v0

    invoke-virtual {p1, v0}, LF/M;->c(I)D

    move-result-wide v0

    invoke-virtual {p1}, LF/M;->o()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p3}, LF/y;->x()I

    move-result v4

    invoke-virtual {p1, v4}, LF/M;->c(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1

    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/app/r;->d:Z

    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/app/r;->b(LF/M;LF/y;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/r;->c:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/r;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/r;->b:J

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
