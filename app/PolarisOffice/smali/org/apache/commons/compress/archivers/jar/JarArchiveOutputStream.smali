.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.source "JarArchiveOutputStream.java"


# instance fields
.field private jarMarkerAdded:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->jarMarkerAdded:Z

    .line 42
    return-void
.end method


# virtual methods
.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 3
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->jarMarkerAdded:Z

    if-nez v1, :cond_0

    .line 47
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object v1, v0

    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/JarMarker;->getInstance()Lorg/apache/commons/compress/archivers/zip/JarMarker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->jarMarkerAdded:Z

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 51
    return-void
.end method
