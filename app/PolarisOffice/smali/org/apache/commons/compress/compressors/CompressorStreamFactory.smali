.class public Lorg/apache/commons/compress/compressors/CompressorStreamFactory;
.super Ljava/lang/Object;
.source "CompressorStreamFactory.java"


# static fields
.field public static final BZIP2:Ljava/lang/String; = "bzip2"

.field public static final GZIP:Ljava/lang/String; = "gz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Stream must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Mark is not supported."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_1
    const/16 v3, 0xc

    new-array v1, v3, [B

    .line 91
    .local v1, signature:[B
    array-length v3, v1

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 93
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 94
    .local v2, signatureLength:I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 96
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    new-instance v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v3, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 101
    :goto_0
    return-object v3

    .line 100
    :cond_2
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    new-instance v3, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    invoke-direct {v3, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v2           #signatureLength:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 105
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v4, "Failed to detect Compressor from InputStream."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 108
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #signatureLength:I
    :cond_3
    new-instance v3, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v4, "No Compressor found for the stream signature."

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 4
    .parameter "name"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .prologue
    .line 122
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Compressor name and stream must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    :try_start_0
    const-string v1, "gz"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    :goto_0
    return-object v1

    .line 133
    :cond_2
    const-string v1, "bzip2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    new-instance v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 138
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v2, "Could not create CompressorInputStream."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Compressor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 4
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .prologue
    .line 156
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Compressor name and stream must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1
    :try_start_0
    const-string v1, "gz"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    new-instance v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    :goto_0
    return-object v1

    .line 167
    :cond_2
    const-string v1, "bzip2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    new-instance v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v2, "Could not create CompressorOutputStream"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 175
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Compressor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
