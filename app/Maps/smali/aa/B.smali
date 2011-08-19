.class public Laa/B;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Laa/B;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Laa/B;->a:Ljava/lang/String;

    iput-object v0, p0, Laa/B;->a:Ljava/lang/String;

    iget-wide v0, p1, Laa/B;->b:J

    iput-wide v0, p0, Laa/B;->b:J

    iget v0, p1, Laa/B;->c:F

    iput v0, p0, Laa/B;->c:F

    iget v0, p1, Laa/B;->d:F

    iput v0, p0, Laa/B;->d:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa/B;->a:Ljava/lang/String;

    iput-wide p2, p0, Laa/B;->b:J

    iput p4, p0, Laa/B;->c:F

    iput p5, p0, Laa/B;->d:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laa/B;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Laa/B;->c:F

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Laa/B;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laa/B;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Laa/B;->b:J

    return-wide v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Laa/B;->d:F

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Laa/B;->c:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Laa/B;->d:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laa/B;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/B;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laa/B;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
