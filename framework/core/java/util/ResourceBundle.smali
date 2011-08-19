.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$SimpleControl;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$MissingBundle;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/util/ResourceBundle; = null

.field private static final MISSINGBASE:Ljava/util/ResourceBundle; = null

.field private static final UNDER_SCORE:Ljava/lang/String; = "_"

.field private static final cache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cacheLocale:Ljava/util/Locale;


# instance fields
.field private lastLoadTime:J

.field private locale:Ljava/util/Locale;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    .line 111
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/ResourceBundle;->lastLoadTime:J

    .line 123
    return-void
.end method

.method static synthetic access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public static clearCache()V
    .registers 2

    .prologue
    .line 613
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-void
.end method

.method public static clearCache(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "loader"

    .prologue
    .line 617
    if-nez p0, :cond_8

    .line 618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 620
    :cond_8
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public static getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 3
    .parameter "bundleName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 137
    .local v0, classLoader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_a

    .line 138
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 140
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 4
    .parameter "bundleName"
    .parameter "locale"

    .prologue
    .line 156
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 157
    .local v0, classLoader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_a

    .line 158
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 160
    :cond_a
    invoke-static {p0, p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 7
    .parameter "bundleName"
    .parameter "locale"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p2, :cond_4

    if-nez p0, :cond_a

    .line 215
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 217
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 218
    .local v1, defaultLocale:Ljava/util/Locale;
    sget-object v2, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 219
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 220
    sput-object v1, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    .line 222
    :cond_1d
    const/4 v0, 0x0

    .line 223
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 224
    const/4 v2, 0x0

    invoke-static {v2, p0, p1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 226
    :cond_29
    if-nez v0, :cond_50

    .line 227
    const/4 v2, 0x1

    invoke-static {v2, p0, v1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 228
    if-nez v0, :cond_50

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    move-result-object v2

    throw v2

    .line 232
    :cond_50
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 18
    .parameter "baseName"
    .parameter "targetLocale"
    .parameter "loader"
    .parameter "control"

    .prologue
    .line 304
    const/4 v6, 0x0

    .line 305
    .local v6, expired:Z
    move-object/from16 v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, bundleName:Ljava/lang/String;
    if-eqz p2, :cond_6c

    move-object/from16 v7, p2

    .line 307
    .local v7, cacheKey:Ljava/lang/Object;
    :goto_d
    invoke-static {v7}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    move-result-object v9

    .line 308
    .local v9, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cacheKey:Ljava/lang/Object;
    check-cast v7, Ljava/util/ResourceBundle;

    .line 309
    .local v7, result:Ljava/util/ResourceBundle;
    if-eqz v7, :cond_72

    .line 310
    move-object/from16 v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v10

    .line 311
    .local v10, time:J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_38

    const-wide/16 v12, -0x2

    cmp-long v12, v10, v12

    if-eqz v12, :cond_38

    iget-wide v12, v7, Ljava/util/ResourceBundle;->lastLoadTime:J

    add-long/2addr v10, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .end local v10           #time:J
    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_71

    .line 313
    :cond_38
    sget-object p0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    .end local p0
    if-ne p0, v7, :cond_6f

    .line 314
    new-instance p0, Ljava/util/MissingResourceException;

    const/16 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p2
    .end local p3
    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v6, 0x5f

    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v6           #expired:Z
    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 306
    .end local v7           #result:Ljava/util/ResourceBundle;
    .end local v9           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .restart local v6       #expired:Z
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_6c
    const-string v7, "null"

    goto :goto_d

    .end local p0
    .restart local v7       #result:Ljava/util/ResourceBundle;
    .restart local v9       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_6f
    move-object p0, v7

    .line 328
    .end local p1
    :goto_70
    return-object p0

    .line 319
    .restart local p0
    .restart local p1
    :cond_71
    const/4 v6, 0x1

    .line 322
    :cond_72
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v6

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object p0

    .line 325
    .local p0, ret:Ljava/util/ResourceBundle;
    if-eqz p0, :cond_8a

    .line 326
    invoke-virtual {v9, v8, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .end local p1
    iput-wide p1, p0, Ljava/util/ResourceBundle;->lastLoadTime:J

    goto :goto_70

    .line 330
    .restart local p1
    :cond_8a
    sget-object p0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    .end local p0           #ret:Ljava/util/ResourceBundle;
    invoke-virtual {v9, v8, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance p0, Ljava/util/MissingResourceException;

    const/16 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p2
    .end local p3
    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v6, 0x5f

    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v6           #expired:Z
    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 4
    .parameter "baseName"
    .parameter "targetLocale"
    .parameter "control"

    .prologue
    .line 270
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 4
    .parameter "baseName"
    .parameter "control"

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 274
    new-instance v0, Ljava/util/ResourceBundle$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;
    .registers 4
    .parameter "cacheKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    sget-object v1, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 558
    :try_start_3
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 559
    .local v0, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    if-nez v0, :cond_17

    .line 560
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 561
    .restart local v0       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_17
    monitor-exit v1

    return-object v0

    .line 564
    .end local v0           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private static handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 11
    .parameter "loadBase"
    .parameter "base"
    .parameter "locale"
    .parameter "loader"

    .prologue
    .line 482
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, localeName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v3, p1

    .line 486
    .end local v1           #localeName:Ljava/lang/String;
    .local v3, bundleName:Ljava/lang/String;
    :goto_b
    if-eqz p3, :cond_39

    move-object v1, p3

    .line 487
    .local v1, cacheKey:Ljava/lang/Object;
    :goto_e
    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    move-result-object v4

    .line 488
    .local v4, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cacheKey:Ljava/lang/Object;
    check-cast v1, Ljava/util/ResourceBundle;

    .line 489
    .local v1, cached:Ljava/util/ResourceBundle;
    if-eqz v1, :cond_53

    .line 490
    sget-object v2, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    if-ne v1, v2, :cond_3c

    .line 491
    const/4 p0, 0x0

    .line 553
    .end local v1           #cached:Ljava/util/ResourceBundle;
    .end local p0
    .end local p1
    .end local p2
    :goto_1f
    return-object p0

    .line 483
    .end local v3           #bundleName:Ljava/lang/String;
    .end local v4           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .local v1, localeName:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #localeName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_b

    .line 486
    .restart local v3       #bundleName:Ljava/lang/String;
    :cond_39
    const-string v1, "null"

    goto :goto_e

    .line 492
    .local v1, cached:Ljava/util/ResourceBundle;
    .restart local v4       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_3c
    sget-object v2, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    if-ne v1, v2, :cond_51

    .line 493
    if-nez p0, :cond_44

    .line 494
    const/4 p0, 0x0

    goto :goto_1f

    .line 496
    :cond_44
    invoke-static {p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p2

    .line 497
    .local p2, newLocale:Ljava/util/Locale;
    if-nez p2, :cond_4c

    .line 498
    const/4 p0, 0x0

    goto :goto_1f

    .line 500
    :cond_4c
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    goto :goto_1f

    .local p2, locale:Ljava/util/Locale;
    :cond_51
    move-object p0, v1

    .line 502
    goto :goto_1f

    .line 505
    :cond_53
    const/4 v1, 0x0

    .line 507
    .local v1, bundle:Ljava/util/ResourceBundle;
    const/4 v2, 0x1

    :try_start_55
    invoke-static {v3, v2, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 508
    .local v2, bundleClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/ResourceBundle;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 509
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bundleClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v2

    check-cast v0, Ljava/util/ResourceBundle;

    move-object v1, v0
    :try_end_69
    .catch Ljava/lang/LinkageError; {:try_start_55 .. :try_end_69} :catch_86
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_69} :catch_89

    :cond_69
    move-object v2, v1

    .line 515
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local v2, bundle:Ljava/util/ResourceBundle;
    :goto_6a
    if-eqz v2, :cond_8c

    .line 516
    invoke-direct {v2, p2}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    move-object v1, v2

    .line 533
    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    :goto_70
    invoke-static {p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p2

    .line 534
    .local p2, strippedLocale:Ljava/util/Locale;
    if-eqz v1, :cond_d4

    .line 535
    if-eqz p2, :cond_81

    .line 536
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    .line 537
    .local p0, parent:Ljava/util/ResourceBundle;
    if-eqz p0, :cond_81

    .line 538
    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 541
    .end local p0           #parent:Ljava/util/ResourceBundle;
    :cond_81
    invoke-virtual {v4, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    .line 542
    goto :goto_1f

    .line 511
    .local p0, loadBase:Z
    .local p2, locale:Ljava/util/Locale;
    :catch_86
    move-exception v2

    move-object v2, v1

    .line 513
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .restart local v2       #bundle:Ljava/util/ResourceBundle;
    goto :goto_6a

    .line 512
    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    :catch_89
    move-exception v2

    move-object v2, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .restart local v2       #bundle:Ljava/util/ResourceBundle;
    goto :goto_6a

    .line 518
    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".properties"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, fileName:Ljava/lang/String;
    if-eqz p3, :cond_c1

    invoke-virtual {p3, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .end local v1           #fileName:Ljava/lang/String;
    move-object v5, v1

    .line 522
    .local v5, stream:Ljava/io/InputStream;
    :goto_ae
    if-eqz v5, :cond_102

    .line 524
    :try_start_b0
    new-instance v1, Ljava/util/PropertyResourceBundle;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_cd
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_ba} :catch_c7

    .line 525
    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .local v1, bundle:Ljava/util/ResourceBundle;
    :try_start_ba
    invoke-direct {v1, p2}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_fc
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_100

    .line 528
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_70

    .line 519
    .end local v5           #stream:Ljava/io/InputStream;
    .local v1, fileName:Ljava/lang/String;
    .restart local v2       #bundle:Ljava/util/ResourceBundle;
    :cond_c1
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v5, v1

    goto :goto_ae

    .line 526
    .end local v1           #fileName:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/InputStream;
    :catch_c7
    move-exception v1

    move-object v1, v2

    .line 528
    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .local v1, bundle:Ljava/util/ResourceBundle;
    :goto_c9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_70

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .restart local v2       #bundle:Ljava/util/ResourceBundle;
    :catchall_cd
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .end local p1
    .local p0, bundle:Ljava/util/ResourceBundle;
    :goto_d0
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 545
    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local p0, loadBase:Z
    .restart local p1
    .local p2, strippedLocale:Ljava/util/Locale;
    :cond_d4
    if-eqz p2, :cond_ee

    if-nez p0, :cond_e2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ee

    .line 546
    :cond_e2
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p1

    .line 547
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p1, bundle:Ljava/util/ResourceBundle;
    if-eqz p1, :cond_ef

    .line 548
    invoke-virtual {v4, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, p1

    .line 549
    goto/16 :goto_1f

    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local p1, base:Ljava/lang/String;
    :cond_ee
    move-object p1, v1

    .line 552
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p1, bundle:Ljava/util/ResourceBundle;
    :cond_ef
    if-eqz p0, :cond_f9

    sget-object p0, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    .end local p0           #loadBase:Z
    :goto_f3
    invoke-virtual {v4, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 p0, 0x0

    goto/16 :goto_1f

    .line 552
    .restart local p0       #loadBase:Z
    :cond_f9
    sget-object p0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    goto :goto_f3

    .line 528
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .restart local v5       #stream:Ljava/io/InputStream;
    .local p1, base:Ljava/lang/String;
    .local p2, locale:Ljava/util/Locale;
    :catchall_fc
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    goto :goto_d0

    .line 526
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local p0, loadBase:Z
    :catch_100
    move-exception v2

    goto :goto_c9

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .restart local v2       #bundle:Ljava/util/ResourceBundle;
    :cond_102
    move-object v1, v2

    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    goto/16 :goto_70
.end method

.method private static missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;
    .registers 5
    .parameter "className"
    .parameter "key"

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, detail:Ljava/lang/String;
    new-instance v1, Ljava/util/MissingResourceException;

    invoke-direct {v1, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .registers 24
    .parameter "baseName"
    .parameter "targetLocale"
    .parameter "loader"
    .parameter "control"
    .parameter "expired"
    .parameter "result"

    .prologue
    .line 338
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v16

    .line 339
    .local v16, locales:Ljava/util/List;,"Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v16, :cond_12

    .line 340
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 342
    .restart local p0
    :cond_12
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 343
    .local v13, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    if-eq v3, v13, :cond_26

    sget-object v3, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    if-eq v3, v13, :cond_26

    sget-object v3, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    if-ne v3, v13, :cond_2c

    .line 346
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 348
    .restart local p0
    :cond_2c
    const/4 v5, 0x0

    .line 349
    .local v5, ret:Ljava/util/ResourceBundle;
    const/4 v4, 0x0

    .line 350
    .local v4, currentBundle:Ljava/util/ResourceBundle;
    const/4 v3, 0x0

    .line 351
    .local v3, bundle:Ljava/util/ResourceBundle;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    move-object v6, v5

    .end local v5           #ret:Ljava/util/ResourceBundle;
    .end local v14           #i$:Ljava/util/Iterator;
    .local v6, ret:Ljava/util/ResourceBundle;
    :goto_34
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 352
    .local v5, locale:Ljava/util/Locale;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    move-object v11, v3

    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .local v11, bundle:Ljava/util/ResourceBundle;
    move-object v12, v4

    .end local v4           #currentBundle:Ljava/util/ResourceBundle;
    .local v12, currentBundle:Ljava/util/ResourceBundle;
    move-object/from16 v17, v6

    .end local v6           #ret:Ljava/util/ResourceBundle;
    .local v17, ret:Ljava/util/ResourceBundle;
    :goto_48
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 354
    .local v6, format:Ljava/lang/String;
    if-eqz p4, :cond_7f

    .line 355
    :try_start_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v8

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_6f} :catch_8e
    .catch Ljava/lang/InstantiationException; {:try_start_56 .. :try_end_6f} :catch_91
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6f} :catch_94

    move-result-object v3

    .line 375
    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    :goto_70
    if-eqz v3, :cond_df

    .line 376
    if-eqz v12, :cond_97

    .line 377
    invoke-virtual {v12, v3}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 378
    move-object v4, v3

    .end local v12           #currentBundle:Ljava/util/ResourceBundle;
    .restart local v4       #currentBundle:Ljava/util/ResourceBundle;
    move-object/from16 v6, v17

    .line 386
    .end local v17           #ret:Ljava/util/ResourceBundle;
    .local v6, ret:Ljava/util/ResourceBundle;
    :goto_7a
    if-eqz v3, :cond_9c

    move-object v5, v6

    .end local v6           #ret:Ljava/util/ResourceBundle;
    .local v5, ret:Ljava/util/ResourceBundle;
    :goto_7d
    move-object v6, v5

    .line 387
    .end local v5           #ret:Ljava/util/ResourceBundle;
    .restart local v6       #ret:Ljava/util/ResourceBundle;
    goto :goto_34

    .line 362
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .end local v4           #currentBundle:Ljava/util/ResourceBundle;
    .local v5, locale:Ljava/util/Locale;
    .local v6, format:Ljava/lang/String;
    .restart local v11       #bundle:Ljava/util/ResourceBundle;
    .restart local v12       #currentBundle:Ljava/util/ResourceBundle;
    .restart local v17       #ret:Ljava/util/ResourceBundle;
    :cond_7f
    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    :try_start_86
    invoke-virtual/range {v3 .. v8}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_89} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_86 .. :try_end_89} :catch_8e
    .catch Ljava/lang/InstantiationException; {:try_start_86 .. :try_end_89} :catch_91
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_94

    move-result-object v3

    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    goto :goto_70

    .line 364
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v11       #bundle:Ljava/util/ResourceBundle;
    :catch_8b
    move-exception v3

    move-object v3, v11

    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    goto :goto_70

    .line 368
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v11       #bundle:Ljava/util/ResourceBundle;
    :catch_8e
    move-exception v3

    move-object v3, v11

    .line 374
    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    goto :goto_70

    .line 370
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v11       #bundle:Ljava/util/ResourceBundle;
    :catch_91
    move-exception v3

    move-object v3, v11

    .line 374
    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    goto :goto_70

    .line 372
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v11       #bundle:Ljava/util/ResourceBundle;
    :catch_94
    move-exception v3

    move-object v3, v11

    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    goto :goto_70

    .line 380
    :cond_97
    if-nez v17, :cond_df

    .line 381
    move-object v6, v3

    .line 382
    .end local v17           #ret:Ljava/util/ResourceBundle;
    .local v6, ret:Ljava/util/ResourceBundle;
    move-object v4, v6

    .end local v12           #currentBundle:Ljava/util/ResourceBundle;
    .restart local v4       #currentBundle:Ljava/util/ResourceBundle;
    goto :goto_7a

    :cond_9c
    move-object v11, v3

    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v11       #bundle:Ljava/util/ResourceBundle;
    move-object v12, v4

    .end local v4           #currentBundle:Ljava/util/ResourceBundle;
    .restart local v12       #currentBundle:Ljava/util/ResourceBundle;
    move-object/from16 v17, v6

    .line 387
    .end local v6           #ret:Ljava/util/ResourceBundle;
    .restart local v17       #ret:Ljava/util/ResourceBundle;
    goto :goto_48

    .line 392
    .end local v5           #locale:Ljava/util/Locale;
    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .end local v12           #currentBundle:Ljava/util/ResourceBundle;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #ret:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    .restart local v4       #currentBundle:Ljava/util/ResourceBundle;
    .restart local v6       #ret:Ljava/util/ResourceBundle;
    :cond_a1
    if-eqz v6, :cond_c1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .end local v3           #bundle:Ljava/util/ResourceBundle;
    invoke-virtual {v6}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .end local v4           #currentBundle:Ljava/util/ResourceBundle;
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    .line 395
    :cond_c1
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v8

    .line 396
    .local v8, nextLocale:Ljava/util/Locale;
    if-eqz v8, :cond_dc

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    .line 397
    invoke-static/range {v7 .. v12}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object p0

    .line 402
    .end local v6           #ret:Ljava/util/ResourceBundle;
    .end local v8           #nextLocale:Ljava/util/Locale;
    .local p0, ret:Ljava/util/ResourceBundle;
    :goto_db
    return-object p0

    .restart local v6       #ret:Ljava/util/ResourceBundle;
    .local p0, baseName:Ljava/lang/String;
    :cond_dc
    move-object/from16 p0, v6

    .end local v6           #ret:Ljava/util/ResourceBundle;
    .local p0, ret:Ljava/util/ResourceBundle;
    goto :goto_db

    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    .restart local v5       #locale:Ljava/util/Locale;
    .local v6, format:Ljava/lang/String;
    .restart local v12       #currentBundle:Ljava/util/ResourceBundle;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #ret:Ljava/util/ResourceBundle;
    .local p0, baseName:Ljava/lang/String;
    :cond_df
    move-object v4, v12

    .end local v12           #currentBundle:Ljava/util/ResourceBundle;
    .restart local v4       #currentBundle:Ljava/util/ResourceBundle;
    move-object/from16 v6, v17

    .end local v17           #ret:Ljava/util/ResourceBundle;
    .local v6, ret:Ljava/util/ResourceBundle;
    goto :goto_7a

    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .end local v4           #currentBundle:Ljava/util/ResourceBundle;
    .end local v6           #ret:Ljava/util/ResourceBundle;
    .restart local v11       #bundle:Ljava/util/ResourceBundle;
    .restart local v12       #currentBundle:Ljava/util/ResourceBundle;
    .restart local v17       #ret:Ljava/util/ResourceBundle;
    :cond_e3
    move-object v3, v11

    .end local v11           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    move-object v4, v12

    .end local v12           #currentBundle:Ljava/util/ResourceBundle;
    .restart local v4       #currentBundle:Ljava/util/ResourceBundle;
    move-object/from16 v5, v17

    .end local v17           #ret:Ljava/util/ResourceBundle;
    .local v5, ret:Ljava/util/ResourceBundle;
    goto :goto_7d
.end method

.method private setLocale(Ljava/util/Locale;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 609
    iput-object p1, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 610
    return-void
.end method

.method private static strip(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 5
    .parameter "locale"

    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, variant:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 597
    const-string v2, ""

    .line 605
    :goto_14
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-object v3

    .line 598
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 599
    const-string v0, ""

    goto :goto_14

    .line 600
    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 601
    const-string v1, ""

    goto :goto_14

    .line 603
    :cond_2c
    const/4 v3, 0x0

    goto :goto_19
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 624
    if-nez p1, :cond_8

    .line 625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 627
    :cond_8
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "key"

    .prologue
    .line 436
    move-object v2, p0

    .line 438
    .local v2, theParent:Ljava/util/ResourceBundle;
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, result:Ljava/lang/Object;
    if-eqz v1, :cond_8

    .line 440
    return-object v1

    .line 442
    :cond_8
    move-object v0, v2

    .line 443
    .local v0, last:Ljava/util/ResourceBundle;
    iget-object v2, v2, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 444
    if-nez v2, :cond_1

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    move-result-object v3

    throw v3
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 641
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v2, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 644
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 647
    .end local v1           #key:Ljava/lang/String;
    :cond_23
    return-object v2
.end method

.method public keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 632
    .local v1, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 633
    .local v0, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 634
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 636
    :cond_17
    return-object v1
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 585
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 586
    return-void
.end method
