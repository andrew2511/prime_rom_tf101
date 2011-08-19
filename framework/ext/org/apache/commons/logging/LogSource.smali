.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# static fields
.field protected static jdk14IsAvailable:Z

.field protected static log4jIsAvailable:Z

.field protected static logImplctor:Ljava/lang/reflect/Constructor;

.field protected static logs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 64
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 67
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 70
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 79
    :try_start_f
    const-string v2, "org.apache.log4j.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 80
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1a} :catch_46

    .line 90
    :goto_1a
    :try_start_1a
    const-string v2, "java.util.logging.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4b

    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 92
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2d} :catch_4f

    .line 101
    :goto_2d
    const/4 v0, 0x0

    .line 103
    .local v0, name:Ljava/lang/String;
    :try_start_2e
    const-string v2, "org.apache.commons.logging.log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-nez v0, :cond_3c

    .line 105
    const-string v2, "org.apache.commons.logging.Log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3b} :catch_81

    move-result-object v0

    .line 109
    :cond_3c
    :goto_3c
    if-eqz v0, :cond_5d

    .line 111
    :try_start_3e
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_54

    .line 142
    :goto_41
    return-void

    .line 82
    .end local v0           #name:Ljava/lang/String;
    :cond_42
    const/4 v2, 0x0

    :try_start_43
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_45} :catch_46

    goto :goto_1a

    .line 84
    :catch_46
    move-exception v2

    move-object v1, v2

    .line 85
    .local v1, t:Ljava/lang/Throwable;
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    goto :goto_1a

    .line 94
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_4b
    const/4 v2, 0x0

    :try_start_4c
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4e} :catch_4f

    goto :goto_2d

    .line 96
    :catch_4f
    move-exception v2

    move-object v1, v2

    .line 97
    .restart local v1       #t:Ljava/lang/Throwable;
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    goto :goto_2d

    .line 112
    .end local v1           #t:Ljava/lang/Throwable;
    .restart local v0       #name:Ljava/lang/String;
    :catch_54
    move-exception v1

    .line 114
    .restart local v1       #t:Ljava/lang/Throwable;
    :try_start_55
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_41

    .line 116
    :catch_5b
    move-exception v2

    goto :goto_41

    .line 122
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_5d
    :try_start_5d
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    if-eqz v2, :cond_71

    .line 123
    const-string v2, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_66} :catch_67

    goto :goto_41

    .line 132
    :catch_67
    move-exception v2

    move-object v1, v2

    .line 134
    .restart local v1       #t:Ljava/lang/Throwable;
    :try_start_69
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6e} :catch_6f

    goto :goto_41

    .line 136
    :catch_6f
    move-exception v2

    goto :goto_41

    .line 125
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_71
    :try_start_71
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    if-eqz v2, :cond_7b

    .line 126
    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_41

    .line 129
    :cond_7b
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_80} :catch_67

    goto :goto_41

    .line 107
    :catch_81
    move-exception v2

    goto :goto_3c
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2
    .parameter "clazz"

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 4
    .parameter "name"

    .prologue
    .line 195
    sget-object v2, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/Log;

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v1, v0

    .line 196
    .local v1, log:Lorg/apache/commons/logging/Log;
    if-nez v1, :cond_17

    .line 197
    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 198
    sget-object v2, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_17
    return-object v1
.end method

.method public static getLogNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 6
    .parameter "name"

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, log:Lorg/apache/commons/logging/Log;
    const/4 v4, 0x1

    :try_start_2
    new-array v1, v4, [Ljava/lang/Object;

    .line 239
    .local v1, args:[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p0, v1, v4

    .line 240
    sget-object v4, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/logging/Log;

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v2, v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_1b

    .line 244
    .end local v1           #args:[Ljava/lang/Object;
    :goto_13
    if-nez v2, :cond_1a

    .line 245
    new-instance v2, Lorg/apache/commons/logging/impl/NoOpLog;

    .end local v2           #log:Lorg/apache/commons/logging/Log;
    invoke-direct {v2, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v2       #log:Lorg/apache/commons/logging/Log;
    :cond_1a
    return-object v2

    .line 241
    :catch_1b
    move-exception v4

    move-object v3, v4

    .line 242
    .local v3, t:Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .registers 4
    .parameter "logclass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    .line 188
    .local v0, argtypes:[Ljava/lang/Class;
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 190
    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .registers 6
    .parameter "classname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 169
    .local v1, logclass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    .line 170
    .local v0, argtypes:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 175
    .end local v0           #argtypes:[Ljava/lang/Class;
    .end local v1           #logclass:Ljava/lang/Class;
    :goto_16
    return-void

    .line 172
    :catch_17
    move-exception v3

    move-object v2, v3

    .line 173
    .local v2, t:Ljava/lang/Throwable;
    const/4 v3, 0x0

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    goto :goto_16
.end method
