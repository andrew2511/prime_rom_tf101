.class Lo/bp;
.super LT/d;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lo/H;


# direct methods
.method constructor <init>(Lo/H;LT/c;J)V
    .locals 0

    iput-object p1, p0, Lo/bp;->b:Lo/H;

    iput-wide p3, p0, Lo/bp;->a:J

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-wide v2, p0, Lo/bp;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "GAIA_ID_PREF"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v1}, Ln/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lo/bp;->h()I

    goto :goto_0
.end method
