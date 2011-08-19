.class public final Lcom/a/a/a/ao;
.super Lcom/a/a/a/ar;
.source "SourceFile"


# instance fields
.field a:I

.field b:J

.field c:Lcom/a/a/b/g;

.field d:Lcom/a/a/b/g;

.field private f:I

.field private g:I

.field private h:Lcom/a/a/a/ap;

.field private i:Lcom/a/a/a/ap;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 130
    invoke-direct {p0}, Lcom/a/a/a/ar;-><init>()V

    .line 112
    iput v0, p0, Lcom/a/a/a/ao;->f:I

    .line 113
    iput v0, p0, Lcom/a/a/a/ao;->g:I

    .line 114
    iput v0, p0, Lcom/a/a/a/ao;->a:I

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/a/a/a/ao;->b:J

    .line 130
    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/ao;
    .locals 3

    .prologue
    .line 172
    iget v0, p0, Lcom/a/a/a/ao;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial capacity was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/a/a/ao;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/l;->a(ZLjava/lang/Object;)V

    .line 174
    const/16 v0, 0x64

    iput v0, p0, Lcom/a/a/a/ao;->f:I

    .line 176
    return-object p0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()I
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/a/a/a/ao;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/a/a/a/ao;->f:I

    goto :goto_0
.end method

.method public final c()Lcom/a/a/a/ao;
    .locals 3

    .prologue
    .line 230
    iget v0, p0, Lcom/a/a/a/ao;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "concurrency level was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/a/a/ao;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/l;->a(ZLjava/lang/Object;)V

    .line 232
    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a/a/ao;->g:I

    .line 234
    return-object p0

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()I
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/a/a/a/ao;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/a/a/a/ao;->g:I

    goto :goto_0
.end method

.method final e()Lcom/a/a/a/ap;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/a/a/a/ao;->h:Lcom/a/a/a/ap;

    sget-object v1, Lcom/a/a/a/ap;->a:Lcom/a/a/a/ap;

    invoke-static {v0, v1}, Lcom/a/a/b/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/ap;

    return-object p0
.end method

.method public final f()Lcom/a/a/a/ao;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 342
    sget-object v1, Lcom/a/a/a/ap;->b:Lcom/a/a/a/ap;

    iget-object v0, p0, Lcom/a/a/a/ao;->i:Lcom/a/a/a/ap;

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value strength was already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/ao;->i:Lcom/a/a/a/ap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a/b/l;->a(ZLjava/lang/Object;)V

    invoke-static {v1}, Lcom/a/a/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/ap;

    iput-object v0, p0, Lcom/a/a/a/ao;->i:Lcom/a/a/a/ap;

    sget-object v0, Lcom/a/a/a/ap;->a:Lcom/a/a/a/ap;

    if-eq v1, v0, :cond_0

    iput-boolean v4, p0, Lcom/a/a/a/ao;->j:Z

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()Lcom/a/a/a/ap;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/a/a/a/ao;->i:Lcom/a/a/a/ap;

    sget-object v1, Lcom/a/a/a/ap;->a:Lcom/a/a/a/ap;

    invoke-static {v0, v1}, Lcom/a/a/b/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/ap;

    return-object p0
.end method

.method public final h()Ljava/util/concurrent/ConcurrentMap;
    .locals 4

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/a/a/a/ao;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/a/aq;

    invoke-direct {v0, p0}, Lcom/a/a/a/aq;-><init>(Lcom/a/a/a/ao;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/a/a/a/ao;->b()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, Lcom/a/a/a/ao;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    goto :goto_0
.end method
