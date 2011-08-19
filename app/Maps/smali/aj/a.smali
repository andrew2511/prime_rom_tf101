.class public final Laj/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Laj/a;->a:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Laj/a;->b:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Laj/a;->c:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Laj/a;->d:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Laj/a;->e:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Laj/a;->f:I

    return-void
.end method

.method public static g()Law/e;
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/q;->n:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    return-object v0
.end method

.method public static h()Laj/a;
    .locals 2

    invoke-static {}, Laj/b;->c()Laj/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Laj/a;

    invoke-static {}, Laj/a;->g()Law/e;

    move-result-object v1

    invoke-direct {v0, v1}, Laj/a;-><init>(Law/e;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Laj/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Laj/a;->b:I

    return v0
.end method

.method public c()J
    .locals 4

    iget v0, p0, Laj/a;->c:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .locals 4

    iget v0, p0, Laj/a;->d:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public e()J
    .locals 4

    iget v0, p0, Laj/a;->e:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public f()J
    .locals 4

    iget v0, p0, Laj/a;->f:I

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxTiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laj/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxServerTiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laj/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laj/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchInitiatorDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laj/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchInitiatorPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laj/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeToWipe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laj/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
