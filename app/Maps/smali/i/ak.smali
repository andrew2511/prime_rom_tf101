.class Li/ak;
.super LT/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:Li/o;

.field final synthetic c:LaU/a;

.field final synthetic d:Li/br;


# direct methods
.method constructor <init>(Li/br;LT/c;ILi/o;LaU/a;)V
    .locals 0

    iput-object p1, p0, Li/ak;->d:Li/br;

    iput p3, p0, Li/ak;->a:I

    iput-object p4, p0, Li/ak;->b:Li/o;

    iput-object p5, p0, Li/ak;->c:LaU/a;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method

.method private a(Ln/a;Ljava/io/DataInput;)Lcom/google/googlenav/j;
    .locals 5

    new-instance v0, Lcom/google/googlenav/z;

    invoke-direct {v0}, Lcom/google/googlenav/z;-><init>()V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/googlenav/z;->a(Ljava/io/DataInput;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "SAVED_BGFS_EXTRA_3"

    invoke-static {p1, v1}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v2, Ls/T;->g:Law/f;

    invoke-static {v2, v1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v1

    const/16 v2, 0xf

    const-wide/high16 v3, -0x8000

    invoke-static {v1, v2, v3, v4}, Law/b;->a(Law/e;IJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/z;->a(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "-Error loading featureSet"

    invoke-static {p1, v1, v2}, Li/br;->a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "-Error saving featureSet"

    invoke-static {p1, v1, v2}, Li/br;->a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/z;->a(J)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVED_BGFS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Li/ak;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, p0, Li/ak;->a:I

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    :goto_0
    iget-object v1, p0, Li/ak;->d:Li/br;

    invoke-static {v1}, Li/br;->a(Li/br;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Li/ak;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Li/ak;->d:Li/br;

    iget-object v2, p0, Li/ak;->b:Li/o;

    iget-object v3, p0, Li/ak;->c:LaU/a;

    invoke-static {v1, v0, v2, v3}, Li/br;->a(Li/br;Lcom/google/googlenav/j;Li/o;LaU/a;)V

    return-void

    :pswitch_0
    invoke-direct {p0, v0, v1}, Li/ak;->a(Ln/a;Ljava/io/DataInput;)Lcom/google/googlenav/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
