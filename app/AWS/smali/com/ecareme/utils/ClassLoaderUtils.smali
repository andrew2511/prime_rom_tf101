.class public Lcom/ecareme/utils/ClassLoaderUtils;
.super Ljava/lang/Object;
.source "ClassLoaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .parameter "resource"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ecareme/utils/ClassLoaderUtils;->getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;
    .locals 3
    .parameter "resource"
    .parameter "callerClass"

    .prologue
    const/16 v2, 0x2f

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 27
    .local v0, url:Ljava/net/URL;
    if-nez v0, :cond_0

    .line 29
    const-class v1, Lcom/ecareme/utils/ClassLoaderUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 32
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 37
    :cond_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_2

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ecareme/utils/ClassLoaderUtils;->getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ecareme/utils/ClassLoaderUtils;->getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;
    .locals 2
    .parameter "resource"
    .parameter "callerClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/ecareme/utils/ClassLoaderUtils;->getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    .line 59
    .local v0, url:Ljava/net/URL;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 89
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 91
    .local v1, ee:Ljava/lang/ClassNotFoundException;
    const-class v2, Lcom/ecareme/utils/ClassLoaderUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method
