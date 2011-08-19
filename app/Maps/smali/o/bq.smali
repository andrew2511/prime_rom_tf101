.class Lo/bq;
.super LT/d;


# instance fields
.field final synthetic a:Lo/H;


# direct methods
.method constructor <init>(Lo/H;LT/c;)V
    .locals 0

    iput-object p1, p0, Lo/bq;->a:Lo/H;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const-string v0, "GAIA_ID_PREF"

    invoke-static {v0}, Lac/i;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/H;->a(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lo/bq;->a:Lo/H;

    invoke-static {v0}, Lo/H;->a(Lo/H;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/bq;->a:Lo/H;

    invoke-static {v0}, Lo/H;->a(Lo/H;)V

    goto :goto_0
.end method
