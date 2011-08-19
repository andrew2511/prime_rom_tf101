.class Laa/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:D

.field e:D

.field f:Lt/ap;

.field g:Laa/i;

.field h:LF/i;

.field i:D

.field j:LG/Q;

.field k:I


# direct methods
.method constructor <init>(ILt/ap;Laa/i;Lad/t;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laa/d;->k:I

    iput-object p2, p0, Laa/d;->f:Lt/ap;

    iput-object p3, p0, Laa/d;->g:Laa/i;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Laa/d;->j:LG/Q;

    invoke-virtual {p2}, Lt/ap;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p2}, Lt/ap;->d()LG/Q;

    move-result-object v1

    iget-object v2, p3, Laa/i;->d:LG/Q;

    const/4 v3, 0x1

    iget-object v4, p0, Laa/d;->j:LG/Q;

    invoke-static {v0, v1, v2, v3, v4}, LG/Q;->a(LG/Q;LG/Q;LG/Q;ZLG/Q;)V

    invoke-virtual {p2}, Lt/ap;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p2}, Lt/ap;->d()LG/Q;

    move-result-object v1

    iget-object v2, p0, Laa/d;->j:LG/Q;

    invoke-static {v0, v1, v2}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Laa/d;->i:D

    invoke-virtual {p2}, Lt/ap;->b()LG/i;

    move-result-object v0

    iget-object v1, p0, Laa/d;->j:LG/Q;

    iget-object v2, p0, Laa/d;->f:Lt/ap;

    invoke-virtual {v2}, Lt/ap;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p3, v1, v2, v3, v0}, Laa/i;->a(LG/Q;DLG/i;)D

    move-result-wide v0

    iput-wide v0, p0, Laa/d;->c:D

    invoke-virtual {p4}, Lad/t;->a()D

    move-result-wide v0

    iput-wide v0, p0, Laa/d;->d:D

    return-void
.end method

.method private a(Ljava/text/DecimalFormat;D)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    const-string v0, "-inf"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()D
    .locals 2

    iget-wide v0, p0, Laa/d;->a:D

    return-wide v0
.end method

.method a(Z)D
    .locals 5

    iget-wide v0, p0, Laa/d;->c:D

    iget-wide v2, p0, Laa/d;->d:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Laa/d;->a:D

    if-eqz p1, :cond_0

    iget-object v0, p0, Laa/d;->g:Laa/i;

    iget-object v1, p0, Laa/d;->j:LG/Q;

    iget-object v2, p0, Laa/d;->f:Lt/ap;

    invoke-virtual {v2}, Lt/ap;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Laa/i;->a(LG/Q;D)LF/i;

    move-result-object v0

    iput-object v0, p0, Laa/d;->h:LF/i;

    iget-object v0, p0, Laa/d;->h:LF/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/d;->g:Laa/i;

    iget-object v1, p0, Laa/d;->h:LF/i;

    iget-object v2, p0, Laa/d;->j:LG/Q;

    iget-object v3, p0, Laa/d;->f:Lt/ap;

    invoke-virtual {v3}, Lt/ap;->e()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Laa/i;->a(LF/i;LG/Q;D)D

    move-result-wide v0

    iput-wide v0, p0, Laa/d;->b:D

    iget-wide v0, p0, Laa/d;->a:D

    iget-object v2, p0, Laa/d;->g:Laa/i;

    iget-wide v3, p0, Laa/d;->b:D

    invoke-virtual {v2, v3, v4}, Laa/i;->b(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Laa/d;->a:D

    :cond_0
    iget-wide v0, p0, Laa/d;->a:D

    return-wide v0
.end method

.method public a(Laa/d;)I
    .locals 4

    iget-wide v0, p0, Laa/d;->a:D

    iget-wide v2, p1, Laa/d;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Laa/d;->a:D

    iget-wide v2, p1, Laa/d;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(D)V
    .locals 2

    iget-wide v0, p0, Laa/d;->a:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Laa/d;->a:D

    return-void
.end method

.method b()V
    .locals 4

    iget-wide v0, p0, Laa/d;->d:D

    iget-wide v2, p0, Laa/d;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Laa/d;->d:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laa/d;->e:D

    return-void
.end method

.method b(D)V
    .locals 2

    iget-wide v0, p0, Laa/d;->e:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Laa/d;->e:D

    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Laa/d;->d:D

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Laa/d;

    invoke-virtual {p0, p1}, Laa/d;->a(Laa/d;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Candidate[id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laa/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",L:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Laa/d;->a:D

    invoke-direct {p0, v0, v2, v3}, Laa/d;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",OnRouteL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Laa/d;->b:D

    invoke-direct {p0, v0, v2, v3}, Laa/d;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",EmitL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Laa/d;->c:D

    invoke-direct {p0, v0, v2, v3}, Laa/d;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TransL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Laa/d;->d:D

    invoke-direct {p0, v0, v2, v3}, Laa/d;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/d;->i:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laa/d;->f:Lt/ap;

    invoke-virtual {v1}, Lt/ap;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laa/d;->j:LG/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
