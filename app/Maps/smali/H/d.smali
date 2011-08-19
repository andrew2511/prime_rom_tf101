.class public LH/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lf/h;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:LG/Z;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LH/d;->a()V

    invoke-virtual {p0, p1}, LH/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, LH/d;->b()V

    invoke-virtual {p0}, LH/d;->e()V

    invoke-virtual {p0}, LH/d;->h()V

    invoke-virtual {p0}, LH/d;->i()V

    invoke-virtual {p0}, LH/d;->j()V

    invoke-virtual {p0}, LH/d;->l()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LH/d;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, LH/d;->f:J

    return-void
.end method

.method public a(LG/Z;)V
    .locals 0

    iput-object p1, p0, LH/d;->g:LG/Z;

    return-void
.end method

.method public a(Lf/h;)V
    .locals 0

    iput-object p1, p0, LH/d;->b:Lf/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LH/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LH/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, LH/d;->d:I

    return-void
.end method

.method public c()Lf/h;
    .locals 1

    iget-object v0, p0, LH/d;->b:Lf/h;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    invoke-static {p1}, LA/h;->a(I)I

    move-result v0

    iput v0, p0, LH/d;->e:I

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LH/d;->b:Lf/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LH/d;->b:Lf/h;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, LH/d;->c:I

    return v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, LH/d;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, LH/d;->c:I

    const v1, 0x1869f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, LH/d;->c:I

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, LH/d;->d:I

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, LH/d;->e:I

    return-void
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, LH/d;->f:J

    return-wide v0
.end method

.method public l()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LH/d;->f:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, LH/d;->g:LG/Z;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationFix[source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LH/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", point="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LH/d;->b:Lf/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LH/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LH/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", heading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LH/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, LH/d;->f:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/d;->g:LG/Z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
