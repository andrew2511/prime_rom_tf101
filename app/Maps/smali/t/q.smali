.class public Lt/q;
.super Ljava/lang/Object;


# instance fields
.field final a:LG/w;

.field final b:Lt/A;

.field final c:Z

.field final d:Lt/X;

.field final e:Z

.field private f:Lt/q;


# direct methods
.method protected constructor <init>(LG/w;Lt/A;)V
    .locals 2

    sget-object v0, Lt/X;->b:Lt/X;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lt/q;-><init>(LG/w;Lt/A;Lt/X;Z)V

    return-void
.end method

.method protected constructor <init>(LG/w;Lt/A;Lt/X;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt/q;->f:Lt/q;

    iput-object p1, p0, Lt/q;->a:LG/w;

    iput-object p2, p0, Lt/q;->b:Lt/A;

    iput-object p3, p0, Lt/q;->d:Lt/X;

    sget-object v0, Lt/X;->e:Lt/X;

    invoke-virtual {p3, v0}, Lt/X;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lt/X;->d:Lt/X;

    invoke-virtual {p3, v0}, Lt/X;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lt/q;->c:Z

    iput-boolean p4, p0, Lt/q;->e:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ILG/u;)V
    .locals 2

    iget-object v0, p0, Lt/q;->b:Lt/A;

    iget-object v1, p0, Lt/q;->a:LG/w;

    invoke-interface {v0, v1, p1, p2}, Lt/A;->a(LG/w;ILG/u;)V

    return-void
.end method


# virtual methods
.method protected a()LG/w;
    .locals 1

    iget-object v0, p0, Lt/q;->a:LG/w;

    return-object v0
.end method

.method a(ILG/u;)V
    .locals 1

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {v0, p1, p2}, Lt/q;->b(ILG/u;)V

    iget-object v0, v0, Lt/q;->f:Lt/q;

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lt/q;)V
    .locals 1

    iget-object v0, p0, Lt/q;->f:Lt/q;

    iput-object v0, p1, Lt/q;->f:Lt/q;

    iput-object p1, p0, Lt/q;->f:Lt/q;

    return-void
.end method

.method protected b()Lt/X;
    .locals 1

    iget-object v0, p0, Lt/q;->d:Lt/X;

    return-object v0
.end method

.method protected c()Z
    .locals 1

    iget-boolean v0, p0, Lt/q;->c:Z

    return v0
.end method

.method protected d()Z
    .locals 1

    iget-boolean v0, p0, Lt/q;->e:Z

    return v0
.end method

.method protected e()Z
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lt/q;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v0, v0, Lt/q;->f:Lt/q;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
