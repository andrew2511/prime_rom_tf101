.class Li/al;
.super LT/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/j;

.field final synthetic c:Li/aD;

.field final synthetic d:LaU/a;

.field final synthetic h:Li/br;


# direct methods
.method constructor <init>(Li/br;LT/c;ILcom/google/googlenav/j;Li/aD;LaU/a;)V
    .locals 0

    iput-object p1, p0, Li/al;->h:Li/br;

    iput p3, p0, Li/al;->a:I

    iput-object p4, p0, Li/al;->b:Lcom/google/googlenav/j;

    iput-object p5, p0, Li/al;->c:Li/aD;

    iput-object p6, p0, Li/al;->d:LaU/a;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method

.method private a(Law/e;Ljava/lang/String;Ln/a;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {v1, p1}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "-Error saving featureSet"

    invoke-static {p3, v0, v1}, Li/br;->a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "-OOME saving featureSet"

    invoke-static {p3, v0, v1}, Li/br;->a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/z;Ljava/lang/String;Ln/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/z;->aa()Law/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/z;->b(Law/e;)Law/e;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Li/al;->a(Law/e;Ljava/lang/String;Ln/a;)V

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0xf

    invoke-virtual {p1}, Lcom/google/googlenav/z;->aq()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const-string v1, "SAVED_BGFS_EXTRA_3"

    invoke-direct {p0, v0, v1, p3}, Li/al;->a(Law/e;Ljava/lang/String;Ln/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVED_BGFS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Li/al;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Li/al;->b:Lcom/google/googlenav/j;

    if-nez v0, :cond_1

    invoke-interface {v1, v2}, Ln/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Li/al;->h:Li/br;

    invoke-static {v0}, Li/br;->a(Li/br;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Li/al;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Li/al;->c:Li/aD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/al;->d:LaU/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/al;->d:LaU/a;

    new-instance v1, Li/z;

    invoke-direct {v1, p0}, Li/z;-><init>(Li/al;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Li/al;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Li/al;->h:Li/br;

    invoke-static {v0}, Li/br;->a(Li/br;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Li/al;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Li/al;->b:Lcom/google/googlenav/j;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Li/al;->b:Lcom/google/googlenav/j;

    check-cast v0, Lcom/google/googlenav/z;

    invoke-direct {p0, v0, v2, v1}, Li/al;->a(Lcom/google/googlenav/z;Ljava/lang/String;Ln/a;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Li/al;->c:Li/aD;

    invoke-interface {v0}, Li/aD;->a()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
