.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$PrivateSecurityManager;
    }
.end annotation


# static fields
.field private static final EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler; = null

.field private static final GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler; = null

.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final androidTag:Ljava/lang/String;

.field final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

.field private filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isNamed:Z

.field volatile levelIntVal:I

.field volatile levelObjVal:Ljava/util/logging/Level;

.field private volatile name:Ljava/lang/String;

.field private notifyParentHandlers:Z

.field parent:Ljava/util/logging/Logger;

.field private volatile resourceBundle:Ljava/util/ResourceBundle;

.field private volatile resourceBundleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 86
    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0}, Ljava/util/logging/Logger$1;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    .line 110
    new-instance v0, Ljava/util/logging/Logger;

    const-string v1, "global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "resourceBundleName"

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 156
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    .line 159
    iput-boolean v1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 165
    iput-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    .line 178
    sget-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    iput-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    .line 266
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 267
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    .line 269
    invoke-static {p1}, Ldalvik/system/DalvikLogging;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Ljava/util/logging/Logger;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .parameter "resourceBundleName"

    .prologue
    .line 373
    new-instance v1, Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .local v1, result:Ljava/util/logging/Logger;
    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/util/logging/Logger;->isNamed:Z

    .line 375
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 376
    .local v0, logManager:Ljava/util/logging/LogManager;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 377
    return-object v1
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .parameter "name"

    .prologue
    .line 415
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .parameter "name"
    .parameter "resourceBundleName"

    .prologue
    .line 435
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 437
    .local v0, result:Ljava/util/logging/Logger;
    invoke-direct {v0, p1}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    .line 438
    return-object v0
.end method

.method private declared-synchronized initResourceBundle(Ljava/lang/String;)V
    .registers 6
    .parameter "resourceBundleName"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    .line 389
    .local v0, current:Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_36

    move-result v1

    if-eqz v1, :cond_d

    .line 401
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 393
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource bundle name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is inconsistent with the existing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_36

    .line 387
    .end local v0           #current:Ljava/lang/String;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1

    .line 397
    .restart local v0       #current:Ljava/lang/String;
    :cond_39
    if-eqz p1, :cond_b

    .line 398
    :try_start_3b
    invoke-static {p1}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    .line 399
    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_36

    goto :goto_b
.end method

.method private internalIsLoggable(Ljava/util/logging/Level;)Z
    .registers 5
    .parameter "l"

    .prologue
    const/4 v2, 0x0

    .line 696
    iget v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 697
    .local v0, effectiveLevel:I
    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_d

    move v1, v2

    .line 701
    :goto_c
    return v1

    :cond_d
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_15

    const/4 v1, 0x1

    goto :goto_c

    :cond_15
    move v1, v2

    goto :goto_c
.end method

.method static loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 9
    .parameter "resourceBundleName"

    .prologue
    .line 285
    new-instance v5, Ljava/util/logging/Logger$2;

    invoke-direct {v5}, Ljava/util/logging/Logger$2;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 291
    .local v1, cl:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_17

    .line 293
    :try_start_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {p0, v5, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v5

    .line 334
    :goto_15
    return-object v5

    .line 295
    :catch_16
    move-exception v5

    .line 300
    :cond_17
    new-instance v5, Ljava/util/logging/Logger$3;

    invoke-direct {v5}, Ljava/util/logging/Logger$3;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cl:Ljava/lang/ClassLoader;
    check-cast v1, Ljava/lang/ClassLoader;

    .line 305
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2e

    .line 307
    :try_start_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {p0, v5, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_2b
    .catch Ljava/util/MissingResourceException; {:try_start_24 .. :try_end_2b} :catch_2d

    move-result-object v5

    goto :goto_15

    .line 309
    :catch_2d
    move-exception v5

    .line 314
    :cond_2e
    new-instance v5, Ljava/util/logging/Logger$4;

    invoke-direct {v5}, Ljava/util/logging/Logger$4;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    .line 322
    .local v2, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .local v3, i:I
    :goto_3a
    array-length v5, v2

    if-ge v3, v5, :cond_59

    .line 323
    move v4, v3

    .line 325
    .local v4, index:I
    :try_start_3e
    new-instance v5, Ljava/util/logging/Logger$5;

    invoke-direct {v5, v2, v4}, Ljava/util/logging/Logger$5;-><init>([Ljava/lang/Class;I)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v1, v0

    .line 331
    if-nez v1, :cond_50

    .line 322
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 334
    :cond_50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {p0, v5, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_57
    .catch Ljava/util/MissingResourceException; {:try_start_3e .. :try_end_57} :catch_79

    move-result-object v5

    goto :goto_15

    .line 340
    .end local v4           #index:I
    :cond_59
    new-instance v5, Ljava/util/MissingResourceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load the specified resource bundle \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, p0, v7}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 336
    .restart local v4       #index:I
    :catch_79
    move-exception v5

    goto :goto_4d
.end method

.method private setResourceBundle(Ljava/util/logging/LogRecord;)V
    .registers 5
    .parameter "record"

    .prologue
    .line 725
    move-object v0, p0

    .local v0, p:Ljava/util/logging/Logger;
    :goto_1
    if-eqz v0, :cond_f

    .line 726
    iget-object v1, v0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    .line 727
    .local v1, resourceBundleName:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 728
    iget-object v2, v0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 729
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 733
    .end local v1           #resourceBundleName:Ljava/lang/String;
    :cond_f
    return-void

    .line 725
    .restart local v1       #resourceBundleName:Ljava/lang/String;
    :cond_10
    iget-object v0, v0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_1
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 452
    if-nez p1, :cond_a

    .line 453
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_a
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_15

    .line 457
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 459
    :cond_15
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 461
    return-void
.end method

.method public config(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 940
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sourceClass"
    .parameter "sourceMethod"

    .prologue
    .line 746
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 756
    :goto_8
    return-void

    .line 750
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 751
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 754
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 755
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "param"

    .prologue
    .line 772
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 783
    :goto_8
    return-void

    .line 776
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 777
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 780
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 781
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 782
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "params"

    .prologue
    .line 801
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v4}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 820
    :goto_8
    return-void

    .line 805
    :cond_9
    const-string v1, "ENTRY"

    .line 806
    .local v1, msg:Ljava/lang/String;
    if-eqz p3, :cond_2e

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ENTRY"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .local v2, msgBuffer:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v4, p3

    if-ge v0, v4, :cond_2a

    .line 809
    const-string v4, " {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 811
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    .end local v0           #i:I
    .end local v2           #msgBuffer:Ljava/lang/StringBuilder;
    :cond_2e
    new-instance v3, Ljava/util/logging/LogRecord;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v3, v4, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 814
    .local v3, record:Ljava/util/logging/LogRecord;
    iget-object v4, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v3, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v3, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v3, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 818
    invoke-direct {p0, v3}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 819
    invoke-virtual {p0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sourceClass"
    .parameter "sourceMethod"

    .prologue
    .line 833
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 843
    :goto_8
    return-void

    .line 837
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 838
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 842
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "result"

    .prologue
    .line 858
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 869
    :goto_8
    return-void

    .line 862
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 863
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 866
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 867
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 868
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method public fine(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 951
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 962
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 973
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    sget-object v1, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/util/logging/Handler;

    return-object p0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .registers 2

    .prologue
    .line 605
    iget-boolean v0, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 929
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .registers 3
    .parameter "l"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 5
    .parameter "logLevel"
    .parameter "msg"

    .prologue
    .line 986
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 993
    :goto_6
    return-void

    .line 991
    :cond_7
    iget-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    iget-object v1, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    invoke-interface {v0, p0, v1, p1, p2}, Ldalvik/system/DalvikLogHandler;->publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "logLevel"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1016
    :goto_6
    return-void

    .line 1011
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1012
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1013
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1014
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1015
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "logLevel"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1063
    :goto_6
    return-void

    .line 1058
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1059
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1061
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1062
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "logLevel"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1039
    :goto_6
    return-void

    .line 1034
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1035
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1037
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1038
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .registers 12
    .parameter "record"

    .prologue
    .line 1081
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v9

    invoke-direct {p0, v9}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1109
    :cond_a
    return-void

    .line 1086
    :cond_b
    iget-object v3, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 1087
    .local v3, f:Ljava/util/logging/Filter;
    if-eqz v3, :cond_15

    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1094
    :cond_15
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 1095
    .local v0, allHandlers:[Ljava/util/logging/Handler;
    move-object v1, v0

    .local v1, arr$:[Ljava/util/logging/Handler;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1c
    if-ge v5, v6, :cond_26

    aget-object v2, v1, v5

    .line 1096
    .local v2, element:Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1095
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 1099
    .end local v2           #element:Ljava/util/logging/Handler;
    :cond_26
    move-object v7, p0

    .line 1100
    .local v7, temp:Ljava/util/logging/Logger;
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1101
    .local v8, theParent:Ljava/util/logging/Logger;
    :goto_29
    if-eqz v8, :cond_a

    invoke-virtual {v7}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1102
    invoke-virtual {v8}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    .line 1103
    .local v4, ha:[Ljava/util/logging/Handler;
    move-object v1, v4

    array-length v6, v1

    const/4 v5, 0x0

    :goto_38
    if-ge v5, v6, :cond_42

    aget-object v2, v1, v5

    .line 1104
    .restart local v2       #element:Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1103
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 1106
    .end local v2           #element:Ljava/util/logging/Handler;
    :cond_42
    move-object v7, v8

    .line 1107
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1108
    goto :goto_29
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"

    .prologue
    .line 1126
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1136
    :goto_6
    return-void

    .line 1130
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1131
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1134
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1135
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1155
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1166
    :goto_6
    return-void

    .line 1159
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1160
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1163
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1164
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1165
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1226
    :goto_6
    return-void

    .line 1219
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1220
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1224
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1225
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1185
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1196
    :goto_6
    return-void

    .line 1189
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1190
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1194
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1195
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1264
    :goto_6
    return-void

    .line 1251
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1252
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1254
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_27

    .line 1258
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1260
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1255
    :catch_27
    move-exception v1

    goto :goto_15
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1305
    :goto_6
    return-void

    .line 1291
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1292
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1294
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_30

    .line 1298
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1300
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1303
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1304
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1295
    :catch_30
    move-exception v1

    goto :goto_15
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1387
    :goto_6
    return-void

    .line 1373
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1374
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1376
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_2a

    .line 1380
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1382
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1386
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1377
    :catch_2a
    move-exception v1

    goto :goto_15
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1328
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1346
    :goto_6
    return-void

    .line 1332
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1333
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_18

    .line 1335
    :try_start_e
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_15} :catch_2a

    .line 1339
    :goto_15
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1341
    :cond_18
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1345
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_6

    .line 1336
    :catch_2a
    move-exception v1

    goto :goto_15
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 531
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 532
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 534
    :cond_b
    if-nez p1, :cond_e

    .line 539
    :goto_d
    return-void

    .line 537
    :cond_e
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_d
.end method

.method reset()V
    .registers 4

    .prologue
    .line 1399
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    .line 1400
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iput v2, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 1402
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;

    .line 1404
    .local v0, handler:Ljava/util/logging/Handler;
    :try_start_1d
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1405
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_11

    .line 1407
    :catch_29
    move-exception v2

    goto :goto_11

    .line 1411
    .end local v0           #handler:Ljava/util/logging/Handler;
    :cond_2b
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 1412
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .registers 3
    .parameter "newFilter"

    .prologue
    .line 561
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 562
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 564
    :cond_b
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 565
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 4
    .parameter "newLevel"

    .prologue
    .line 589
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 590
    .local v0, logManager:Ljava/util/logging/LogManager;
    iget-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v1, :cond_b

    .line 591
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 593
    :cond_b
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    .line 594
    return-void
.end method

.method setManager(Ljava/util/logging/LogManager;)V
    .registers 15
    .parameter "manager"

    .prologue
    .line 469
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 470
    .local v10, levelProperty:Ljava/lang/String;
    if-eqz v10, :cond_22

    .line 472
    :try_start_1b
    invoke-static {v10}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {p1, p0, v11}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_22} :catch_48

    .line 478
    :cond_22
    :goto_22
    iget-object v11, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4e

    const-string v11, "handlers"

    move-object v4, v11

    .line 479
    .local v4, handlersPropertyName:Ljava/lang/String;
    :goto_2d
    invoke-virtual {p1, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, handlersProperty:Ljava/lang/String;
    if-eqz v3, :cond_9d

    .line 481
    const-string v11, ",|\\s"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3b
    if-ge v5, v8, :cond_9d

    aget-object v2, v0, v5

    .line 482
    .local v2, handlerName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_65

    .line 481
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 473
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #handlerName:Ljava/lang/String;
    .end local v3           #handlersProperty:Ljava/lang/String;
    .end local v4           #handlersPropertyName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    :catch_48
    move-exception v11

    move-object v7, v11

    .line 474
    .local v7, invalidLevel:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_22

    .line 478
    .end local v7           #invalidLevel:Ljava/lang/IllegalArgumentException;
    :cond_4e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".handlers"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    goto :goto_2d

    .line 488
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #handlerName:Ljava/lang/String;
    .restart local v3       #handlersProperty:Ljava/lang/String;
    .restart local v4       #handlersPropertyName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    :cond_65
    :try_start_65
    invoke-static {v2}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6b} :catch_91

    .line 495
    .local v1, handler:Ljava/util/logging/Handler;
    :try_start_6b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, level:Ljava/lang/String;
    if-eqz v9, :cond_8b

    .line 497
    invoke-static {v9}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8b} :catch_97

    .line 503
    .end local v9           #level:Ljava/lang/String;
    :cond_8b
    :goto_8b
    iget-object v11, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 489
    .end local v1           #handler:Ljava/util/logging/Handler;
    :catch_91
    move-exception v11

    move-object v6, v11

    .line 490
    .local v6, invalidHandlerName:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    .line 499
    .end local v6           #invalidHandlerName:Ljava/lang/Exception;
    .restart local v1       #handler:Ljava/util/logging/Handler;
    :catch_97
    move-exception v11

    move-object v7, v11

    .line 500
    .local v7, invalidLevel:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    .line 507
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #handler:Ljava/util/logging/Handler;
    .end local v2           #handlerName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #invalidLevel:Ljava/lang/Exception;
    .end local v8           #len$:I
    :cond_9d
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 508
    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 648
    if-nez p1, :cond_a

    .line 649
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parent == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 653
    :cond_a
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 654
    .local v0, logManager:Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 655
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 656
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .registers 3
    .parameter "notifyParentHandlers"

    .prologue
    .line 620
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 621
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 623
    :cond_b
    iput-boolean p1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 624
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 625
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 907
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "thrown"

    .prologue
    .line 886
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 897
    :goto_8
    return-void

    .line 890
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 891
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 895
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 896
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_8
.end method

.method updateDalvikLogHandler()V
    .registers 10

    .prologue
    .line 198
    sget-object v5, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    .line 200
    .local v5, newLogHandler:Ldalvik/system/DalvikLogHandler;
    iget-object v6, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 202
    .local v6, parent:Ljava/util/logging/Logger;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/util/logging/Logger;

    if-eq v7, v8, :cond_11

    .line 238
    :cond_c
    :goto_c
    iget-object v7, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    if-ne v5, v7, :cond_43

    .line 247
    :cond_10
    return-void

    .line 209
    :cond_11
    if-nez v6, :cond_34

    .line 211
    iget-object v7, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 212
    .local v2, h:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;

    .line 214
    .local v1, firstHandler:Ljava/util/logging/Handler;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_c

    instance-of v7, v1, Ldalvik/system/DalvikLogHandler;

    if-eqz v7, :cond_c

    .line 223
    move-object v0, v1

    check-cast v0, Ldalvik/system/DalvikLogHandler;

    move-object v5, v0

    goto :goto_c

    .line 226
    .end local v1           #firstHandler:Ljava/util/logging/Handler;
    .end local v2           #h:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    :cond_34
    iget-object v7, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    if-eqz v7, :cond_c

    .line 235
    iget-object v5, v6, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    goto :goto_c

    .line 242
    :cond_43
    iput-object v5, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    .line 244
    iget-object v7, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Logger;

    .line 245
    .local v4, logger:Ljava/util/logging/Logger;
    invoke-virtual {v4}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_4b
.end method

.method public warning(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 918
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 919
    return-void
.end method
