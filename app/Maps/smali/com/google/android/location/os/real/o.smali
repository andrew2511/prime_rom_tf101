.class public Lcom/google/android/location/os/real/o;
.super Ly/a;


# static fields
.field private static final a:[B


# instance fields
.field private b:Lp/n;

.field private f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/location/os/real/o;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/o;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ly/a;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/o;->a(I)V

    invoke-virtual {p0, p3}, Lcom/google/android/location/os/real/o;->a([B)V

    return-void
.end method

.method private v()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/android/location/os/real/o;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/android/location/os/real/o;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/os/real/o;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 v2, 0x6d72

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v2, "ROOT"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v2, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    invoke-interface {v2}, Lp/n;->e()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    invoke-interface {v2}, Lp/n;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/o;->f:[B

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/o;->f:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/location/os/real/o;->v()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/location/os/real/o;->w()V

    iget-object v0, p0, Lcom/google/android/location/os/real/o;->f:[B

    array-length v0, v0

    sget-object v1, Lcom/google/android/location/os/real/o;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    invoke-interface {v1}, Lp/n;->e()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public declared-synchronized a([B)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/location/os/real/p;

    invoke-direct {v0, p1}, Lcom/google/android/location/os/real/p;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()Ljava/io/InputStream;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/location/os/real/o;->w()V

    iget-object v0, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    invoke-interface {v0}, Lp/n;->e()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ln/e;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/location/os/real/o;->f:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lcom/google/android/location/os/real/o;->a:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2}, Ln/e;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ln/e;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/location/os/real/o;->f:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;

    invoke-interface {v2}, Lp/n;->f()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lcom/google/android/location/os/real/o;->a:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Ln/e;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ly/a;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/o;->f:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ly/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/o;->f:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/o;->b:Lp/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
