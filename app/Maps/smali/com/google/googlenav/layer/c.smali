.class public Lcom/google/googlenav/layer/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Law/e;

.field private final g:I

.field private final h:Law/e;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->b:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->c:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->d:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/c;->e:Z

    const/4 v0, 0x6

    invoke-static {p1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->f:Law/e;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/c;->g:I

    const/16 v0, 0x9

    invoke-static {p1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->h:Law/e;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->i:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Law/b;->d(Law/e;I)[Law/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/c;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/c;->h:Law/e;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/c;->j:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snippet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
