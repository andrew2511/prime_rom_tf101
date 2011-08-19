.class public LF/o;
.super LF/u;


# instance fields
.field private a:Z

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(LF/u;LF/M;)V
    .locals 1

    invoke-direct {p0, p1}, LF/u;-><init>(LF/u;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LF/o;->a:Z

    invoke-direct {p0, p2}, LF/o;->a(LF/M;)V

    return-void
.end method

.method private a(LF/M;)V
    .locals 5

    const-wide/high16 v3, -0x4010

    invoke-virtual {p0}, LF/o;->e()LG/y;

    move-result-object v0

    if-nez v0, :cond_0

    iput-wide v3, p0, LF/o;->b:D

    iput-wide v3, p0, LF/o;->c:D

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, LG/y;->a()I

    move-result v1

    invoke-virtual {v0}, LG/y;->b()I

    move-result v0

    invoke-static {v1, v0}, LG/Q;->b(II)LG/Q;

    move-result-object v0

    const-wide/high16 v1, 0x4059

    invoke-virtual {p1, v0, v1, v2}, LF/M;->a(LG/Q;D)LF/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, LF/M;->a(LF/i;)D

    move-result-wide v1

    iput-wide v1, p0, LF/o;->b:D

    invoke-virtual {p1, v0}, LF/M;->b(LF/i;)D

    move-result-wide v0

    iput-wide v0, p0, LF/o;->c:D

    goto :goto_0

    :cond_1
    iput-wide v3, p0, LF/o;->b:D

    iput-wide v3, p0, LF/o;->c:D

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, LF/o;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, LF/o;->a:Z

    return v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, LF/o;->b:D

    return-wide v0
.end method
