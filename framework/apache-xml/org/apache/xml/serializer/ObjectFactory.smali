.class Lorg/apache/xml/serializer/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xalan.properties"

.field private static final SERVICES_PATH:Ljava/lang/String; = "META-INF/services/"

.field private static fLastModified:J

.field private static fXalanProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 76
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "factoryId"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/xml/serializer/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, factoryClass:Ljava/lang/Class;
    if-nez v0, :cond_26

    .line 137
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 142
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, instance:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    .line 144
    return-object v1

    .line 145
    .end local v1           #instance:Ljava/lang/Object;
    :catch_41
    move-exception v3

    move-object v2, v3

    .line 146
    .local v2, x:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for factory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 1
    .parameter "msg"

    .prologue
    .line 386
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v3

    .line 399
    .local v3, ss:Lorg/apache/xml/serializer/SecuritySupport;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 400
    .local v1, context:Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 402
    .local v4, system:Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 404
    .local v0, chain:Ljava/lang/ClassLoader;
    :goto_d
    if-ne v1, v0, :cond_23

    .line 413
    const-class v5, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 415
    .local v2, current:Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 417
    :goto_16
    if-ne v2, v0, :cond_1a

    move-object v5, v4

    .line 445
    .end local v2           #current:Ljava/lang/ClassLoader;
    :goto_19
    return-object v5

    .line 422
    .restart local v2       #current:Ljava/lang/ClassLoader;
    :cond_1a
    if-nez v0, :cond_1e

    move-object v5, v2

    .line 430
    goto :goto_19

    .line 425
    :cond_1e
    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_16

    .line 433
    .end local v2           #current:Ljava/lang/ClassLoader;
    :cond_23
    if-nez v0, :cond_27

    move-object v5, v1

    .line 445
    goto :goto_19

    .line 440
    :cond_27
    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_d
.end method

.method private static findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "factoryId"

    .prologue
    const/4 v11, 0x0

    .line 536
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v7

    .line 537
    .local v7, ss:Lorg/apache/xml/serializer/SecuritySupport;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "META-INF/services/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 538
    .local v6, serviceId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 541
    .local v4, is:Ljava/io/InputStream;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 543
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 546
    if-nez v4, :cond_30

    .line 547
    const-class v9, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 548
    .local v1, current:Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_30

    .line 549
    move-object v0, v1

    .line 550
    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 554
    .end local v1           #current:Ljava/lang/ClassLoader;
    :cond_30
    if-nez v4, :cond_34

    move-object v9, v11

    .line 616
    :goto_33
    return-object v9

    .line 559
    :cond_34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found jar resource="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " using ClassLoader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 580
    :try_start_54
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_60} :catch_8a

    .line 585
    .local v5, rd:Ljava/io/BufferedReader;
    :goto_60
    const/4 v3, 0x0

    .line 589
    .local v3, factoryClassName:Ljava/lang/String;
    :try_start_61
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_97

    move-result-object v3

    .line 597
    :try_start_65
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_a4

    .line 603
    :goto_68
    if-eqz v3, :cond_a2

    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a2

    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found in resource, value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    move-object v9, v3

    .line 612
    goto :goto_33

    .line 581
    .end local v3           #factoryClassName:Ljava/lang/String;
    .end local v5           #rd:Ljava/io/BufferedReader;
    :catch_8a
    move-exception v9

    move-object v2, v9

    .line 582
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v5       #rd:Ljava/io/BufferedReader;
    goto :goto_60

    .line 590
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #factoryClassName:Ljava/lang/String;
    :catch_97
    move-exception v8

    .line 597
    .local v8, x:Ljava/io/IOException;
    :try_start_98
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a6

    :goto_9b
    move-object v9, v11

    .line 600
    goto :goto_33

    .line 595
    .end local v8           #x:Ljava/io/IOException;
    :catchall_9d
    move-exception v9

    .line 597
    :try_start_9e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a8

    .line 600
    :goto_a1
    throw v9

    :cond_a2
    move-object v9, v11

    .line 616
    goto :goto_33

    .line 600
    :catch_a4
    move-exception v9

    goto :goto_68

    .restart local v8       #x:Ljava/io/IOException;
    :catch_a6
    move-exception v9

    goto :goto_9b

    .end local v8           #x:Ljava/io/IOException;
    :catch_a8
    move-exception v10

    goto :goto_a1
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 11
    .parameter "className"
    .parameter "cl"
    .parameter "doFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 483
    .local v5, security:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_18

    .line 484
    :try_start_6
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 485
    .local v2, lastDot:I
    move-object v3, p0

    .line 486
    .local v3, packageName:Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_15

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 487
    :cond_15
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_18} :catch_1f

    .line 494
    .end local v2           #lastDot:I
    .end local v3           #packageName:Ljava/lang/String;
    :cond_18
    if-nez p1, :cond_22

    .line 504
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 526
    .local v4, providerClass:Ljava/lang/Class;
    :goto_1e
    return-object v4

    .line 489
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_1f
    move-exception v7

    move-object v1, v7

    .line 490
    .local v1, e:Ljava/lang/SecurityException;
    throw v1

    .line 507
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_22
    :try_start_22
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_25} :catch_27

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 508
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_27
    move-exception v6

    .line 509
    .local v6, x:Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_40

    .line 511
    const-class v7, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 512
    .local v0, current:Ljava/lang/ClassLoader;
    if-nez v0, :cond_37

    .line 513
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 514
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_37
    if-eq p1, v0, :cond_3f

    .line 515
    move-object p1, v0

    .line 516
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 518
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_3f
    throw v6

    .line 521
    .end local v0           #current:Ljava/lang/ClassLoader;
    :cond_40
    throw v6
.end method

.method static lookUpFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .parameter "factoryId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0, v0}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 10
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, factoryClassName:Ljava/lang/String;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 212
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v1, :cond_b

    .line 213
    move-object v1, p2

    .line 218
    :cond_b
    const/4 v4, 0x1

    :try_start_c
    invoke-static {v1, v0, v4}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 221
    .local v2, providerClass:Ljava/lang/Class;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created new instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using ClassLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_30} :catch_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_52

    .line 223
    return-object v2

    .line 224
    .end local v2           #providerClass:Ljava/lang/Class;
    :catch_31
    move-exception v4

    move-object v3, v4

    .line 225
    .local v3, x:Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 227
    .end local v3           #x:Ljava/lang/ClassNotFoundException;
    :catch_52
    move-exception v4

    move-object v3, v4

    .line 228
    .local v3, x:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method static lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"

    .prologue
    .line 260
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v4

    .line 264
    .local v4, ss:Lorg/apache/xml/serializer/SecuritySupport;
    :try_start_4
    invoke-virtual {v4, p0}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 265
    .local p2, systemProp:Ljava/lang/String;
    if-eqz p2, :cond_23

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found system property, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_20} :catch_22

    move-object p0, p2

    .line 374
    .end local p0
    .end local p2           #systemProp:Ljava/lang/String;
    :goto_21
    return-object p0

    .line 269
    .restart local p0
    :catch_22
    move-exception p2

    .line 275
    :cond_23
    const/4 v0, 0x0

    .line 278
    .local v0, factoryClassName:Ljava/lang/String;
    if-nez p1, :cond_fe

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, propertiesFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 282
    .local v2, propertiesFileExists:Z
    :try_start_28
    const-string p2, "java.home"

    invoke-virtual {v4, p2}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 283
    .local p2, javah:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #javah:Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "lib"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "xalan.properties"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_58} :catch_c1

    .line 286
    .end local v1           #propertiesFile:Ljava/io/File;
    .local p2, propertiesFile:Ljava/io/File;
    :try_start_58
    invoke-virtual {v4, p2}, Lorg/apache/xml/serializer/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_5b} :catch_158

    move-result v1

    .end local v2           #propertiesFileExists:Z
    .local v1, propertiesFileExists:Z
    move v3, v1

    .end local v1           #propertiesFileExists:Z
    .local v3, propertiesFileExists:Z
    move-object v2, p2

    .line 293
    .end local p2           #propertiesFile:Ljava/io/File;
    .local v2, propertiesFile:Ljava/io/File;
    :goto_5e
    const-class v5, Lorg/apache/xml/serializer/ObjectFactory;

    monitor-enter v5

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, loadProperties:Z
    const/4 p2, 0x0

    .line 298
    .local p2, fis:Ljava/io/FileInputStream;
    :try_start_63
    sget-wide v6, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_e6

    .line 299
    if-eqz v3, :cond_cc

    sget-wide v6, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    invoke-virtual {v4, v2}, Lorg/apache/xml/serializer/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v8

    sput-wide v8, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J
    :try_end_75
    .catchall {:try_start_63 .. :try_end_75} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_75} :catch_d6

    cmp-long v6, v6, v8

    if-gez v6, :cond_cc

    .line 301
    const/4 v1, 0x1

    .line 316
    .end local v3           #propertiesFileExists:Z
    :cond_7a
    :goto_7a
    if-eqz v1, :cond_8c

    .line 319
    :try_start_7c
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 320
    invoke-virtual {v4, v2}, Lorg/apache/xml/serializer/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p2

    .line 321
    sget-object v2, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .end local v2           #propertiesFile:Ljava/io/File;
    invoke-virtual {v2, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_152
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8c} :catch_d6

    .line 332
    :cond_8c
    if-eqz p2, :cond_91

    .line 334
    :try_start_8e
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_146
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_138

    .line 340
    :cond_91
    :goto_91
    :try_start_91
    monitor-exit v5
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_14c

    .line 341
    sget-object p2, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .end local p2           #fis:Ljava/io/FileInputStream;
    if-eqz p2, :cond_15e

    .line 342
    sget-object p2, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    invoke-virtual {p2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 367
    .end local v0           #factoryClassName:Ljava/lang/String;
    .end local v1           #loadProperties:Z
    .local p2, factoryClassName:Ljava/lang/String;
    :cond_9c
    :goto_9c
    if-eqz p2, :cond_132

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", value="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    move-object p0, p2

    .line 370
    goto/16 :goto_21

    .line 287
    .end local p2           #factoryClassName:Ljava/lang/String;
    .restart local v0       #factoryClassName:Ljava/lang/String;
    .local v1, propertiesFile:Ljava/io/File;
    .local v2, propertiesFileExists:Z
    .restart local p0
    :catch_c1
    move-exception p2

    .line 289
    .local p2, e:Ljava/lang/SecurityException;
    :goto_c2
    const-wide/16 v5, -0x1

    sput-wide v5, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    .line 290
    const/4 p2, 0x0

    sput-object p2, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .end local p2           #e:Ljava/lang/SecurityException;
    move v3, v2

    .end local v2           #propertiesFileExists:Z
    .restart local v3       #propertiesFileExists:Z
    move-object v2, v1

    .end local v1           #propertiesFile:Ljava/io/File;
    .local v2, propertiesFile:Ljava/io/File;
    goto :goto_5e

    .line 304
    .local v1, loadProperties:Z
    .local p2, fis:Ljava/io/FileInputStream;
    :cond_cc
    if-nez v3, :cond_7a

    .line 305
    const-wide/16 v6, -0x1

    :try_start_d0
    sput-wide v6, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    .line 306
    const/4 v3, 0x0

    sput-object v3, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;
    :try_end_d5
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d5} :catch_d6

    goto :goto_7a

    .line 323
    .end local v2           #propertiesFile:Ljava/io/File;
    .end local v3           #propertiesFileExists:Z
    :catch_d6
    move-exception v2

    .line 324
    .local v2, x:Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_d8
    sput-object v2, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 325
    .end local v2           #x:Ljava/lang/Exception;
    const-wide/16 v2, -0x1

    sput-wide v2, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J
    :try_end_de
    .catchall {:try_start_d8 .. :try_end_de} :catchall_f0

    .line 332
    if-eqz p2, :cond_91

    .line 334
    :try_start_e0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_14c
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_91

    .line 337
    :catch_e4
    move-exception v2

    goto :goto_91

    .line 311
    .local v2, propertiesFile:Ljava/io/File;
    .restart local v3       #propertiesFileExists:Z
    :cond_e6
    if-eqz v3, :cond_7a

    .line 312
    const/4 v1, 0x1

    .line 313
    :try_start_e9
    invoke-virtual {v4, v2}, Lorg/apache/xml/serializer/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v6

    sput-wide v6, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J
    :try_end_ef
    .catchall {:try_start_e9 .. :try_end_ef} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ef} :catch_d6

    goto :goto_7a

    .line 332
    .end local v2           #propertiesFile:Ljava/io/File;
    .end local v3           #propertiesFileExists:Z
    :catchall_f0
    move-exception p0

    move p1, v1

    .end local v1           #loadProperties:Z
    .local p1, loadProperties:Z
    move-object v10, p2

    .end local p2           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    move-object p2, p0

    move-object p0, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    :goto_f5
    if-eqz p0, :cond_fa

    .line 334
    :try_start_f7
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_13b

    .line 337
    .end local v0           #factoryClassName:Ljava/lang/String;
    :cond_fa
    :goto_fa
    :try_start_fa
    throw p2

    .line 340
    :catchall_fb
    move-exception p2

    :goto_fc
    monitor-exit v5
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fb

    throw p2

    .line 345
    .restart local v0       #factoryClassName:Ljava/lang/String;
    .local p0, factoryId:Ljava/lang/String;
    .local p1, propertiesFilename:Ljava/lang/String;
    :cond_fe
    const/4 p2, 0x0

    .line 347
    .restart local p2       #fis:Ljava/io/FileInputStream;
    :try_start_ff
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/apache/xml/serializer/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    :try_end_107
    .catchall {:try_start_ff .. :try_end_107} :catchall_129
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_107} :catch_11c

    move-result-object v1

    .line 348
    .end local p2           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_108
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    .line 349
    .local p2, props:Ljava/util/Properties;
    invoke-virtual {p2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 350
    invoke-virtual {p2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_113
    .catchall {:try_start_108 .. :try_end_113} :catchall_13f
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_113} :catch_143

    move-result-object p2

    .line 358
    .end local v0           #factoryClassName:Ljava/lang/String;
    .local p2, factoryClassName:Ljava/lang/String;
    if-eqz v1, :cond_9c

    .line 360
    :try_start_116
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11a

    goto :goto_9c

    .line 363
    :catch_11a
    move-exception v0

    goto :goto_9c

    .line 351
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #factoryClassName:Ljava/lang/String;
    .local p2, fis:Ljava/io/FileInputStream;
    :catch_11c
    move-exception v1

    .line 358
    :goto_11d
    if-eqz p2, :cond_15e

    .line 360
    :try_start_11f
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_125

    move-object p2, v0

    .line 363
    .end local v0           #factoryClassName:Ljava/lang/String;
    .local p2, factoryClassName:Ljava/lang/String;
    goto/16 :goto_9c

    .restart local v0       #factoryClassName:Ljava/lang/String;
    .local p2, fis:Ljava/io/FileInputStream;
    :catch_125
    move-exception p2

    .end local p2           #fis:Ljava/io/FileInputStream;
    move-object p2, v0

    .end local v0           #factoryClassName:Ljava/lang/String;
    .local p2, factoryClassName:Ljava/lang/String;
    goto/16 :goto_9c

    .line 358
    .restart local v0       #factoryClassName:Ljava/lang/String;
    .local p2, fis:Ljava/io/FileInputStream;
    :catchall_129
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    .end local p1           #propertiesFilename:Ljava/lang/String;
    .end local p2           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    :goto_12c
    if-eqz p0, :cond_131

    .line 360
    :try_start_12e
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_13d

    .line 363
    .end local p0           #fis:Ljava/io/FileInputStream;
    :cond_131
    :goto_131
    throw p1

    .line 374
    .end local v0           #factoryClassName:Ljava/lang/String;
    .local p0, factoryId:Ljava/lang/String;
    .restart local p1       #propertiesFilename:Ljava/lang/String;
    .local p2, factoryClassName:Ljava/lang/String;
    :cond_132
    invoke-static {p0}, Lorg/apache/xml/serializer/ObjectFactory;->findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_21

    .line 337
    .restart local v0       #factoryClassName:Ljava/lang/String;
    .local v1, loadProperties:Z
    .local p2, fis:Ljava/io/FileInputStream;
    :catch_138
    move-exception v2

    goto/16 :goto_91

    .end local v1           #loadProperties:Z
    .end local p2           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    .local p1, loadProperties:Z
    :catch_13b
    move-exception v0

    goto :goto_fa

    .line 363
    .end local p1           #loadProperties:Z
    :catch_13d
    move-exception p0

    goto :goto_131

    .line 358
    .local v1, fis:Ljava/io/FileInputStream;
    .local p0, factoryId:Ljava/lang/String;
    .local p1, propertiesFilename:Ljava/lang/String;
    :catchall_13f
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_12c

    .line 351
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .local p0, factoryId:Ljava/lang/String;
    :catch_143
    move-exception p2

    move-object p2, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local p2       #fis:Ljava/io/FileInputStream;
    goto :goto_11d

    .line 340
    .local v1, loadProperties:Z
    :catchall_146
    move-exception p0

    move p1, v1

    .end local v1           #loadProperties:Z
    .local p1, loadProperties:Z
    move-object v10, p2

    .end local p2           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    move-object p2, p0

    move-object p0, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_fc

    .restart local v1       #loadProperties:Z
    .local p0, factoryId:Ljava/lang/String;
    .local p1, propertiesFilename:Ljava/lang/String;
    .restart local p2       #fis:Ljava/io/FileInputStream;
    :catchall_14c
    move-exception p0

    move p1, v1

    .end local v1           #loadProperties:Z
    .local p1, loadProperties:Z
    move-object v10, p2

    .end local p2           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    move-object p2, p0

    move-object p0, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_fc

    .line 332
    .restart local v1       #loadProperties:Z
    .local p0, factoryId:Ljava/lang/String;
    .local p1, propertiesFilename:Ljava/lang/String;
    .restart local p2       #fis:Ljava/io/FileInputStream;
    :catchall_152
    move-exception p0

    move p1, v1

    .end local v1           #loadProperties:Z
    .local p1, loadProperties:Z
    move-object v10, p2

    .end local p2           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    move-object p2, p0

    move-object p0, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_f5

    .line 287
    .local v2, propertiesFileExists:Z
    .local p0, factoryId:Ljava/lang/String;
    .local p1, propertiesFilename:Ljava/lang/String;
    .local p2, propertiesFile:Ljava/io/File;
    :catch_158
    move-exception v1

    move-object v10, v1

    move-object v1, p2

    .end local p2           #propertiesFile:Ljava/io/File;
    .local v1, propertiesFile:Ljava/io/File;
    move-object p2, v10

    goto/16 :goto_c2

    .end local v1           #propertiesFile:Ljava/io/File;
    .end local v2           #propertiesFileExists:Z
    :cond_15e
    move-object p2, v0

    .end local v0           #factoryClassName:Ljava/lang/String;
    .local p2, factoryClassName:Ljava/lang/String;
    goto/16 :goto_9c
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .registers 9
    .parameter "className"
    .parameter "cl"
    .parameter "doFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 458
    .local v1, providerClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, instance:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_28} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_4a

    .line 461
    return-object v0

    .line 462
    .end local v0           #instance:Ljava/lang/Object;
    .end local v1           #providerClass:Ljava/lang/Class;
    :catch_29
    move-exception v3

    move-object v2, v3

    .line 463
    .local v2, x:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 465
    .end local v2           #x:Ljava/lang/ClassNotFoundException;
    :catch_4a
    move-exception v3

    move-object v2, v3

    .line 466
    .local v2, x:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
