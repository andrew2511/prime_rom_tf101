.class final LL/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lw/A;

.field private b:J

.field private c:J

.field private d:LL/f;


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LL/c;->a:Lw/A;

    iput-wide v2, p0, LL/c;->b:J

    iput-wide v2, p0, LL/c;->c:J

    new-instance v0, LL/f;

    invoke-direct {v0, v1}, LL/f;-><init>(LL/k;)V

    iput-object v0, p0, LL/c;->d:LL/f;

    return-void
.end method


# virtual methods
.method a()Lw/A;
    .locals 1

    iget-object v0, p0, LL/c;->a:Lw/A;

    return-object v0
.end method

.method a(Lw/A;LW/m;LW/k;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, LL/c;->a:Lw/A;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, LW/m;->f()J

    move-result-wide v0

    iput-wide v0, p0, LL/c;->c:J

    if-eqz p1, :cond_1

    iget-object v0, p0, LL/c;->d:LL/f;

    invoke-static {v0, p2, p1}, LL/f;->a(LL/f;LW/m;Lw/A;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-wide v0, p3, LW/k;->a:J

    iput-wide v0, p0, LL/c;->b:J

    :cond_2
    return-void
.end method

.method a(LW/m;Lw/A;)Z
    .locals 1

    iget-object v0, p0, LL/c;->d:LL/f;

    invoke-static {v0, p1, p2}, LL/f;->b(LL/f;LW/m;Lw/A;)Z

    move-result v0

    return v0
.end method

.method b()J
    .locals 2

    iget-object v0, p0, LL/c;->a:Lw/A;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, LL/c;->a:Lw/A;

    invoke-interface {v0}, Lw/A;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method c()J
    .locals 2

    iget-wide v0, p0, LL/c;->c:J

    return-wide v0
.end method

.method d()J
    .locals 2

    iget-wide v0, p0, LL/c;->b:J

    return-wide v0
.end method
