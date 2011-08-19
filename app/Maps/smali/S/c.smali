.class public LS/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:LS/a;

.field private static final b:[LS/f;


# instance fields
.field private c:I

.field private final d:J

.field private final e:[LS/a;

.field private final f:LG/m;

.field private final g:I

.field private h:[LS/f;

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, LS/a;

    const-string v1, "Unknown Road"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, LS/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, LS/c;->a:LS/a;

    new-array v0, v3, [LS/f;

    sput-object v0, LS/c;->b:[LS/f;

    return-void
.end method

.method public constructor <init>(J[LS/a;LG/m;IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segments must have at least one name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p5, p0, LS/c;->c:I

    iput-wide p1, p0, LS/c;->d:J

    iput-object p3, p0, LS/c;->e:[LS/a;

    iput-object p4, p0, LS/c;->f:LG/m;

    iput p6, p0, LS/c;->g:I

    sget-object v0, LS/c;->b:[LS/f;

    iput-object v0, p0, LS/c;->h:[LS/f;

    iput p7, p0, LS/c;->i:I

    iput p8, p0, LS/c;->j:I

    return-void
.end method

.method public static a(LG/w;I)J
    .locals 5

    invoke-virtual {p0}, LG/w;->c()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    invoke-virtual {p0}, LG/w;->d()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a(I)V
    .locals 1

    iget v0, p0, LS/c;->c:I

    or-int/2addr v0, p1

    iput v0, p0, LS/c;->c:I

    return-void
.end method

.method public a(ILG/Q;)V
    .locals 2

    iget v0, p0, LS/c;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, LS/c;->f:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, LS/c;->f:LG/m;

    invoke-virtual {v1, v0, p2}, LG/m;->a(ILG/Q;)V

    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public varargs a([LS/f;)V
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, LS/c;->b:[LS/f;

    iput-object v0, p0, LS/c;->h:[LS/f;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, LS/c;->h:[LS/f;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget v0, p0, LS/c;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(LS/c;)Z
    .locals 2

    iget v0, p0, LS/c;->c:I

    and-int/lit8 v0, v0, 0x4

    iget v1, p1, LS/c;->c:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LS/c;->f:LG/m;

    iget-object v1, p1, LS/c;->f:LG/m;

    invoke-virtual {v0, v1}, LG/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)LS/f;
    .locals 1

    iget-object v0, p0, LS/c;->h:[LS/f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, LS/c;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LS/c;->h:[LS/f;

    array-length v0, v0

    return v0
.end method

.method public c(I)LG/Q;
    .locals 1

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    invoke-virtual {p0, p1, v0}, LS/c;->a(ILG/Q;)V

    return-object v0
.end method

.method public d()LG/Q;
    .locals 2

    iget-object v0, p0, LS/c;->f:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, LS/c;->c(I)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public d(I)LS/a;
    .locals 1

    iget-object v0, p0, LS/c;->e:[LS/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, LS/c;->f:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, LS/c;

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, LS/c;->d:J

    check-cast p1, LS/c;

    iget-wide v2, p1, LS/c;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LS/c;->i:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LS/c;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    const-wide/16 v5, 0xff

    iget-wide v0, p0, LS/c;->d:J

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-wide v2, p0, LS/c;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, LS/c;->d:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LS/c;->e:[LS/a;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " leaves-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LS/c;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enters-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LS/c;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " num-points: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LS/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " first-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, LS/c;->c(I)LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " last-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LS/c;->d()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num-arcs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LS/c;->h:[LS/f;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
