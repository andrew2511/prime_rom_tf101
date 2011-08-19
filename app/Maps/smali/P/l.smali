.class LP/l;
.super Ljava/lang/Object;

# interfaces
.implements Ln/o;


# instance fields
.field final synthetic a:LP/j;

.field private b:Ljava/io/FileOutputStream;

.field private c:Ljava/nio/channels/FileLock;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LP/j;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, LP/l;->a:LP/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LP/l;->b:Ljava/io/FileOutputStream;

    iput-object v0, p0, LP/l;->c:Ljava/nio/channels/FileLock;

    iput-object p2, p0, LP/l;->b:Ljava/io/FileOutputStream;

    iput-object p3, p0, LP/l;->c:Ljava/nio/channels/FileLock;

    iput-object p4, p0, LP/l;->d:Ljava/lang/String;

    invoke-static {p1}, LP/j;->a(LP/j;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, LP/l;->a:LP/j;

    invoke-static {v0}, LP/j;->a(LP/j;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, LP/l;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, p0, LP/l;->c:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, LP/l;->c:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    iget-object v0, p0, LP/l;->b:Ljava/io/FileOutputStream;

    invoke-static {v0}, LP/j;->a(Ljava/io/FileOutputStream;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method
