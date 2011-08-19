.class public Ly/e;
.super Ljava/lang/Object;

# interfaces
.implements Lp/n;


# instance fields
.field private final a:Lp/n;

.field private b:Ljava/util/Hashtable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/e;->c:Ljava/lang/String;

    iput-object p2, p0, Ly/e;->a:Lp/n;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ly/e;
    .locals 9

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ly/g;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ly/g;->a(Ljava/io/DataInputStream;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lp/j;

    invoke-direct {v6, v1, v0}, Lp/j;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Ly/m;

    const/4 v1, -0x1

    invoke-direct {v0, v5, v1, v6}, Ly/m;-><init>(Ljava/lang/String;ILp/j;)V

    invoke-virtual {v6}, Lp/j;->b()V

    new-instance v1, Ly/e;

    invoke-direct {v1, v2, v0}, Ly/e;-><init>(Ljava/lang/String;Lp/n;)V

    iput-object v4, v1, Ly/e;->b:Ljava/util/Hashtable;

    iput-object v3, v1, Ly/e;->d:Ljava/lang/String;

    return-object v1
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ly/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly/g;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/e;->g()Ljava/util/Hashtable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ly/g;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v2, p0, Ly/e;->a:Lp/n;

    invoke-interface {v2}, Lp/n;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Ly/e;->a:Lp/n;

    invoke-interface {v2}, Lp/n;->e()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ly/e;->e:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly/e;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lp/n;
    .locals 1

    iget-object v0, p0, Ly/e;->a:Lp/n;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Ly/e;->a:Lp/n;

    invoke-interface {v0}, Lp/n;->d()V

    return-void
.end method

.method public e()I
    .locals 2

    invoke-direct {p0}, Ly/e;->h()V

    iget-object v0, p0, Ly/e;->e:[B

    array-length v0, v0

    iget-object v1, p0, Ly/e;->a:Lp/n;

    invoke-interface {v1}, Lp/n;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 3

    invoke-direct {p0}, Ly/e;->h()V

    new-instance v0, Ln/e;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ly/e;->e:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Ly/e;->a:Lp/n;

    invoke-interface {v2}, Lp/n;->f()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln/e;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public declared-synchronized g()Ljava/util/Hashtable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly/e;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ly/e;->b:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Ly/e;->b:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
