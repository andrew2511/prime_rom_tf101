.class public Li/aR;
.super Ljava/lang/Object;


# instance fields
.field private final a:Li/x;

.field private final b:Lcom/google/googlenav/bf;

.field private final c:I

.field private final d:Z

.field private e:J

.field private f:Z


# direct methods
.method private constructor <init>(Li/x;Lcom/google/googlenav/bf;IJZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/aR;->a:Li/x;

    iput-object p2, p0, Li/aR;->b:Lcom/google/googlenav/bf;

    iput p3, p0, Li/aR;->c:I

    iput-wide p4, p0, Li/aR;->e:J

    iput-boolean p6, p0, Li/aR;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/x;->aY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Li/aR;->e:J

    sget v2, Li/aE;->l:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/aR;->e:J

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aR;->f:Z

    return-void
.end method

.method public static a(J)Li/aR;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Li/aR;

    const/4 v3, -0x1

    const/4 v6, 0x1

    move-object v2, v1

    move-wide v4, p0

    invoke-direct/range {v0 .. v6}, Li/aR;-><init>(Li/x;Lcom/google/googlenav/bf;IJZ)V

    return-object v0
.end method

.method public static a(Li/x;Lcom/google/googlenav/bf;IJ)Li/aR;
    .locals 7

    new-instance v0, Li/aR;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Li/aR;-><init>(Li/x;Lcom/google/googlenav/bf;IJZ)V

    return-object v0
.end method


# virtual methods
.method public a()Li/x;
    .locals 1

    iget-object v0, p0, Li/aR;->a:Li/x;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Li/aR;->f:Z

    return-void
.end method

.method public b()Lcom/google/googlenav/bf;
    .locals 1

    iget-object v0, p0, Li/aR;->b:Lcom/google/googlenav/bf;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Li/aR;->e:J

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Li/aR;->c:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Li/aR;->e:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Li/aR;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Li/aR;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/aR;->a:Li/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/aR;->b:Lcom/google/googlenav/bf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Li/aR;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pixelDistanceSquared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Li/aR;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
