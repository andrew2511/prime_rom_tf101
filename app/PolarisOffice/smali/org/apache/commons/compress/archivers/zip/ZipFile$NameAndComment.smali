.class final Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAndComment"
.end annotation


# instance fields
.field private final comment:[B

.field private final name:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0
    .parameter "name"
    .parameter "comment"

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->name:[B

    .line 666
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->comment:[B

    .line 667
    return-void
.end method

.method constructor <init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 661
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[B)V

    return-void
.end method

.method static access$400(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 661
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->name:[B

    return-object v0
.end method

.method static access$500(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 661
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->comment:[B

    return-object v0
.end method
