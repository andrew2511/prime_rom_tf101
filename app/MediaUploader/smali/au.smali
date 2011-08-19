.class public final Lau;
.super Ljava/lang/Object;

# interfaces
.implements Lak;


# instance fields
.field private final a:Lak;

.field private b:Ljava/util/Hashtable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau;->c:Ljava/lang/String;

    iput-object p2, p0, Lau;->a:Lak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iput-object p1, p0, Lau;->c:Ljava/lang/String;

    new-instance v1, Lah;

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lah;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lau;->a:Lak;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Lau;
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

    invoke-static {v0}, Laz;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Laz;->a(Ljava/io/DataInputStream;)Ljava/util/Hashtable;

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

    new-instance v6, Laj;

    invoke-direct {v6, v1, v0}, Laj;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lav;

    const/4 v1, -0x1

    invoke-direct {v0, v5, v1, v6}, Lav;-><init>(Ljava/lang/String;ILaj;)V

    invoke-virtual {v6}, Laj;->b()V

    new-instance v1, Lau;

    invoke-direct {v1, v2, v0}, Lau;-><init>(Ljava/lang/String;Lak;)V

    iput-object v4, v1, Lau;->b:Ljava/util/Hashtable;

    iput-object v3, v1, Lau;->d:Ljava/lang/String;

    return-object v1
.end method

.method private declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lau;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Laz;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-direct {p0}, Lau;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lau;->e()Ljava/util/Hashtable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Laz;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v2, p0, Lau;->a:Lak;

    invoke-interface {v2}, Lak;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lau;->a:Lak;

    invoke-interface {v2}, Lak;->a()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lau;->e:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lau;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lau;->d:Ljava/lang/String;
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


# virtual methods
.method public final a()I
    .locals 2

    invoke-direct {p0}, Lau;->f()V

    iget-object v0, p0, Lau;->e:[B

    array-length v0, v0

    iget-object v1, p0, Lau;->a:Lak;

    invoke-interface {v1}, Lak;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lau;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lau;->b:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lau;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 3

    invoke-direct {p0}, Lau;->f()V

    new-instance v0, LH;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lau;->e:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lau;->a:Lak;

    invoke-interface {v2}, Lak;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LH;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lau;->a:Lak;

    invoke-interface {v0}, Lak;->c()V

    return-void
.end method

.method public final d()Lak;
    .locals 1

    iget-object v0, p0, Lau;->a:Lak;

    return-object v0
.end method

.method public final declared-synchronized e()Ljava/util/Hashtable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lau;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lau;->b:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lau;->b:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
