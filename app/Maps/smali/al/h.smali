.class public final Lal/h;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:F

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lal/h;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lal/h;->c:I

    const/high16 v0, -0x4080

    iput v0, p0, Lal/h;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lal/h;->e:Ljava/lang/Object;

    iput-wide p1, p0, Lal/h;->b:J

    return-void
.end method

.method public static a(Ljava/io/DataInput;LW/f;)Lal/h;
    .locals 5

    new-instance v0, Lal/h;

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lal/h;-><init>(J)V

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lal/h;->a:J

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lal/h;->c:I

    iget-wide v1, v0, Lal/h;->a:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readFloat()F

    move-result v1

    iput v1, v0, Lal/h;->d:F

    invoke-interface {p1, p0}, LW/f;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lal/h;->e:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lal/h;->d:F

    const/4 v1, 0x0

    iput-object v1, v0, Lal/h;->e:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lal/h;Ljava/io/DataOutput;LW/f;)V
    .locals 4

    iget-wide v0, p0, Lal/h;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Lal/h;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Lal/h;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v0, p0, Lal/h;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lal/h;->d:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget-object v0, p0, Lal/h;->e:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, LW/f;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lal/h;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lal/h;->b:J

    return-void
.end method

.method a(Ljava/lang/Object;JF)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p2, p0, Lal/h;->a:J

    iput-object p1, p0, Lal/h;->e:Ljava/lang/Object;

    iput p4, p0, Lal/h;->d:F

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lal/h;->b:J

    return-wide v0
.end method

.method c()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lal/h;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lal/h;->e:Ljava/lang/Object;

    return-void
.end method

.method public d()Z
    .locals 4

    iget-wide v0, p0, Lal/h;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lal/h;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lal/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lal/h;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheResult ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lal/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastSeenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lal/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " collections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lal/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " collectionPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lal/h;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
