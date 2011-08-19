.class public final Lax;
.super LaI;


# instance fields
.field private a:Lak;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Hashtable;

.field private e:Ljava/util/Vector;

.field private f:[B

.field private g:[B

.field private h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LaI;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lax;->b:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lax;->c(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LaI;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lax;->b:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lax;->c(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LaI;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lax;->b:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lax;->c(I)V

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lax;->h:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lax;->h:[B

    iget-object v0, p0, Lax;->h:[B

    :cond_0
    iget-object v0, p0, Lax;->g:[B

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lax;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lax;->e:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lax;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lax;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v2}, Laz;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lax;->d:Ljava/util/Hashtable;

    iget-object v3, p0, Lax;->e:Ljava/util/Vector;

    if-nez v3, :cond_8

    iget-object v3, p0, Lax;->c:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v2, v3}, Laz;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v2, p0, Lax;->a:Lak;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lax;->a:Lak;

    invoke-interface {v2}, Lak;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    iget-object v2, p0, Lax;->e:Ljava/util/Vector;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lax;->a:Lak;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lax;->a:Lak;

    invoke-interface {v2}, Lak;->a()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lax;->g:[B

    iget-object v0, p0, Lax;->g:[B

    :cond_3
    iget-object v0, p0, Lax;->f:[B

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lax;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lax;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lax;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lax;->e:Ljava/util/Vector;

    if-nez v2, :cond_5

    iget-object v2, p0, Lax;->g:[B

    array-length v2, v2

    iget-object v3, p0, Lax;->a:Lak;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lax;->a:Lak;

    invoke-interface {v3}, Lak;->a()I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lax;->f:[B

    iget-object v0, p0, Lax;->f:[B

    :cond_6
    return-void

    :cond_7
    const-string v2, "multipart/related"

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, LaI;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lax;->f:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lau;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lax;->c(I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lax;->e:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lax;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lax;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lax;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lax;->d:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lax;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lah;

    invoke-direct {v0, p1}, Lah;-><init>([B)V

    iput-object v0, p0, Lax;->a:Lak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lax;->f:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lax;->g:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lax;->h:[B

    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau;

    invoke-virtual {v0}, Lau;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lax;->l()V

    iget-object v0, p0, Lax;->f:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lax;->g:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lax;->a:Lak;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lax;->a:Lak;

    invoke-interface {v1}, Lak;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lax;->e:Ljava/util/Vector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lax;->h:[B

    array-length v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau;

    invoke-virtual {v0}, Lau;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/io/InputStream;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lax;->l()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lax;->f:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lax;->g:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lax;->a:Lak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lax;->a:Lak;

    invoke-interface {v0}, Lak;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lax;->h:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lax;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau;

    invoke-virtual {v0}, Lau;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, LH;

    invoke-direct {v1, v0}, LH;-><init>([Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
