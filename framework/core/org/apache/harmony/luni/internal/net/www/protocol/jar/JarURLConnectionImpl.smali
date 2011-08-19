.class public Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;
.super Ljava/net/JarURLConnection;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;
    }
.end annotation


# static fields
.field static jarCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarInput:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 75
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    .line 76
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->closed:Z

    return p1
.end method

.method public static closeCachedFiles()V
    .registers 5

    .prologue
    .line 366
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 367
    .local v1, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 368
    :try_start_9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 369
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_29

    move-result v3

    if-eqz v3, :cond_27

    .line 371
    :try_start_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile;

    .line 372
    .local v2, zip:Ljava/util/zip/ZipFile;
    if-eqz v2, :cond_d

    .line 373
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_25

    goto :goto_d

    .line 375
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    :catch_25
    move-exception v3

    goto :goto_d

    .line 379
    :cond_27
    :try_start_27
    monitor-exit v4

    .line 380
    return-void

    .line 379
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/util/jar/JarFile;>;>;"
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method private findJarEntry()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 217
    :cond_6
    return-void

    .line 213
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    .line 214
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_6

    .line 215
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findJarFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, jar:Ljava/util/jar/JarFile;
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getUseCaches()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 115
    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 116
    :try_start_a
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 117
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_46

    .line 118
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_3c

    .line 119
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    .line 120
    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 121
    :try_start_22
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 122
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_49

    .line 123
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 128
    :goto_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_4d

    .line 134
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_57

    .line 135
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 117
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1

    .line 126
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    goto :goto_3b

    .line 128
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v1

    .line 131
    :cond_50
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    goto :goto_3c

    .line 137
    :cond_57
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connected:Z

    if-nez v0, :cond_d

    .line 85
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->findJarFile()V

    .line 86
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->findJarEntry()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connected:Z

    .line 89
    :cond_d
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 319
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_a

    .line 320
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 322
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getContentLength()I
    .registers 3

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 289
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_e

    .line 290
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 296
    :goto_d
    return v0

    .line 292
    :cond_e
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_18

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_d

    .line 293
    :catch_18
    move-exception v0

    .line 296
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 253
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 255
    const-string v2, "x-java/jar"

    .line 274
    :goto_10
    return-object v2

    .line 257
    :cond_11
    const/4 v0, 0x0

    .line 258
    .local v0, cType:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, entryName:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 262
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_1c
    if-nez v0, :cond_20

    .line 272
    const-string v0, "content/unknown"

    :cond_20
    move-object v2, v0

    .line 274
    goto :goto_10

    .line 265
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 266
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2c

    move-result-object v0

    goto :goto_1c

    .line 267
    :catch_2c
    move-exception v2

    goto :goto_1c
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->closed:Z

    if-eqz v0, :cond_c

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JarURLConnection InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_c
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 233
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_16

    .line 234
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    .line 239
    :goto_15
    return-object v0

    .line 236
    :cond_16
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_22

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Jar entry not specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_22
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$JarURLConnectionInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    goto :goto_15
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 201
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->connect()V

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method openJarFile()Ljava/util/jar/JarFile;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, jar:Ljava/util/jar/JarFile;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 143
    new-instance v1, Ljava/util/jar/JarFile;

    .end local v1           #jar:Ljava/util/jar/JarFile;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v6, v6}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 186
    .restart local v1       #jar:Ljava/util/jar/JarFile;
    :cond_27
    :goto_27
    return-object v1

    .line 146
    :cond_28
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 148
    .local v0, is:Ljava/io/InputStream;
    :try_start_32
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;

    invoke-direct {v2, p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl$1;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;Ljava/io/InputStream;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #jar:Ljava/util/jar/JarFile;
    check-cast v1, Ljava/util/jar/JarFile;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_43

    .line 180
    .restart local v1       #jar:Ljava/util/jar/JarFile;
    if-eqz v0, :cond_27

    .line 181
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_27

    .line 180
    .end local v1           #jar:Ljava/util/jar/JarFile;
    :catchall_43
    move-exception v2

    if-eqz v0, :cond_49

    .line 181
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_49
    throw v2
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .parameter "defaultusecaches"

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 360
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .parameter "usecaches"

    .prologue
    .line 349
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 350
    return-void
.end method
