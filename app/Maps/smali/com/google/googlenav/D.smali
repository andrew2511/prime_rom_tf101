.class public Lcom/google/googlenav/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Law/e;

.field private final b:Law/e;

.field private final c:[Lcom/google/googlenav/K;

.field private final d:Z


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v5}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/D;->b:Law/e;

    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/K;

    iput-object v0, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    move v0, v2

    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    new-instance v3, Lcom/google/googlenav/K;

    invoke-virtual {p1, v6, v0}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/K;-><init>(Law/e;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/googlenav/K;->a(Lcom/google/googlenav/K;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/googlenav/D;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    new-instance v1, Lcom/google/googlenav/al;

    invoke-direct {v1, p0}, Lcom/google/googlenav/al;-><init>(Lcom/google/googlenav/D;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Law/e;Law/e;[Lcom/google/googlenav/K;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/D;->a:Law/e;

    iput-object p2, p0, Lcom/google/googlenav/D;->b:Law/e;

    iput-object p3, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    iput-boolean p4, p0, Lcom/google/googlenav/D;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/D;)Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/D;)Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/D;->b:Law/e;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/D;)[Lcom/google/googlenav/K;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/D;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/D;->d:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/D;)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/D;->b(Z)J

    move-result-wide v0

    invoke-virtual {p1, v2}, Lcom/google/googlenav/D;->b(Z)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/aB;->a(JJ)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/google/googlenav/K;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Z)Lcom/google/googlenav/aZ;
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/D;->d:Z

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz p1, :cond_2

    invoke-static {v3}, Lcom/google/googlenav/K;->a(Lcom/google/googlenav/K;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/aZ;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v5

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/D;->d:Z

    return v0
.end method

.method b(Z)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/D;->a(Z)Lcom/google/googlenav/aZ;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/D;->a(Z)Lcom/google/googlenav/aZ;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/googlenav/aZ;->b(Lcom/google/googlenav/aZ;)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/googlenav/D;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/D;->a(Lcom/google/googlenav/D;)I

    move-result v0

    return v0
.end method

.method public d(Z)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/D;->a(Z)Lcom/google/googlenav/aZ;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f()I
    .locals 3

    const/high16 v2, -0x100

    invoke-virtual {p0}, Lcom/google/googlenav/D;->g()I

    move-result v0

    if-ne v0, v2, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/D;->b:Law/e;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    or-int/2addr v0, v2

    return v0
.end method

.method public g()I
    .locals 3

    const/high16 v2, -0x100

    iget-object v0, p0, Lcom/google/googlenav/D;->b:Law/e;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    or-int/2addr v0, v2

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/D;->b:Law/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/D;->c:[Lcom/google/googlenav/K;

    array-length v0, v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/D;->a:Law/e;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
