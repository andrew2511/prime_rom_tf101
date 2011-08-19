.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field private static final lineSeparator:Ljava/lang/String;

.field static manager:Ljava/util/logging/LogManager;

.field private static final perm:Ljava/util/logging/LoggingPermission;


# instance fields
.field private listeners:Ljava/beans/PropertyChangeSupport;

.field private loggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 128
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/util/logging/LogManager;->getPrivilegedSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/logging/LogManager;->lineSeparator:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/logging/LoggingPermission;

    const-string v1, "control"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/LogManager;->perm:Ljava/util/logging/LoggingPermission;

    .line 162
    new-instance v0, Ljava/util/logging/LogManager$1;

    invoke-direct {v0}, Ljava/util/logging/LogManager$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    .line 200
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 201
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    .line 204
    new-instance v0, Ljava/util/logging/LogManager$2;

    invoke-direct {v0, p0}, Ljava/util/logging/LogManager$2;-><init>(Ljava/util/logging/LogManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method private addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .registers 15
    .parameter "logger"
    .parameter "name"

    .prologue
    const/16 v11, 0x2e

    .line 271
    const/4 v6, 0x0

    .line 274
    .local v6, parent:Ljava/util/logging/Logger;
    move-object v7, p2

    .line 275
    .local v7, parentName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .local v3, lastSeparator:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_1d

    .line 276
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 277
    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #parent:Ljava/util/logging/Logger;
    check-cast v6, Ljava/util/logging/Logger;

    .line 278
    .restart local v6       #parent:Ljava/util/logging/Logger;
    if-eqz v6, :cond_7c

    .line 279
    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 288
    :cond_1d
    :goto_1d
    if-nez v6, :cond_2e

    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #parent:Ljava/util/logging/Logger;
    check-cast v6, Ljava/util/logging/Logger;

    .restart local v6       #parent:Ljava/util/logging/Logger;
    if-eqz v6, :cond_2e

    .line 289
    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 294
    :cond_2e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, nameDot:Ljava/lang/String;
    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 296
    .local v0, allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    .line 297
    .local v1, child:Ljava/util/logging/Logger;
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v5

    .line 298
    .local v5, oldParent:Ljava/util/logging/Logger;
    if-ne v6, v5, :cond_49

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6b

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 301
    :cond_6b
    move-object v8, p1

    .line 302
    .local v8, thisLogger:Ljava/util/logging/Logger;
    new-instance v9, Ljava/util/logging/LogManager$3;

    invoke-direct {v9, p0, v1, v8}, Ljava/util/logging/LogManager$3;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 308
    if-eqz v5, :cond_49

    .line 310
    iget-object v9, v5, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_49

    .line 281
    .end local v0           #allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    .end local v1           #child:Ljava/util/logging/Logger;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #nameDot:Ljava/lang/String;
    .end local v5           #oldParent:Ljava/util/logging/Logger;
    .end local v8           #thisLogger:Ljava/util/logging/Logger;
    :cond_7c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".level"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_ae

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".handlers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 283
    :cond_ae
    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    .line 284
    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    goto/16 :goto_1d

    .line 314
    .restart local v0       #allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #nameDot:Ljava/lang/String;
    :cond_b7
    return-void
.end method

.method static getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "className"

    .prologue
    .line 412
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 413
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v3

    .line 421
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_c
    return-object v3

    .line 414
    :catch_d
    move-exception v3

    move-object v1, v3

    .line 416
    .local v1, e:Ljava/lang/Exception;
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 417
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_20

    move-result-object v3

    goto :goto_c

    .line 418
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_20
    move-exception v3

    move-object v2, v3

    .line 419
    .local v2, innerE:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 421
    const/4 v3, 0x0

    goto :goto_c
.end method

.method public static getLogManager()Ljava/util/logging/LogManager;
    .registers 1

    .prologue
    .line 342
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method public static getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .registers 1

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static getPrivilegedSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 402
    new-instance v0, Ljava/util/logging/LogManager$4;

    invoke-direct {v0, p0}, Ljava/util/logging/LogManager$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getSystemLineSeparator()Ljava/lang/String;
    .registers 1

    .prologue
    .line 222
    sget-object v0, Ljava/util/logging/LogManager;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized readConfigurationImpl(Ljava/io/InputStream;)V
    .registers 14
    .parameter "ins"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    .line 431
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v8, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 435
    iget-object v8, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Logger;

    .line 436
    .local v6, root:Ljava/util/logging/Logger;
    if-eqz v6, :cond_18

    .line 437
    invoke-virtual {v6, p0}, Ljava/util/logging/Logger;->setManager(Ljava/util/logging/LogManager;)V

    .line 441
    :cond_18
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, configs:Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 443
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v7, v2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v7, st:Ljava/util/StringTokenizer;
    :goto_29
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 445
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, configerName:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_29

    .line 430
    .end local v1           #configerName:Ljava/lang/String;
    .end local v2           #configs:Ljava/lang/String;
    .end local v6           #root:Ljava/util/logging/Logger;
    .end local v7           #st:Ljava/util/StringTokenizer;
    :catchall_37
    move-exception v8

    monitor-exit p0

    throw v8

    .line 451
    .restart local v2       #configs:Ljava/lang/String;
    .restart local v6       #root:Ljava/util/logging/Logger;
    :cond_3a
    :try_start_3a
    iget-object v8, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 452
    .local v0, allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Logger;

    .line 453
    .local v4, logger:Ljava/util/logging/Logger;
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".level"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, property:Ljava/lang/String;
    if-eqz v5, :cond_44

    .line 455
    invoke-static {v5}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_44

    .line 458
    .end local v4           #logger:Ljava/util/logging/Logger;
    .end local v5           #property:Ljava/lang/String;
    :cond_77
    iget-object v8, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_3a .. :try_end_7f} :catchall_37

    .line 459
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addLogger(Ljava/util/logging/Logger;)Z
    .registers 4
    .parameter "logger"

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1d

    move-result-object v1

    if-eqz v1, :cond_10

    .line 262
    const/4 v1, 0x0

    .line 267
    :goto_e
    monitor-exit p0

    return v1

    .line 264
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager;->addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->setManager(Ljava/util/logging/LogManager;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1d

    .line 267
    const/4 v1, 0x1

    goto :goto_e

    .line 260
    .end local v0           #name:Ljava/lang/String;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 521
    if-nez p1, :cond_8

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 524
    :cond_8
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 525
    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 526
    return-void
.end method

.method public checkAccess()V
    .registers 3

    .prologue
    .line 237
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 238
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    sget-object v1, Ljava/util/logging/LogManager;->perm:Ljava/util/logging/LoggingPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 240
    :cond_f
    return-void
.end method

.method public declared-synchronized getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .parameter "name"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLoggerNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 5
    .parameter "name"
    .parameter "resourceBundleName"

    .prologue
    .line 550
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 551
    .local v0, result:Ljava/util/logging/Logger;
    if-nez v0, :cond_f

    .line 552
    new-instance v0, Ljava/util/logging/Logger;

    .end local v0           #result:Ljava/util/logging/Logger;
    invoke-direct {v0, p1, p2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .restart local v0       #result:Ljava/util/logging/Logger;
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 555
    :cond_f
    monitor-exit p0

    return-object v0

    .line 550
    .end local v0           #result:Ljava/util/logging/Logger;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 353
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConfiguration()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const-string v5, "java.util.logging.config.class"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, configClassName:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_53

    .line 374
    :cond_e
    const-string v5, "java.util.logging.config.file"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, configFile:Ljava/lang/String;
    if-nez v1, :cond_41

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "logging.properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    :cond_41
    const/4 v3, 0x0

    .line 385
    .local v3, input:Ljava/io/InputStream;
    :try_start_42
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_61
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_54

    .end local v3           #input:Ljava/io/InputStream;
    .local v4, input:Ljava/io/InputStream;
    move-object v3, v4

    .line 393
    .end local v4           #input:Ljava/io/InputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    :cond_48
    :try_start_48
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v5}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_61

    .line 395
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 398
    .end local v1           #configFile:Ljava/lang/String;
    .end local v3           #input:Ljava/io/InputStream;
    :cond_53
    return-void

    .line 386
    .restart local v1       #configFile:Ljava/lang/String;
    .restart local v3       #input:Ljava/io/InputStream;
    :catch_54
    move-exception v5

    move-object v2, v5

    .line 388
    .local v2, exception:Ljava/io/IOException;
    :try_start_56
    const-class v5, Ljava/util/logging/LogManager;

    const-string v6, "logging.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 389
    if-nez v3, :cond_48

    .line 390
    throw v2
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_61

    .line 395
    .end local v2           #exception:Ljava/io/IOException;
    :catchall_61
    move-exception v5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
.end method

.method public readConfiguration(Ljava/io/InputStream;)V
    .registers 2
    .parameter "ins"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 478
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->readConfigurationImpl(Ljava/io/InputStream;)V

    .line 479
    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 539
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 540
    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 541
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 7

    .prologue
    .line 494
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 495
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 496
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 497
    .local v2, names:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 498
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 500
    .local v0, logger:Ljava/util/logging/Logger;
    if-eqz v0, :cond_f

    .line 501
    invoke-virtual {v0}, Ljava/util/logging/Logger;->reset()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    goto :goto_f

    .line 494
    .end local v0           #logger:Ljava/util/logging/Logger;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #names:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catchall_25
    move-exception v4

    monitor-exit p0

    throw v4

    .line 504
    .restart local v2       #names:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_28
    :try_start_28
    iget-object v4, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    .line 505
    .local v3, root:Ljava/util/logging/Logger;
    if-eqz v3, :cond_39

    .line 506
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_25

    .line 508
    :cond_39
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .registers 7
    .parameter "logger"
    .parameter "newLevel"

    .prologue
    .line 586
    monitor-enter p0

    :try_start_1
    iget v2, p1, Ljava/util/logging/Logger;->levelIntVal:I

    .line 587
    .local v2, previous:I
    iput-object p2, p1, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    .line 589
    if-nez p2, :cond_3a

    .line 590
    iget-object v3, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v3, :cond_33

    iget-object v3, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v3, v3, Ljava/util/logging/Logger;->levelIntVal:I

    :goto_f
    iput v3, p1, Ljava/util/logging/Logger;->levelIntVal:I

    .line 597
    :goto_11
    iget v3, p1, Ljava/util/logging/Logger;->levelIntVal:I

    if-eq v2, v3, :cond_41

    .line 598
    iget-object v3, p1, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    .line 599
    .local v0, child:Ljava/util/logging/Logger;
    iget-object v3, v0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    if-nez v3, :cond_1b

    .line 600
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    goto :goto_1b

    .line 586
    .end local v0           #child:Ljava/util/logging/Logger;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #previous:I
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    .line 590
    .restart local v2       #previous:I
    :cond_33
    :try_start_33
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    goto :goto_f

    .line 594
    :cond_3a
    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    iput v3, p1, Ljava/util/logging/Logger;->levelIntVal:I
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_30

    goto :goto_11

    .line 604
    :cond_41
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 4
    .parameter "logger"
    .parameter "newParent"

    .prologue
    .line 567
    monitor-enter p0

    :try_start_1
    iput-object p2, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 569
    iget-object v0, p1, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    if-nez v0, :cond_b

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    .line 572
    :cond_b
    iget-object v0, p2, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {p1}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 574
    monitor-exit p0

    return-void

    .line 567
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
