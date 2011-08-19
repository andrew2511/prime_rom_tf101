.class public LF/B;
.super Ljava/lang/Object;


# instance fields
.field private final a:[LF/M;

.field private final b:I

.field private final c:LF/y;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:Z

.field private final k:LF/M;


# direct methods
.method constructor <init>([LF/M;ILF/y;IIIIZIZLF/M;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/B;->a:[LF/M;

    iput p2, p0, LF/B;->b:I

    iput-object p3, p0, LF/B;->c:LF/y;

    iput p4, p0, LF/B;->d:I

    iput p5, p0, LF/B;->e:I

    iput p6, p0, LF/B;->f:I

    iput p7, p0, LF/B;->g:I

    iput-boolean p8, p0, LF/B;->h:Z

    iput p9, p0, LF/B;->i:I

    iput-boolean p10, p0, LF/B;->j:Z

    iput-object p11, p0, LF/B;->k:LF/M;

    return-void
.end method

.method public static a()LF/B;
    .locals 12

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    new-instance v0, LF/B;

    move-object v3, v1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v9, v8

    move v10, v8

    move-object v11, v1

    invoke-direct/range {v0 .. v11}, LF/B;-><init>([LF/M;ILF/y;IIIIZIZLF/M;)V

    return-object v0
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, LF/B;->a:[LF/M;

    if-eqz v0, :cond_0

    iget v0, p0, LF/B;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(F)LG/o;
    .locals 9

    iget v0, p0, LF/B;->d:I

    if-ltz v0, :cond_0

    iget-object v0, p0, LF/B;->a:[LF/M;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->m()LG/m;

    move-result-object v1

    iget v2, p0, LF/B;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, LF/M;->b(I)D

    move-result-wide v3

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    invoke-virtual {v1, v2}, LG/m;->a(I)LG/Q;

    move-result-object v5

    invoke-virtual {v5}, LG/Q;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, LG/Q;->a(D)D

    move-result-wide v5

    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, LF/M;->a(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v3, LG/o;

    invoke-direct {v3, v1, v2, v0}, LG/o;-><init>(LG/m;II)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    new-instance v0, LG/o;

    invoke-direct {v0, v1, v2}, LG/o;-><init>(LG/m;I)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LF/B;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LF/B;->g:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LF/B;->f:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e()I
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LF/B;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f()[LF/M;
    .locals 1

    iget-object v0, p0, LF/B;->a:[LF/M;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/B;->a:[LF/M;

    invoke-virtual {v0}, [LF/M;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LF/M;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()LF/M;
    .locals 2

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/B;->a:[LF/M;

    iget v1, p0, LF/B;->b:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()LF/y;
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/B;->c:LF/y;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()LF/M;
    .locals 1

    iget-object v0, p0, LF/B;->k:LF/M;

    return-object v0
.end method

.method public j()Z
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LF/B;->h:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LF/B;->i:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    invoke-direct {p0}, LF/B;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LF/B;->j:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()I
    .locals 1

    iget v0, p0, LF/B;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[numRoutes:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LF/B;->a:[LF/M;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curRoute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/B;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curStep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LF/B;->c:LF/y;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curSegment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/B;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " metersToNextStep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/B;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " metersRemaining:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/B;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " secondsRemaining:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/B;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " areAlternatesStale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LF/B;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " trafficStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/B;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onRoute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LF/B;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasPathfinderRoute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LF/B;->k:LF/M;

    if-nez v2, :cond_2

    const-string v2, "false"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, LF/B;->a:[LF/M;

    array-length v1, v1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, LF/B;->c:LF/y;

    invoke-virtual {v2}, LF/y;->i()I

    move-result v2

    goto :goto_1

    :cond_2
    const-string v2, "true"

    goto :goto_2
.end method
