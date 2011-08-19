.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.source "JarArchiveInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    return-void
.end method

.method public static matches([BI)Z
    .locals 1
    .parameter "signature"
    .parameter "length"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->getNextJarEntry()Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextJarEntry()Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .line 41
    .local v0, entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    goto :goto_0
.end method
