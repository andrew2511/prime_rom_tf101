.class Lorg/apache/commons/compress/archivers/zip/FallbackZipEncoding;
.super Ljava/lang/Object;
.source "FallbackZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# instance fields
.field private final charset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public decode([B)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
