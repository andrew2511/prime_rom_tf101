.class Lc/h;
.super LT/d;


# instance fields
.field final synthetic a:Lo/i;

.field final synthetic b:Lc/k;


# direct methods
.method constructor <init>(Lc/k;LT/c;Lo/i;)V
    .locals 0

    iput-object p1, p0, Lc/h;->b:Lc/k;

    iput-object p3, p0, Lc/h;->a:Lo/i;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "SAVED_BGSF_"

    iget-object v2, p0, Lc/h;->a:Lo/i;

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v4, p0, Lc/h;->a:Lo/i;

    invoke-virtual {v4}, Lo/i;->c()Law/e;

    move-result-object v4

    invoke-static {v3, v4}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "-Error saving suggested friends"

    invoke-static {v0, v1, v2}, Lc/k;->a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "-OOME saving suggested friends"

    invoke-static {v0, v1, v2}, Lc/k;->a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
