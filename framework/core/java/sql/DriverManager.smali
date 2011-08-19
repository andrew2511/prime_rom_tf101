.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field private static final logPermission:Ljava/sql/SQLPermission;

.field private static loginTimeout:I

.field private static final theDrivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation
.end field

.field private static thePrintStream:Ljava/io/PrintStream;

.field private static thePrintWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setLog"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/sql/DriverManager;->logPermission:Ljava/sql/SQLPermission;

    .line 65
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    .line 66
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static checkLogSecurity()V
    .registers 2

    .prologue
    .line 402
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 403
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 405
    sget-object v1, Ljava/sql/DriverManager;->logPermission:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 407
    :cond_b
    return-void
.end method

.method public static deregisterDriver(Ljava/sql/Driver;)V
    .registers 4
    .parameter "driver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p0, :cond_3

    .line 131
    :goto_2
    return-void

    .line 124
    :cond_3
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 125
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 126
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling class not authorized to deregister JDBC driver"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_15
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_18
    sget-object v2, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1

    goto :goto_2

    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .registers 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .registers 5
    .parameter "url"
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 208
    .local v0, theProperties:Ljava/util/Properties;
    if-eqz p1, :cond_c

    .line 209
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    :cond_c
    if-eqz p2, :cond_13

    .line 212
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    :cond_13
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .registers 8
    .parameter "url"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v1, "08001"

    .line 170
    .local v1, sqlState:Ljava/lang/String;
    if-nez p0, :cond_c

    .line 171
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "The url cannot be null"

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_c
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v4

    .line 179
    :try_start_f
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Driver;

    .line 180
    .local v3, theDriver:Ljava/sql/Driver;
    invoke-interface {v3, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v2

    .line 181
    .local v2, theConnection:Ljava/sql/Connection;
    if-eqz v2, :cond_15

    .line 182
    monitor-exit v4

    return-object v2

    .line 185
    .end local v2           #theConnection:Ljava/sql/Connection;
    .end local v3           #theDriver:Ljava/sql/Driver;
    :cond_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_32

    .line 187
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "No suitable driver"

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v5

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v5
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .registers 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 232
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    sget-object v3, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v3

    .line 238
    :try_start_7
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 239
    .local v2, theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 241
    .local v1, theDriver:Ljava/sql/Driver;
    invoke-interface {v1, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 244
    monitor-exit v3

    return-object v1

    .line 247
    .end local v1           #theDriver:Ljava/sql/Driver;
    :cond_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_32

    .line 251
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "No suitable driver"

    const-string v5, "08001"

    invoke-direct {v3, v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 247
    .end local v2           #theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v4
.end method

.method public static getDrivers()Ljava/util/Enumeration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 269
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v4

    .line 274
    :try_start_7
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 275
    .local v3, theVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/sql/Driver;>;"
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 276
    .local v2, theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 277
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 278
    .local v1, theDriver:Ljava/sql/Driver;
    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 280
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 284
    .end local v1           #theDriver:Ljava/sql/Driver;
    .end local v2           #theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    .end local v3           #theVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/sql/Driver;>;"
    :catchall_28
    move-exception v5

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v5

    .line 283
    .restart local v2       #theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    .restart local v3       #theVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/sql/Driver;>;"
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    return-object v5
.end method

.method public static getLogStream()Ljava/io/PrintStream;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static getLogWriter()Ljava/io/PrintWriter;
    .registers 1

    .prologue
    .line 315
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getLoginTimeout()I
    .registers 1

    .prologue
    .line 293
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    return v0
.end method

.method private static isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z
    .registers 8
    .parameter "theObject"
    .parameter "theClassLoader"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 422
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v2, v4

    .line 437
    :goto_7
    return v2

    .line 426
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 429
    .local v1, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_19

    move-result-object v0

    .line 431
    .local v0, checkClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_1a

    move v2, v5

    .line 432
    goto :goto_7

    .line 434
    .end local v0           #checkClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_19
    move-exception v2

    :cond_1a
    move v2, v4

    .line 437
    goto :goto_7
.end method

.method private static loadInitialDrivers()V
    .registers 9

    .prologue
    .line 73
    new-instance v6, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v7, "jdbc.drivers"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    .local v4, theDriverList:Ljava/lang/String;
    if-nez v4, :cond_11

    .line 96
    :cond_10
    return-void

    .line 84
    :cond_11
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, theDriverNames:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1a
    if-ge v2, v3, :cond_10

    aget-object v1, v0, v2

    .line 89
    .local v1, element:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_1f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v1, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_26} :catch_29

    .line 86
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 92
    :catch_29
    move-exception v6

    goto :goto_26
.end method

.method public static println(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 326
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_f

    .line 327
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 337
    :cond_e
    :goto_e
    return-void

    .line 329
    :cond_f
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_e

    .line 330
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_e
.end method

.method public static registerDriver(Ljava/sql/Driver;)V
    .registers 3
    .parameter "driver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 352
    if-nez p0, :cond_8

    .line 353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 355
    :cond_8
    sget-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v0

    .line 356
    :try_start_b
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static setLogStream(Ljava/io/PrintStream;)V
    .registers 1
    .parameter "out"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Ljava/sql/DriverManager;->checkLogSecurity()V

    .line 382
    sput-object p0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    .line 383
    return-void
.end method

.method public static setLogWriter(Ljava/io/PrintWriter;)V
    .registers 1
    .parameter "out"

    .prologue
    .line 393
    invoke-static {}, Ljava/sql/DriverManager;->checkLogSecurity()V

    .line 394
    sput-object p0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    .line 395
    return-void
.end method

.method public static setLoginTimeout(I)V
    .registers 1
    .parameter "seconds"

    .prologue
    .line 367
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 368
    return-void
.end method
