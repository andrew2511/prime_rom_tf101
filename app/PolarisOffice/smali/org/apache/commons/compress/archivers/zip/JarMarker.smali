.class public final Lorg/apache/commons/compress/archivers/zip/JarMarker;
.super Ljava/lang/Object;
.source "JarMarker.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

.field private static final ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final NO_BYTES:[B

.field private static final NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 30
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 31
    new-array v0, v2, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    .line 32
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/JarMarker;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/compress/archivers/zip/JarMarker;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

    return-object v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/JarMarker;->parseFromLocalFileData([BII)V

    .line 114
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p3, :cond_0

    .line 102
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "JarMarker doesn\'t expect any data"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method
