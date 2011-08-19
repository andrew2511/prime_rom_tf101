.class public Lcom/google/googlenav/layer/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lf/h;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:[Lcom/google/googlenav/layer/c;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 6

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v2}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/n;->a:I

    invoke-virtual {p1, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {v1, v5}, Law/e;->d(I)I

    move-result v3

    invoke-virtual {v1, v4}, Law/e;->d(I)I

    move-result v1

    invoke-static {v2, v3, v1}, Lf/h;->a(III)Lf/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/layer/n;->b:Lf/h;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/n;->c:I

    const/16 v1, 0x21

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/n;->d:I

    const/16 v1, 0x22

    invoke-static {v0, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/google/googlenav/layer/n;->e:I

    const/16 v1, 0x23

    iget v2, p0, Lcom/google/googlenav/layer/n;->e:I

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/n;->f:I

    const/16 v1, 0x24

    invoke-static {v0, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/layer/n;->g:I

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/layer/c;

    iput-object v1, p0, Lcom/google/googlenav/layer/n;->h:[Lcom/google/googlenav/layer/c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/layer/n;->h:[Lcom/google/googlenav/layer/c;

    new-instance v3, Lcom/google/googlenav/layer/c;

    invoke-virtual {p1, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/c;-><init>(Law/e;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/n;->b:Lf/h;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/n;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/n;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/n;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/n;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/n;->g:I

    return v0
.end method

.method public g()[Lcom/google/googlenav/layer/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/n;->h:[Lcom/google/googlenav/layer/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CenterPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/n;->b:Lf/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/n;->h:[Lcom/google/googlenav/layer/c;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
