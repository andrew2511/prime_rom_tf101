.class public final Lxdict/g;
.super Ljava/lang/Object;


# instance fields
.field public v:Lxdict/d;

.field public y:Lxdict/f;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxdict/g;->z:Ljava/lang/String;

    new-instance v0, Lxdict/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lxdict/g;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ifo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lxdict/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lxdict/g;->v:Lxdict/d;

    new-instance v0, Lxdict/f;

    iget-object v1, p0, Lxdict/g;->z:Ljava/lang/String;

    iget-object v2, p0, Lxdict/g;->v:Lxdict/d;

    invoke-direct {v0, v1, v2}, Lxdict/f;-><init>(Ljava/lang/String;Lxdict/d;)V

    iput-object v0, p0, Lxdict/g;->y:Lxdict/f;

    iget-object v0, p0, Lxdict/g;->y:Lxdict/f;

    iget-object v1, v0, Lxdict/f;->u:Lxdict/i;

    invoke-virtual {v0}, Lxdict/f;->c()[B

    move-result-object v2

    iput-object v2, v1, Lxdict/i;->K:[B

    iget-object v1, v0, Lxdict/f;->u:Lxdict/i;

    invoke-virtual {v0}, Lxdict/f;->b()[Lxdict/c;

    move-result-object v0

    iput-object v0, v1, Lxdict/i;->J:[Lxdict/c;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/xcome/dictionary/data/XDictWord;
    .locals 7

    if-gez p1, :cond_0

    new-instance v0, Lcom/xcome/dictionary/data/XDictWord;

    invoke-direct {v0}, Lcom/xcome/dictionary/data/XDictWord;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xcome/dictionary/data/XDictWord;->setIndex(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxdict/g;->y:Lxdict/f;

    iget-object v0, v0, Lxdict/f;->u:Lxdict/i;

    invoke-virtual {v0, p1}, Lxdict/i;->b(I)Lxdict/b;

    move-result-object v0

    new-instance v1, Lcom/xcome/dictionary/data/XDictWord;

    invoke-direct {v1}, Lcom/xcome/dictionary/data/XDictWord;-><init>()V

    :try_start_0
    new-instance v2, Lxdict/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lxdict/g;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dict.dz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lxdict/a;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lxdict/b;->c:J

    iget-wide v5, v0, Lxdict/b;->d:J

    iget-object v2, v2, Lxdict/a;->a:Lxdict/k;

    invoke-virtual {v2, v3, v4, v5, v6}, Lxdict/k;->a(JJ)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Lxdict/b;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xcome/dictionary/data/XDictWord;->setWord(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xcome/dictionary/data/XDictWord;->setIndex(I)V

    invoke-virtual {v1, v3}, Lcom/xcome/dictionary/data/XDictWord;->setExplanation(Ljava/lang/String;)V

    iget-object v0, p0, Lxdict/g;->v:Lxdict/d;

    invoke-virtual {v0}, Lxdict/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xcome/dictionary/data/XDictWord;->setFromBookName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
