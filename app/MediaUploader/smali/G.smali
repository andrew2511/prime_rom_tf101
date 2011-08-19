.class public final LG;
.super Ljava/lang/Object;


# instance fields
.field private final a:LE;

.field private b:Ljava/util/Hashtable;

.field private c:Z


# direct methods
.method public constructor <init>(LE;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LG;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, LG;->c:Z

    iput-object p1, p0, LG;->a:LE;

    return-void
.end method

.method private static a([B)Ljava/util/Hashtable;
    .locals 6

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    new-array v5, v5, [B

    invoke-interface {v0, v5}, Ljava/io/DataInput;->readFully([B)V

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FLASH"

    invoke-static {v2, v0}, Le;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LG;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    iget-object v0, p0, LG;->a:LE;

    const-string v1, "Preferences"

    invoke-interface {v0, v1}, LE;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, LG;->a([B)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, LG;->b:Ljava/util/Hashtable;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LG;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, LG;->a:LE;

    const/16 v1, 0x7d0

    new-array v1, v1, [B

    const-string v2, "Preferences"

    invoke-interface {v0, v1, v2}, LE;->a([BLjava/lang/String;)I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LG;->b:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    const/16 v6, 0x7d0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LG;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, LG;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [B

    :cond_1
    invoke-interface {v4, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    array-length v0, v1

    invoke-interface {v4, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-interface {v4, v1}, Ljava/io/DataOutput;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Le;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, LG;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-le v1, v6, :cond_3

    :goto_3
    iget-object v1, p0, LG;->a:LE;

    const-string v2, "Preferences"

    invoke-interface {v1, v0, v2}, LE;->a([BLjava/lang/String;)I

    goto :goto_2

    :cond_3
    const/16 v1, 0x7d0

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    goto :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/String;[B)Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LG;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LG;->c:Z

    if-nez p2, :cond_1

    iget-object v0, p0, LG;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, LG;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LG;->b()V

    iget-object v0, p0, LG;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
