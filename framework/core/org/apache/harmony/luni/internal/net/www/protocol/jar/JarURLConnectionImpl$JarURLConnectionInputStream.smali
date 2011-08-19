.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarURLConnectionInputStream"
.end annotation


# instance fields
.field final jarFile:Ljava/util/jar/JarFile;

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V
    .registers 4
    .parameter
    .parameter "in"
    .parameter "file"

    .prologue
    .line 385
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    .line 386
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 387
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    .line 388
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 393
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_16

    .line 394
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;

    const/4 v1, 0x1

    #setter for: Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->closed:Z
    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->access$002(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Z)Z

    .line 395
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 397
    :cond_16
    return-void
.end method
