.class public abstract Lak/m;
.super Ljava/lang/Object;

# interfaces
.implements Lak/d;


# instance fields
.field private volatile a:Z

.field private b:I

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lak/m;->a:Z

    iput v0, p0, Lak/m;->b:I

    return-void
.end method


# virtual methods
.method public H_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public I_()Z
    .locals 1

    iget-boolean v0, p0, Lak/m;->a:Z

    return v0
.end method

.method public X_()V
    .locals 3

    invoke-virtual {p0}, Lak/m;->h_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/m;->a:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lak/m;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not cancellable!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aD()V
    .locals 1

    iget v0, p0, Lak/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lak/m;->b:I

    return-void
.end method

.method protected aE()I
    .locals 1

    iget v0, p0, Lak/m;->b:I

    return v0
.end method

.method public b(J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lak/m;->c:Ljava/lang/Long;

    return-void
.end method

.method public e_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i_()V
    .locals 0

    return-void
.end method

.method public m_()Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lak/m;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lak/m;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lak/m;->d:Ljava/lang/Long;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, p0, Lak/m;->d:Ljava/lang/Long;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lak/m;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lak/m;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v4

    goto :goto_0
.end method

.method public n_()V
    .locals 0

    return-void
.end method
