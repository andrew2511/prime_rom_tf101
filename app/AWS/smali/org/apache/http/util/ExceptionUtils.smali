.class public final Lorg/apache/http/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field static class$java$lang$Throwable:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lorg/apache/http/util/ExceptionUtils;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 57
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/http/util/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.lang.Throwable"

    invoke-static {v3}, Lorg/apache/http/util/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/http/util/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    aput-object v3, v1, v2

    .line 58
    .local v1, paramsClasses:[Ljava/lang/Class;
    sget-object v2, Lorg/apache/http/util/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/http/util/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/http/util/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_1
    const-string v3, "initCause"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 60
    .end local v1           #paramsClasses:[Ljava/lang/Class;
    :goto_2
    return-object v2

    .line 57
    :cond_0
    sget-object v3, Lorg/apache/http/util/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_0

    .line 58
    .restart local v1       #paramsClasses:[Ljava/lang/Class;
    :cond_1
    sget-object v2, Lorg/apache/http/util/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    .end local v1           #paramsClasses:[Ljava/lang/Class;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "throwable"
    .parameter "cause"

    .prologue
    .line 71
    sget-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    sget-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method
