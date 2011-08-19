.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "JarArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field private certificates:[Ljava/security/cert/Certificate;

.field private manifestAttributes:Ljava/util/jar/Attributes;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 36
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 36
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 36
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/cert/Certificate;

    .line 63
    .local v0, certs:[Ljava/security/cert/Certificate;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 66
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManifestAttributes()Ljava/util/jar/Attributes;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->hashCode()I

    move-result v0

    return v0
.end method
