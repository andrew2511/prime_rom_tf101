.class final Lcom/google/android/location/os/real/p;
.super Ljava/lang/Object;

# interfaces
.implements Lp/n;


# instance fields
.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/p;->a:[B

    iput-object v0, p0, Lcom/google/android/location/os/real/p;->b:[B

    iput-object p1, p0, Lcom/google/android/location/os/real/p;->a:[B

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/p;->b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/p;->a:[B

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/p;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/p;->b:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/p;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([B)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/os/real/p;->a:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/p;->a:[B

    iput-object v0, p0, Lcom/google/android/location/os/real/p;->b:[B

    return-void
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/os/real/p;->a()V

    iget-object v0, p0, Lcom/google/android/location/os/real/p;->b:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/io/InputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/os/real/p;->a()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/location/os/real/p;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
