.class public Lo/aI;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:[J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 6

    const/4 v5, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->e(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/aI;->a:J

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->e(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/aI;->b:J

    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->f(Law/e;I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/aI;->d:J

    const/4 v0, 0x5

    invoke-static {p1, v0}, Law/b;->f(Law/e;I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/aI;->e:J

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lo/aI;->c:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lo/aI;->c:[J

    invoke-virtual {p1, v5, v1}, Law/e;->d(II)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lo/aI;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lo/aI;->a:J

    return-void
.end method

.method public a([J)V
    .locals 0

    iput-object p1, p0, Lo/aI;->c:[J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lo/aI;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lo/aI;->b:J

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lo/aI;->d:J

    return-void
.end method

.method public c()[J
    .locals 1

    iget-object v0, p0, Lo/aI;->c:[J

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lo/aI;->d:J

    return-wide v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lo/aI;->e:J

    return-void
.end method
