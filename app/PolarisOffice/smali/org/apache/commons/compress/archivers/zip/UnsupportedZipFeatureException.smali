.class public Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;
.super Ljava/util/zip/ZipException;
.source "UnsupportedZipFeatureException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;
    }
.end annotation


# instance fields
.field private final entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private final reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .parameter "reason"
    .parameter "entry"

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unsupported feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " used in entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    .line 43
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 44
    return-void
.end method


# virtual methods
.method public getEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object v0
.end method

.method public getFeature()Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    return-object v0
.end method
