.class LaD/s;
.super LT/d;


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:LaD/i;


# direct methods
.method public constructor <init>(LT/c;Ljava/util/Vector;LaD/i;)V
    .locals 0

    invoke-direct {p0, p1}, LT/d;-><init>(LT/c;)V

    iput-object p2, p0, LaD/s;->a:Ljava/util/Vector;

    iput-object p3, p0, LaD/s;->b:LaD/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, LaD/s;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v0, p0, LaD/s;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/q;

    invoke-virtual {v0}, LaD/q;->h()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, LaD/q;->g()Law/e;

    move-result-object v4

    invoke-virtual {v4}, Law/e;->f()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHOTO_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, LaD/q;->a()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ln/a;->b([BLjava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write failed, error Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH-PhotoSaveToDiskTask can\'t savePHOTO_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LaD/q;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, LaD/s;->b:LaD/i;

    invoke-interface {v0}, LaD/i;->b()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, LaD/s;->b:LaD/i;

    invoke-interface {v4, v0}, LaD/i;->a(LaD/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, LaD/s;->b:LaD/i;

    invoke-interface {v0}, LaD/i;->a()V

    goto :goto_2
.end method
