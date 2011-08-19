.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLConnection$DefaultContentHandler;
    }
.end annotation


# static fields
.field private static contentHandlerFactory:Ljava/net/ContentHandlerFactory;

.field static contentHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field private static fileNameMap:Ljava/net/FileNameMap;


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field private contentType:Ljava/lang/String;

.field defaultHandler:Ljava/net/ContentHandler;

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private lastModified:J

.field private readTimeout:I

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 143
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/net/URLConnection$DefaultContentHandler;

    invoke-direct {v0}, Ljava/net/URLConnection$DefaultContentHandler;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 109
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 132
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 136
    iput v2, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 138
    iput v2, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 160
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 161
    return-void
.end method

.method private checkNotConnected()V
    .registers 3

    .prologue
    .line 491
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_c

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_c
    return-void
.end method

.method private getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    .registers 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljava/net/URLConnection;->parseTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, typeString:Ljava/lang/String;
    sget-object v5, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, cHandler:Ljava/lang/Object;
    if-eqz v0, :cond_18

    .line 270
    check-cast v0, Ljava/net/ContentHandler;

    .end local v0           #cHandler:Ljava/lang/Object;
    move-object v5, v0

    .line 325
    :goto_17
    return-object v5

    .line 273
    .restart local v0       #cHandler:Ljava/lang/Object;
    :cond_18
    sget-object v5, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v5, :cond_2b

    .line 274
    sget-object v5, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v5, p1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    .line 275
    .local v0, cHandler:Ljava/net/ContentHandler;
    sget-object v5, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    check-cast v0, Ljava/net/ContentHandler;

    .end local v0           #cHandler:Ljava/net/ContentHandler;
    move-object v5, v0

    goto :goto_17

    .line 281
    .local v0, cHandler:Ljava/lang/Object;
    :cond_2b
    new-instance v5, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v6, "java.content.handler.pkgs"

    invoke-direct {v5, v6}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .local v2, packageList:Ljava/lang/String;
    if-eqz v2, :cond_70

    .line 285
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_41
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_70

    .line 288
    :try_start_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 291
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_6e} :catch_97
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_6e} :catch_95
    .catch Ljava/lang/InstantiationException; {:try_start_47 .. :try_end_6e} :catch_93

    move-result-object v0

    goto :goto_41

    .line 299
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #st:Ljava/util/StringTokenizer;
    :cond_70
    if-nez v0, :cond_7b

    .line 300
    new-instance v5, Ljava/net/URLConnection$1;

    invoke-direct {v5, p0, v4}, Ljava/net/URLConnection$1;-><init>(Ljava/net/URLConnection;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    :cond_7b
    if-eqz v0, :cond_90

    .line 317
    instance-of v5, v0, Ljava/net/ContentHandler;

    if-nez v5, :cond_87

    .line 318
    new-instance v5, Ljava/net/UnknownServiceException;

    invoke-direct {v5}, Ljava/net/UnknownServiceException;-><init>()V

    throw v5

    .line 320
    :cond_87
    sget-object v5, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    check-cast v0, Ljava/net/ContentHandler;

    .end local v0           #cHandler:Ljava/lang/Object;
    move-object v5, v0

    goto :goto_17

    .line 325
    .restart local v0       #cHandler:Ljava/lang/Object;
    :cond_90
    iget-object v5, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    goto :goto_17

    .line 294
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :catch_93
    move-exception v5

    goto :goto_41

    .line 293
    :catch_95
    move-exception v5

    goto :goto_41

    .line 292
    :catch_97
    move-exception v5

    goto :goto_41
.end method

.method public static getDefaultAllowUserInteraction()Z
    .registers 1

    .prologue
    .line 367
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "field"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileNameMap()Ljava/net/FileNameMap;
    .registers 2

    .prologue
    .line 436
    const-class v0, Ljava/net/URLConnection;

    monitor-enter v0

    .line 437
    :try_start_3
    sget-object v1, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v1, :cond_e

    .line 438
    new-instance v1, Ljava/net/DefaultFileNameMap;

    invoke-direct {v1}, Ljava/net/DefaultFileNameMap;-><init>()V

    sput-object v1, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 440
    :cond_e
    sget-object v1, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    monitor-exit v0

    return-object v1

    .line 441
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "url"

    .prologue
    .line 709
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 14
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 728
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-nez v6, :cond_d

    .line 729
    const/4 v6, 0x0

    .line 806
    :goto_c
    return-object v6

    .line 732
    :cond_d
    const/16 v6, 0x40

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 733
    const/16 v6, 0x40

    new-array v0, v6, [B

    .line 734
    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 735
    .local v3, length:I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 738
    if-ne v3, v9, :cond_21

    .line 739
    const/4 v6, 0x0

    goto :goto_c

    .line 743
    :cond_21
    const-string v1, "US-ASCII"

    .line 744
    .local v1, encoding:Ljava/lang/String;
    const/4 v4, 0x0

    .line 745
    .local v4, start:I
    if-le v3, v8, :cond_8a

    .line 746
    aget-byte v6, v0, v10

    if-ne v6, v9, :cond_34

    aget-byte v6, v0, v8

    if-ne v6, v11, :cond_34

    .line 747
    const-string v1, "UTF-16LE"

    .line 748
    const/4 v4, 0x2

    .line 749
    and-int/lit8 v6, v3, 0x1

    sub-int/2addr v3, v6

    .line 751
    :cond_34
    aget-byte v6, v0, v10

    if-ne v6, v11, :cond_42

    aget-byte v6, v0, v8

    if-ne v6, v9, :cond_42

    .line 752
    const-string v1, "UTF-16BE"

    .line 753
    const/4 v4, 0x2

    .line 754
    and-int/lit8 v6, v3, 0x1

    sub-int/2addr v3, v6

    .line 756
    :cond_42
    if-le v3, v12, :cond_8a

    .line 757
    aget-byte v6, v0, v10

    const/16 v7, -0x11

    if-ne v6, v7, :cond_59

    aget-byte v6, v0, v8

    const/16 v7, -0x45

    if-ne v6, v7, :cond_59

    aget-byte v6, v0, v12

    const/16 v7, -0x41

    if-ne v6, v7, :cond_59

    .line 759
    const-string v1, "UTF-8"

    .line 760
    const/4 v4, 0x3

    .line 762
    :cond_59
    const/4 v6, 0x3

    if-le v3, v6, :cond_8a

    .line 763
    aget-byte v6, v0, v10

    if-nez v6, :cond_73

    aget-byte v6, v0, v8

    if-nez v6, :cond_73

    aget-byte v6, v0, v12

    if-ne v6, v11, :cond_73

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    if-ne v6, v9, :cond_73

    .line 766
    const-string v1, "UTF-32BE"

    .line 767
    const/4 v4, 0x4

    .line 768
    and-int/lit8 v6, v3, 0x3

    sub-int/2addr v3, v6

    .line 770
    :cond_73
    aget-byte v6, v0, v10

    if-ne v6, v9, :cond_8a

    aget-byte v6, v0, v8

    if-ne v6, v11, :cond_8a

    aget-byte v6, v0, v12

    if-nez v6, :cond_8a

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    if-nez v6, :cond_8a

    .line 773
    const-string v1, "UTF-32LE"

    .line 774
    const/4 v4, 0x4

    .line 775
    and-int/lit8 v6, v3, 0x3

    sub-int/2addr v3, v6

    .line 781
    :cond_8a
    new-instance v2, Ljava/lang/String;

    sub-int v6, v3, v4

    invoke-direct {v2, v0, v4, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 784
    .local v2, header:Ljava/lang/String;
    const-string v6, "PK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 785
    const-string v6, "application/zip"

    goto/16 :goto_c

    .line 787
    :cond_9d
    const-string v6, "GI"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 788
    const-string v6, "image/gif"

    goto/16 :goto_c

    .line 792
    :cond_a9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 793
    .local v5, textHeader:Ljava/lang/String;
    const-string v6, "<!DOCTYPE HTML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d9

    const-string v6, "<HTML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d9

    const-string v6, "<HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d9

    const-string v6, "<BODY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d9

    const-string v6, "<HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 798
    :cond_d9
    const-string v6, "text/html"

    goto/16 :goto_c

    .line 801
    :cond_dd
    const-string v6, "<?XML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 802
    const-string v6, "application/xml"

    goto/16 :goto_c

    .line 806
    :cond_e9
    const/4 v6, 0x0

    goto/16 :goto_c
.end method

.method private parseTypeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "typeString"

    .prologue
    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    .local v2, typeStringBuffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 821
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 822
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_25

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_25

    .line 823
    const/16 v3, 0x5f

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 819
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 826
    .end local v0           #c:C
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .registers 5
    .parameter "contentFactory"

    .prologue
    .line 859
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    :try_start_3
    sget-object v2, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v2, :cond_12

    .line 860
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Factory already set"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 859
    :catchall_f
    move-exception v2

    monitor-exit v1

    throw v2

    .line 862
    :cond_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 863
    .local v0, sManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1b

    .line 864
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 866
    :cond_1b
    sput-object p0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f

    .line 867
    monitor-exit v1

    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .registers 1
    .parameter "allows"

    .prologue
    .line 880
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 881
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "field"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 897
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .registers 4
    .parameter "map"

    .prologue
    .line 952
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 953
    .local v0, manager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 954
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 956
    :cond_9
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 957
    :try_start_c
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 958
    monitor-exit v1

    .line 959
    return-void

    .line 958
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v2
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 512
    if-nez p1, :cond_d

    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_d
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 1041
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 197
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 200
    :cond_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 201
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 202
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 205
    :cond_27
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 206
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 231
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 234
    :cond_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 235
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 236
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 239
    :cond_27
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 240
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 3

    .prologue
    .line 335
    const-string v0, "Content-Length"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 4

    .prologue
    .line 356
    const-string v0, "Date"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 392
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 404
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 416
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public getExpiration()J
    .registers 4

    .prologue
    .line 426
    const-string v0, "Expires"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 8
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, date:Ljava/lang/String;
    if-nez v0, :cond_8

    move-wide v2, p2

    .line 555
    :goto_7
    return-wide v2

    .line 553
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide v2

    goto :goto_7

    .line 554
    :catch_d
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-wide v2, p2

    .line 555
    goto :goto_7
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 5
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 572
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 574
    :goto_8
    return v1

    .line 573
    :catch_9
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p2

    .line 574
    goto :goto_8
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "posn"

    .prologue
    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 604
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Does not support writing to the input stream"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModified()J
    .registers 5

    .prologue
    .line 627
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 628
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 630
    :goto_a
    return-wide v0

    :cond_b
    const-string v0, "Last-Modified"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    goto :goto_a
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Does not support writing to the output stream"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    new-instance v0, Ljava/security/AllPermission;

    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 1070
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 676
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 695
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 843
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 844
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 4
    .parameter "timeout"

    .prologue
    .line 1029
    if-gez p1, :cond_a

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_a
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 1033
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 909
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 910
    return-void
.end method

.method public setDoInput(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 925
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 926
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 941
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 942
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 974
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 975
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 976
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 4
    .parameter "timeout"

    .prologue
    .line 1057
    if-gez p1, :cond_a

    .line 1058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_a
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 1061
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 994
    if-nez p1, :cond_d

    .line 995
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_d
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 1012
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 1013
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 1014
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
