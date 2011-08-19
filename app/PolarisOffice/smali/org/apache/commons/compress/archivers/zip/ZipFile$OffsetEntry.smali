.class final Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OffsetEntry"
.end annotation


# instance fields
.field private dataOffset:J

.field private headerOffset:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J

    .line 87
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;-><init>()V

    return-void
.end method

.method static access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-wide v0
.end method

.method static access$002(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-wide p1
.end method

.method static access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-wide v0
.end method

.method static access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-wide p1
.end method
