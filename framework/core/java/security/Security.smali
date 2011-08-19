.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$SecurityDoor;
    }
.end annotation


# static fields
.field private static final secprops:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    .line 54
    new-instance v0, Ljava/security/Security$1;

    invoke-direct {v0}, Ljava/security/Security$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method static synthetic access$000()Ljava/util/Properties;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 44
    invoke-static {}, Ljava/security/Security;->registerDefaultProviders()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 44
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .registers 2
    .parameter "provider"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "algName"
    .parameter "propName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 148
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v5, v7

    .line 164
    :goto_6
    return-object v5

    .line 152
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, prop:Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    .line 155
    .local v4, providers:[Ljava/security/Provider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    array-length v5, v4

    if-ge v1, v5, :cond_4e

    .line 156
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 157
    .local v0, e:Ljava/util/Enumeration;
    :cond_32
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 158
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, pname:Ljava/lang/String;
    invoke-static {v3, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 160
    aget-object v5, v4, v1

    invoke-virtual {v5, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 155
    .end local v2           #pname:Ljava/lang/String;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .end local v0           #e:Ljava/util/Enumeration;
    :cond_4e
    move-object v5, v7

    .line 164
    goto :goto_6
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 489
    .local v3, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    .line 502
    :cond_7
    return-object v3

    .line 493
    :cond_8
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    .line 494
    .local v2, p:[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 495
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 497
    .local v4, s:Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 498
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 494
    .end local v4           #s:Ljava/security/Provider$Service;
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"

    .prologue
    .line 435
    if-nez p0, :cond_a

    .line 436
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 439
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_26

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 442
    :cond_26
    sget-object v2, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, property:Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 444
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_32
    return-object v0
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 3
    .parameter "name"

    .prologue
    .line 291
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProviders()[Ljava/security/Provider;
    .registers 2

    .prologue
    .line 278
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .registers 5
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    .line 318
    if-nez p0, :cond_9

    .line 319
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 321
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 322
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 324
    :cond_15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v0, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 326
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_29

    if-nez v1, :cond_2f

    .line 327
    :cond_29
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 329
    :cond_2f
    if-ge v1, v3, :cond_3b

    .line 330
    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_36
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v2

    return-object v2

    .line 332
    :cond_3b
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36
.end method

.method public static declared-synchronized getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v7, Ljava/security/Security;

    monitor-enter v7

    if-nez p0, :cond_e

    .line 363
    :try_start_5
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0           #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 362
    :catchall_b
    move-exception p0

    monitor-exit v7

    throw p0

    .line 365
    .restart local p0       #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    :try_start_e
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_b

    move-result v0

    if-eqz v0, :cond_17

    .line 366
    const/4 p0, 0x0

    .line 416
    .end local p0           #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_15
    monitor-exit v7

    return-object p0

    .line 368
    .restart local p0       #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    :try_start_17
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProvidersList()Ljava/util/List;

    move-result-object v4

    .line 369
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/Provider;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 371
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_c5

    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 373
    .local p0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    .local v3, key:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 375
    .local v6, val:Ljava/lang/String;
    const/4 p0, 0x0

    .line 376
    .local p0, attribute:Ljava/lang/String;
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 377
    .local v0, i:I
    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 378
    .local v2, j:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_51

    .line 379
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #attribute:Ljava/lang/String;
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0

    .line 381
    .restart local p0       #attribute:Ljava/lang/String;
    :cond_51
    const/4 v5, -0x1

    if-ne v0, v5, :cond_60

    .line 382
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #i:I
    if-eqz v0, :cond_dc

    .line 383
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #attribute:Ljava/lang/String;
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0

    .line 386
    .restart local v0       #i:I
    .restart local p0       #attribute:Ljava/lang/String;
    :cond_60
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #attribute:Ljava/lang/String;
    if-nez p0, :cond_6c

    .line 387
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0

    .line 389
    :cond_6c
    add-int/lit8 p0, v0, 0x1

    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 390
    .restart local p0       #attribute:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_82

    .line 391
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #attribute:Ljava/lang/String;
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0

    .line 393
    .restart local p0       #attribute:Ljava/lang/String;
    :cond_82
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v3           #key:Ljava/lang/String;
    .local v0, key:Ljava/lang/String;
    move-object v9, p0

    .end local p0           #attribute:Ljava/lang/String;
    .local v9, attribute:Ljava/lang/String;
    move-object p0, v0

    .end local v0           #key:Ljava/lang/String;
    .local p0, key:Ljava/lang/String;
    move-object v0, v9

    .line 395
    .end local v9           #attribute:Ljava/lang/String;
    .local v0, attribute:Ljava/lang/String;
    :goto_8a
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, serv:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v2           #j:I
    move-result-object p0

    .line 397
    .local p0, alg:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a7

    .line 398
    :cond_a1
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #alg:Ljava/lang/String;
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0

    .line 401
    .restart local p0       #alg:Ljava/lang/String;
    :cond_a7
    const/4 v2, 0x0

    .local v2, k:I
    :goto_a8
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_ab
    .catchall {:try_start_17 .. :try_end_ab} :catchall_b

    move-result v3

    if-ge v2, v3, :cond_23

    .line 403
    :try_start_ae
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ae .. :try_end_b4} :catch_c2

    .line 407
    .local v3, p:Ljava/security/Provider;
    :try_start_b4
    invoke-virtual {v3, v5, p0, v0, v6}, Ljava/security/Provider;->implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_bf

    .line 408
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v2, v2, -0x1

    .line 401
    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 404
    .end local v3           #p:Ljava/security/Provider;
    :catch_c2
    move-exception p0

    .line 405
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_23

    .line 413
    .end local v0           #attribute:Ljava/lang/String;
    .end local v2           #k:I
    .end local v5           #serv:Ljava/lang/String;
    .end local v6           #val:Ljava/lang/String;
    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_c5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_d9

    .line 414
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Provider;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Provider;
    :try_end_d7
    .catchall {:try_start_b4 .. :try_end_d7} :catchall_b

    goto/16 :goto_15

    .line 416
    :cond_d9
    const/4 p0, 0x0

    goto/16 :goto_15

    .local v2, j:I
    .local v3, key:Ljava/lang/String;
    .restart local v6       #val:Ljava/lang/String;
    .local p0, attribute:Ljava/lang/String;
    :cond_dc
    move-object v0, p0

    .end local p0           #attribute:Ljava/lang/String;
    .restart local v0       #attribute:Ljava/lang/String;
    move-object p0, v3

    .end local v3           #key:Ljava/lang/String;
    .local p0, key:Ljava/lang/String;
    goto :goto_8a
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .registers 7
    .parameter "provider"
    .parameter "position"

    .prologue
    .line 194
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 195
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_23

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertProvider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 198
    :cond_23
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_39

    move-result-object v3

    if-eqz v3, :cond_30

    .line 199
    const/4 v3, -0x1

    .line 203
    :goto_2e
    monitor-exit v2

    return v3

    .line 201
    :cond_30
    :try_start_30
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/Services;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    .line 202
    .local v0, result:I
    invoke-static {}, Ljava/security/Security;->renumProviders()V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    move v3, v0

    .line 203
    goto :goto_2e

    .line 194
    .end local v0           #result:I
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_39
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static registerDefaultProviders()V
    .registers 3

    .prologue
    .line 128
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.1"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.2"

    const-string v2, "org.apache.harmony.security.provider.cert.DRLCertFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.3"

    const-string v2, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.4"

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.5"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 255
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3e

    move-result v3

    if-nez v3, :cond_d

    .line 269
    :cond_b
    :goto_b
    monitor-exit v2

    return-void

    .line 258
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 259
    .local v0, p:Ljava/security/Provider;
    if-eqz v0, :cond_b

    .line 262
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 263
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2f

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeProvider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 266
    :cond_2f
    invoke-virtual {v0}, Ljava/security/Provider;->getProviderNumber()I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->removeProvider(I)V

    .line 267
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    .line 268
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/security/Provider;->setProviderNumber(I)V
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3e

    goto :goto_b

    .line 255
    .end local v0           #p:Ljava/security/Provider;
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_3e
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static renumProviders()V
    .registers 4

    .prologue
    .line 511
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 512
    .local v1, p:[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 513
    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/security/Provider;->setProviderNumber(I)V

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 515
    :cond_12
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "datnum"

    .prologue
    .line 466
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 467
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProperty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 470
    :cond_1c
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-void
.end method
