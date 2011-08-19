.class public Lorg/apache/commons/logging/impl/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_FATAL:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_OFF:I = 0x7

.field public static final LOG_LEVEL_TRACE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4

.field protected static dateFormatter:Ljava/text/DateFormat; = null

.field protected static dateTimeFormat:Ljava/lang/String; = null

.field protected static showDateTime:Z = false

.field protected static showLogName:Z = false

.field protected static showShortName:Z = false

.field protected static final simpleLogProps:Ljava/util/Properties; = null

.field protected static final systemPrefix:Ljava/lang/String; = "org.apache.commons.logging.simplelog."


# instance fields
.field protected currentLogLevel:I

.field protected logName:Ljava/lang/String;

.field private shortLogName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    .line 92
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 97
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 99
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 101
    const-string v2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 103
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 154
    const-string v2, "simplelog.properties"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 155
    .local v1, in:Ljava/io/InputStream;
    if-eqz v1, :cond_26

    .line 157
    :try_start_1e
    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_6c

    .line 164
    :cond_26
    :goto_26
    const-string v2, "org.apache.commons.logging.simplelog.showlogname"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 165
    const-string v2, "org.apache.commons.logging.simplelog.showShortLogname"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 166
    const-string v2, "org.apache.commons.logging.simplelog.showdatetime"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 168
    sget-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v2, :cond_5b

    .line 169
    const-string v2, "org.apache.commons.logging.simplelog.dateTimeFormat"

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 172
    :try_start_52
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_5b} :catch_5c

    .line 179
    :cond_5b
    :goto_5b
    return-void

    .line 173
    :catch_5c
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 176
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    goto :goto_5b

    .line 159
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6c
    move-exception v2

    goto :goto_26
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 206
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, lvl:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, i:I
    :goto_32
    if-nez v1, :cond_5d

    const/4 v2, -0x1

    if-le v0, v2, :cond_5d

    .line 212
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_32

    .line 217
    :cond_5d
    if-nez v1, :cond_65

    .line 218
    const-string v2, "org.apache.commons.logging.simplelog.defaultlog"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_65
    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 222
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 239
    :cond_70
    :goto_70
    return-void

    .line 223
    :cond_71
    const-string v2, "trace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 224
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_70

    .line 225
    :cond_7e
    const-string v2, "debug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 226
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_70

    .line 227
    :cond_8b
    const-string v2, "info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 228
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_70

    .line 229
    :cond_97
    const-string v2, "warn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 230
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_70

    .line 231
    :cond_a4
    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 232
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_70

    .line 233
    :cond_b1
    const-string v2, "fatal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 234
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_70

    .line 235
    :cond_be
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 236
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_70
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "name"
    .parameter "dephault"

    .prologue
    .line 145
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, prop:Ljava/lang/String;
    if-nez v0, :cond_8

    move v1, p1

    :goto_7
    return v1

    :cond_8
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 7

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 640
    .local v1, classLoader:Ljava/lang/ClassLoader;
    if-nez v1, :cond_1d

    .line 643
    :try_start_3
    const-class v5, Ljava/lang/Thread;

    const-string v6, "getContextClassLoader"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_d} :catch_3c

    move-result-object v3

    .line 648
    .local v3, method:Ljava/lang/reflect/Method;
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v1, v0
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1d} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_1d} :catch_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_1d} :catch_3c

    .line 685
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_1d
    :goto_1d
    if-nez v1, :cond_25

    .line 686
    const-class v4, Lorg/apache/commons/logging/impl/SimpleLog;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 690
    :cond_25
    return-object v1

    .line 653
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :catch_26
    move-exception v4

    move-object v2, v4

    .line 670
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/SecurityException;

    if-nez v4, :cond_1d

    .line 675
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v5, "Unexpected InvocationTargetException"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_3c} :catch_3c

    .line 679
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_3c
    move-exception v4

    goto :goto_1d

    .line 651
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v4

    goto :goto_1d
.end method

.method private static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .parameter "name"

    .prologue
    .line 695
    new-instance v0, Lorg/apache/commons/logging/impl/SimpleLog$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, prop:Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_10

    move-result-object v0

    .line 136
    :goto_5
    if-nez v0, :cond_e

    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1

    :cond_e
    move-object v1, v0

    goto :goto_d

    .line 133
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"
    .parameter "dephault"

    .prologue
    .line 140
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, prop:Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p1

    :goto_7
    return-object v1

    :cond_8
    move-object v1, v0

    goto :goto_7
.end method


# virtual methods
.method public final debug(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    const/4 v1, 0x2

    .line 371
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 374
    :cond_b
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    const/4 v1, 0x2

    .line 387
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 388
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 390
    :cond_a
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    const/4 v1, 0x5

    .line 495
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 498
    :cond_b
    return-void
.end method

.method public final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    const/4 v1, 0x5

    .line 511
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 512
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 514
    :cond_a
    return-void
.end method

.method public final fatal(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    const/4 v1, 0x6

    .line 526
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 529
    :cond_b
    return-void
.end method

.method public final fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    const/4 v1, 0x6

    .line 542
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 543
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 545
    :cond_a
    return-void
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    return v0
.end method

.method public final info(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    const/4 v1, 0x3

    .line 433
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 436
    :cond_b
    return-void
.end method

.method public final info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    const/4 v1, 0x3

    .line 449
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 450
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 452
    :cond_a
    return-void
.end method

.method public final isDebugEnabled()Z
    .registers 2

    .prologue
    .line 557
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .registers 2

    .prologue
    .line 570
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isFatalEnabled()Z
    .registers 2

    .prologue
    .line 583
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .registers 2

    .prologue
    .line 596
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected isLevelEnabled(I)Z
    .registers 3
    .parameter "logLevel"

    .prologue
    .line 355
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isTraceEnabled()Z
    .registers 2

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 10
    .parameter "type"
    .parameter "message"
    .parameter "t"

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v0, buf:Ljava/lang/StringBuffer;
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v3, :cond_1c

    .line 283
    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_1c
    packed-switch p1, :pswitch_data_ce

    .line 298
    :goto_1f
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    if-eqz v3, :cond_b9

    .line 299
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    if-nez v3, :cond_4b

    .line 301
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 302
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 305
    :cond_4b
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    :cond_5a
    :goto_5a
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    if-eqz p3, :cond_8d

    .line 315
    const-string v3, " <"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    new-instance v2, Ljava/io/StringWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 320
    .local v2, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 321
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 323
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v2           #sw:Ljava/io/StringWriter;
    :cond_8d
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->write(Ljava/lang/StringBuffer;)V

    .line 329
    return-void

    .line 289
    :pswitch_91
    const-string v3, "[TRACE] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 290
    :pswitch_97
    const-string v3, "[DEBUG] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 291
    :pswitch_9d
    const-string v3, "[INFO] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    .line 292
    :pswitch_a4
    const-string v3, "[WARN] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    .line 293
    :pswitch_ab
    const-string v3, "[ERROR] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    .line 294
    :pswitch_b2
    const-string v3, "[FATAL] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    .line 306
    :cond_b9
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    if-eqz v3, :cond_5a

    .line 307
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 288
    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_91
        :pswitch_97
        :pswitch_9d
        :pswitch_a4
        :pswitch_ab
        :pswitch_b2
    .end packed-switch
.end method

.method public setLevel(I)V
    .registers 2
    .parameter "currentLogLevel"

    .prologue
    .line 251
    iput p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    .line 253
    return-void
.end method

.method public final trace(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 402
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 405
    :cond_b
    return-void
.end method

.method public final trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 418
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 419
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 421
    :cond_a
    return-void
.end method

.method public final warn(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    const/4 v1, 0x4

    .line 464
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 467
    :cond_b
    return-void
.end method

.method public final warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    const/4 v1, 0x4

    .line 480
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 481
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 483
    :cond_a
    return-void
.end method

.method protected write(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "buffer"

    .prologue
    .line 342
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    return-void
.end method
