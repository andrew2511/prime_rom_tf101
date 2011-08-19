.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLClassLoader$URLFileHandler;,
        Ljava/net/URLClassLoader$URLJarHandler;,
        Ljava/net/URLClassLoader$URLHandler;,
        Ljava/net/URLClassLoader$IndexFile;,
        Ljava/net/URLClassLoader$SubURLClassLoader;
    }
.end annotation


# instance fields
.field private currentContext:Ljava/security/AccessControlContext;

.field private factory:Ljava/net/URLStreamHandlerFactory;

.field handlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field originalUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/net/URL;)V
    .registers 4
    .parameter "urls"

    .prologue
    .line 599
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 600
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "urls"
    .parameter "parent"

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 619
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .registers 9
    .parameter "searchUrls"
    .parameter "parent"
    .parameter "factory"

    .prologue
    .line 841
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    .line 843
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 844
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_13

    .line 845
    invoke-virtual {v2}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 847
    :cond_13
    iput-object p3, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 849
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    .line 850
    array-length v1, p1

    .line 851
    .local v1, nbUrls:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    .line 852
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    .line 853
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    .line 854
    const/4 v0, 0x0

    .local v0, i:I
    :goto_36
    if-ge v0, v1, :cond_4d

    .line 855
    iget-object v3, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    :try_start_3f
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    aget-object v4, p1, v0

    invoke-direct {p0, v4}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/net/MalformedURLException; {:try_start_3f .. :try_end_4a} :catch_4e

    .line 854
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 861
    :cond_4d
    return-void

    .line 858
    :catch_4e
    move-exception v3

    goto :goto_4a
.end method

.method static synthetic access$000(Ljava/io/InputStream;)[B
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Ljava/net/URLClassLoader;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual/range {p0 .. p8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-virtual/range {p0 .. p5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual/range {p0 .. p8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/net/URLClassLoader;Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-virtual/range {p0 .. p5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    return-object v0
.end method

.method private createSearchURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 897
    if-nez p1, :cond_5

    move-object v0, p1

    .line 911
    :goto_4
    return-object v0

    .line 901
    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 903
    .local v6, protocol:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "jar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    move-object v0, p1

    .line 904
    goto :goto_4

    .line 906
    :cond_19
    iget-object v0, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    if-nez v0, :cond_3e

    .line 907
    new-instance v0, Ljava/net/URL;

    const-string v1, "jar"

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 911
    :cond_3e
    new-instance v0, Ljava/net/URL;

    const-string v1, "jar"

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    const-string v7, "jar"

    invoke-interface {v5, v7}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_4
.end method

.method private createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .registers 3
    .parameter "url"

    .prologue
    .line 1011
    new-instance v0, Ljava/net/URLClassLoader$URLFileHandler;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLFileHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    return-object v0
.end method

.method private createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .registers 3
    .parameter "url"

    .prologue
    .line 1007
    new-instance v0, Ljava/net/URLClassLoader$URLHandler;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    return-object v0
.end method

.method private createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .registers 13
    .parameter "url"

    .prologue
    .line 1016
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 1017
    .local v7, file:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1018
    const-string v5, ""

    .line 1029
    .local v5, prefixName:Ljava/lang/String;
    :goto_12
    :try_start_12
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    .line 1031
    .local v3, jarURL:Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    const-string v2, "jar"

    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v7

    .end local v7           #file:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/JarURLConnection;

    .line 1034
    .local v8, juc:Ljava/net/JarURLConnection;
    invoke-virtual {v8}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v4

    .line 1035
    .local v4, jf:Ljava/util/jar/JarFile;
    new-instance v0, Ljava/net/URLClassLoader$URLJarHandler;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/net/URLClassLoader$URLJarHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;)V

    .line 1037
    .local v0, jarH:Ljava/net/URLClassLoader$URLJarHandler;
    invoke-virtual {v0}, Ljava/net/URLClassLoader$URLJarHandler;->getIndex()Ljava/net/URLClassLoader$IndexFile;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_50} :catch_83

    move-result-object v1

    if-nez v1, :cond_6f

    .line 1039
    :try_start_53
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v9

    .line 1040
    .local v9, manifest:Ljava/util/jar/Manifest;
    if-eqz v9, :cond_6f

    .line 1041
    invoke-virtual {v9}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    sget-object v2, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 1043
    .local v6, classpath:Ljava/lang/String;
    if-eqz v6, :cond_6f

    .line 1044
    iget-object v1, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v6}, Ljava/net/URLClassLoader;->getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .end local v3           #jarURL:Ljava/net/URL;
    invoke-interface {v1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_6f} :catch_86

    .end local v6           #classpath:Ljava/lang/String;
    .end local v9           #manifest:Ljava/util/jar/Manifest;
    :cond_6f
    :goto_6f
    move-object v1, v0

    .line 1053
    .end local v0           #jarH:Ljava/net/URLClassLoader$URLJarHandler;
    .end local v4           #jf:Ljava/util/jar/JarFile;
    .end local v5           #prefixName:Ljava/lang/String;
    .end local v8           #juc:Ljava/net/JarURLConnection;
    :goto_70
    return-object v1

    .line 1020
    .restart local v7       #file:Ljava/lang/String;
    :cond_71
    const-string v1, "!/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1021
    .local v10, sepIdx:I
    const/4 v1, -0x1

    if-ne v10, v1, :cond_7c

    .line 1023
    const/4 v1, 0x0

    goto :goto_70

    .line 1025
    :cond_7c
    add-int/lit8 v10, v10, 0x2

    .line 1026
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #prefixName:Ljava/lang/String;
    goto :goto_12

    .line 1051
    .end local v7           #file:Ljava/lang/String;
    .end local v10           #sepIdx:I
    :catch_83
    move-exception v1

    .line 1053
    const/4 v1, 0x0

    goto :goto_70

    .line 1047
    .restart local v0       #jarH:Ljava/net/URLClassLoader$URLJarHandler;
    .restart local v4       #jf:Ljava/util/jar/JarFile;
    .restart local v8       #juc:Ljava/net/JarURLConnection;
    :catch_86
    move-exception v1

    goto :goto_6f
.end method

.method private static getBytes(Ljava/io/InputStream;)[B
    .registers 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1000

    .line 696
    new-array v1, v3, [B

    .line 697
    .local v1, buf:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 699
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_14

    .line 700
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 702
    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .parameter "root"
    .parameter "classpath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v0, addedURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, file:Ljava/lang/String;
    const-string v7, "!/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    sub-int v4, v7, v8

    .line 1153
    .local v4, jarIndex:I
    const-string v7, "/"

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 1154
    .local v3, index:I
    if-nez v3, :cond_2d

    .line 1155
    const-string v7, "file.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 1158
    :cond_2d
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1159
    :cond_32
    :goto_32
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1160
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1161
    .local v1, element:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_32

    .line 1164
    :try_start_42
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1165
    .local v6, url:Ljava/net/URL;
    invoke-direct {p0, v6}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/net/MalformedURLException; {:try_start_42 .. :try_end_53} :catch_54

    goto :goto_32

    .line 1166
    .end local v6           #url:Ljava/net/URL;
    :catch_54
    move-exception v7

    goto :goto_32

    .line 1171
    .end local v1           #element:Ljava/lang/String;
    :cond_56
    return-object v0
.end method

.method private static isDirectory(Ljava/net/URL;)Z
    .registers 5
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 768
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, file:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1a

    move v1, v3

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .registers 9
    .parameter "manifest"
    .parameter "dirName"

    .prologue
    .line 1125
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 1126
    .local v1, mainAttributes:Ljava/util/jar/Attributes;
    sget-object v4, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x1

    move v2, v4

    .line 1128
    .local v2, sealed:Z
    :goto_1a
    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 1129
    .local v0, attributes:Ljava/util/jar/Attributes;
    if-eqz v0, :cond_32

    .line 1130
    sget-object v4, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1131
    if-eqz v3, :cond_32

    .line 1132
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1135
    :cond_32
    return v2

    .line 1127
    .end local v0           #attributes:Ljava/util/jar/Attributes;
    .end local v2           #sealed:Z
    :cond_33
    const/4 v4, 0x0

    move v2, v4

    goto :goto_1a
.end method

.method private declared-synchronized makeNewHandler()V
    .registers 6

    .prologue
    .line 982
    monitor-enter p0

    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 983
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 984
    .local v0, nextCandidate:Ljava/net/URL;
    if-nez v0, :cond_1f

    .line 985
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "A URL is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1c

    .line 982
    .end local v0           #nextCandidate:Ljava/net/URL;
    :catchall_1c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 987
    .restart local v0       #nextCandidate:Ljava/net/URL;
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 989
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, protocol:Ljava/lang/String;
    const-string v3, "jar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 991
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    .line 997
    .local v2, result:Ljava/net/URLClassLoader$URLHandler;
    :goto_37
    if-eqz v2, :cond_1

    .line 998
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_1c

    .line 1004
    .end local v0           #nextCandidate:Ljava/net/URL;
    .end local v1           #protocol:Ljava/lang/String;
    .end local v2           #result:Ljava/net/URLClassLoader$URLHandler;
    :cond_43
    monitor-exit p0

    return-void

    .line 992
    .restart local v0       #nextCandidate:Ljava/net/URL;
    .restart local v1       #protocol:Ljava/lang/String;
    :cond_45
    :try_start_45
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 993
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    .restart local v2       #result:Ljava/net/URLClassLoader$URLHandler;
    goto :goto_37

    .line 995
    .end local v2           #result:Ljava/net/URLClassLoader$URLHandler;
    :cond_52
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_1c

    move-result-object v2

    .restart local v2       #result:Ljava/net/URLClassLoader$URLHandler;
    goto :goto_37
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .registers 3
    .parameter "urls"

    .prologue
    .line 784
    new-instance v1, Ljava/net/URLClassLoader$2;

    invoke-direct {v1, p0}, Ljava/net/URLClassLoader$2;-><init>([Ljava/net/URL;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader;

    .line 790
    .local v0, sub:Ljava/net/URLClassLoader;
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    .line 791
    return-object v0
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .registers 4
    .parameter "urls"
    .parameter "parentCl"

    .prologue
    .line 809
    new-instance v1, Ljava/net/URLClassLoader$3;

    invoke-direct {v1, p0, p1}, Ljava/net/URLClassLoader$3;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader;

    .line 815
    .local v0, sub:Ljava/net/URLClassLoader;
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    .line 816
    return-object v0
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 629
    :try_start_0
    iget-object v0, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v0, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_e} :catch_f

    .line 633
    :goto_e
    return-void

    .line 631
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .registers 17
    .parameter "packageName"
    .parameter "manifest"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v10

    .line 1074
    .local v10, mainAttributes:Ljava/util/jar/Attributes;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1075
    .local v9, dirName:Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v12

    .line 1076
    .local v12, packageAttributes:Ljava/util/jar/Attributes;
    const/4 v11, 0x0

    .line 1077
    .local v11, noEntry:Z
    if-nez v12, :cond_28

    .line 1078
    const/4 v11, 0x1

    .line 1079
    move-object v12, v10

    .line 1081
    :cond_28
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, specificationTitle:Ljava/lang/String;
    if-nez v2, :cond_38

    if-nez v11, :cond_38

    .line 1084
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 1087
    :cond_38
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, specificationVersion:Ljava/lang/String;
    if-nez v3, :cond_48

    if-nez v11, :cond_48

    .line 1090
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    :cond_48
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 1095
    .local v4, specificationVendor:Ljava/lang/String;
    if-nez v4, :cond_58

    if-nez v11, :cond_58

    .line 1096
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    :cond_58
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 1101
    .local v5, implementationTitle:Ljava/lang/String;
    if-nez v5, :cond_68

    if-nez v11, :cond_68

    .line 1102
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 1105
    :cond_68
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 1107
    .local v6, implementationVersion:Ljava/lang/String;
    if-nez v6, :cond_78

    if-nez v11, :cond_78

    .line 1108
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 1111
    :cond_78
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 1113
    .local v7, implementationVendor:Ljava/lang/String;
    if-nez v7, :cond_88

    if-nez v11, :cond_88

    .line 1114
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 1118
    :cond_88
    invoke-direct {p0, p2, v9}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    move-object/from16 v8, p3

    :goto_90
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0

    :cond_97
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_90
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v1, Ljava/net/URLClassLoader$4;

    invoke-direct {v1, p0, p1}, Ljava/net/URLClassLoader$4;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v2, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 883
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_10

    .line 884
    return-object v0

    .line 886
    :cond_10
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findClassImpl(Ljava/lang/String;)Ljava/lang/Class;
    .registers 13
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x2f

    .line 1175
    const/16 v8, 0x2e

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 1176
    .local v5, partialName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, classFileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1178
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1179
    .local v6, position:I
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_28

    .line 1180
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1182
    :cond_28
    const/4 v2, 0x0

    .line 1184
    .local v2, n:I
    :goto_29
    add-int/lit8 v3, v2, 0x1

    .end local v2           #n:I
    .local v3, n:I
    invoke-virtual {p0, v2}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v1

    .line 1185
    .local v1, handler:Ljava/net/URLClassLoader$URLHandler;
    if-nez v1, :cond_33

    .line 1193
    const/4 v8, 0x0

    :goto_32
    return-object v8

    .line 1188
    :cond_33
    invoke-virtual {v1, v4, v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1189
    .local v7, res:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v7, :cond_3b

    move-object v8, v7

    .line 1190
    goto :goto_32

    :cond_3b
    move v2, v3

    .line 1192
    .end local v3           #n:I
    .restart local v2       #n:I
    goto :goto_29
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 8
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 926
    if-nez p1, :cond_5

    move-object v3, v5

    .line 944
    :goto_4
    return-object v3

    .line 929
    :cond_5
    new-instance v3, Ljava/net/URLClassLoader$5;

    invoke-direct {v3, p0, p1}, Ljava/net/URLClassLoader$5;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v4, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 935
    .local v1, result:Ljava/net/URL;
    if-eqz v1, :cond_25

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .local v2, sm:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_25

    .line 937
    :try_start_1a
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_25} :catch_2b

    .end local v2           #sm:Ljava/lang/SecurityManager;
    :cond_25
    move-object v3, v1

    .line 944
    goto :goto_4

    .line 938
    .restart local v2       #sm:Ljava/lang/SecurityManager;
    :catch_27
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    move-object v3, v5

    .line 939
    goto :goto_4

    .line 940
    .end local v0           #e:Ljava/io/IOException;
    :catch_2b
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/SecurityException;
    move-object v3, v5

    .line 941
    goto :goto_4
.end method

.method findResourceImpl(Ljava/lang/String;)Ljava/net/URL;
    .registers 7
    .parameter "resName"

    .prologue
    .line 955
    const/4 v1, 0x0

    .line 958
    .local v1, n:I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #n:I
    .local v2, n:I
    invoke-virtual {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 959
    .local v0, handler:Ljava/net/URLClassLoader$URLHandler;
    if-nez v0, :cond_b

    .line 967
    const/4 v4, 0x0

    :goto_a
    return-object v4

    .line 962
    :cond_b
    invoke-virtual {v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 963
    .local v3, res:Ljava/net/URL;
    if-eqz v3, :cond_13

    move-object v4, v3

    .line 964
    goto :goto_a

    :cond_13
    move v1, v2

    .line 966
    .end local v2           #n:I
    .restart local v1       #n:I
    goto :goto_1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 10
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    if-nez p1, :cond_4

    .line 647
    const/4 v6, 0x0

    .line 672
    :goto_3
    return-object v6

    .line 649
    :cond_4
    new-instance v6, Ljava/net/URLClassLoader$1;

    invoke-direct {v6, p0, p1}, Ljava/net/URLClassLoader$1;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v7, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 658
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 659
    .local v1, length:I
    if-lez v1, :cond_3d

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .local v4, sm:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_3d

    .line 660
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 661
    .local v2, reduced:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    if-ge v0, v1, :cond_3c

    .line 662
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 664
    .local v5, url:Ljava/net/URL;
    :try_start_2b
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 665
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_39} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_39} :catch_42

    .line 661
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 670
    .end local v5           #url:Ljava/net/URL;
    :cond_3c
    move-object v3, v2

    .line 672
    .end local v0           #i:I
    .end local v2           #reduced:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v4           #sm:Ljava/lang/SecurityManager;
    :cond_3d
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v6

    goto :goto_3

    .line 667
    .restart local v0       #i:I
    .restart local v2       #reduced:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    .restart local v4       #sm:Ljava/lang/SecurityManager;
    .restart local v5       #url:Ljava/net/URL;
    :catch_42
    move-exception v6

    goto :goto_39

    .line 666
    :catch_44
    move-exception v6

    goto :goto_39
.end method

.method findResourcesImpl(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    const/4 v1, 0x0

    .line 678
    .local v1, n:I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #n:I
    .local v2, n:I
    invoke-virtual {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 679
    .local v0, handler:Ljava/net/URLClassLoader$URLHandler;
    if-nez v0, :cond_a

    .line 684
    return-void

    .line 682
    :cond_a
    invoke-virtual {v0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;->findResources(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v1, v2

    .line 683
    .end local v2           #n:I
    .restart local v1       #n:I
    goto :goto_1
.end method

.method getHandler(I)Ljava/net/URLClassLoader$URLHandler;
    .registers 3
    .parameter "num"

    .prologue
    .line 971
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 972
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/URLClassLoader$URLHandler;

    move-object v0, p0

    .line 978
    :goto_11
    return-object v0

    .line 974
    .restart local p0
    :cond_12
    invoke-direct {p0}, Ljava/net/URLClassLoader;->makeNewHandler()V

    .line 975
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 976
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/URLClassLoader$URLHandler;

    move-object v0, p0

    goto :goto_11

    .line 978
    .restart local p0
    :cond_27
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 9
    .parameter "codesource"

    .prologue
    const/16 v6, 0x2f

    .line 719
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v2

    .line 720
    .local v2, pc:Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    .line 721
    .local v3, u:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 724
    :try_start_16
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/JarURLConnection;

    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_a3

    move-result-object v3

    .line 730
    :cond_20
    :goto_20
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 731
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, path:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_53

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
    :cond_53
    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v4, v6, :cond_5d

    .line 738
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 740
    :cond_5d
    invoke-static {v3}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 741
    new-instance v4, Ljava/io/FilePermission;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "read"

    invoke-direct {v4, v5, v6}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 752
    .end local v1           #path:Ljava/lang/String;
    :goto_80
    return-object v2

    .line 743
    .restart local v1       #path:Ljava/lang/String;
    :cond_81
    new-instance v4, Ljava/io/FilePermission;

    const-string v5, "read"

    invoke-direct {v4, v1, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_80

    .line 746
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :cond_8c
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 747
    .restart local v0       #host:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_98

    .line 748
    const-string v0, "localhost"

    .line 750
    :cond_98
    new-instance v4, Ljava/net/SocketPermission;

    const-string v5, "connect, accept"

    invoke-direct {v4, v0, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_80

    .line 725
    .end local v0           #host:Ljava/lang/String;
    :catch_a3
    move-exception v4

    goto/16 :goto_20
.end method

.method public getURLs()[Ljava/net/URL;
    .registers 3

    .prologue
    .line 761
    iget-object v0, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/net/URL;

    return-object p0
.end method
