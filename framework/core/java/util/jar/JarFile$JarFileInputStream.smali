.class final Ljava/util/jar/JarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private entry:Ljava/util/jar/JarVerifier$VerifierEntry;

.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier$VerifierEntry;)V
    .registers 6
    .parameter "is"
    .parameter "ze"
    .parameter "e"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 71
    iput-object p2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 72
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 73
    iput-object p3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 74
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_6

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_5
.end method

.method public read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v3, -0x1

    .line 78
    iget-boolean v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v1, :cond_a

    move v1, v3

    .line 97
    :goto_9
    return v1

    .line 81
    :cond_a
    iget-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_34

    .line 82
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 83
    .local v0, r:I
    if-eq v0, v3, :cond_31

    .line 84
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Ljava/util/jar/JarVerifier$VerifierEntry;->write(I)V

    .line 85
    iget-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 89
    :goto_22
    iget-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2f

    .line 90
    iput-boolean v7, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 91
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    :cond_2f
    move v1, v0

    .line 93
    goto :goto_9

    .line 87
    :cond_31
    iput-wide v5, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_22

    .line 95
    .end local v0           #r:I
    :cond_34
    iput-boolean v7, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 96
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v1, v3

    .line 97
    goto :goto_9
.end method

.method public read([BII)I
    .registers 13
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 103
    iget-boolean v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v2, :cond_a

    move v2, v4

    .line 126
    :goto_9
    return v2

    .line 106
    :cond_a
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3e

    .line 107
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 108
    .local v0, r:I
    if-eq v0, v4, :cond_3b

    .line 109
    move v1, v0

    .line 110
    .local v1, size:I
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_21

    .line 111
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    long-to-int v1, v2

    .line 113
    :cond_21
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2, p1, p2, v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->write([BII)V

    .line 114
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 118
    .end local v1           #size:I
    :goto_2c
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_39

    .line 119
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 120
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    :cond_39
    move v2, v0

    .line 122
    goto :goto_9

    .line 116
    :cond_3b
    iput-wide v6, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_2c

    .line 124
    .end local v0           #r:I
    :cond_3e
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 125
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v2, v4

    .line 126
    goto :goto_9
.end method

.method public skip(J)J
    .registers 5
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
