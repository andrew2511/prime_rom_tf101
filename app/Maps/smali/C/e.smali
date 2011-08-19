.class public LC/e;
.super LC/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, LC/g;-><init>(J)V

    iput-object p3, p0, LC/e;->a:Ljava/lang/String;

    iput-boolean p4, p0, LC/e;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Writer;)V
    .locals 4

    const-string v0, "<%s %s=\'%s\' %s=\'%s\' %s=\'%s\' />\n"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "provider-enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, LC/e;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, LC/e;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, LC/e;->b:Z

    if-eqz v3, :cond_0

    const-string v3, "true"

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "false"

    goto :goto_0
.end method
