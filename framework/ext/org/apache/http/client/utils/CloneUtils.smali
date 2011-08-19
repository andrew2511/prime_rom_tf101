.class public Lorg/apache/http/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    if-nez p0, :cond_4

    .line 53
    :goto_3
    return-object v4

    .line 44
    :cond_4
    instance-of v4, p0, Ljava/lang/Cloneable;

    if-eqz v4, :cond_4a

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_c
    const-string v5, "clone"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_14} :catch_1d

    move-result-object v3

    .line 53
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    :try_start_16
    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_1b} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_1b} :catch_3e

    move-result-object v4

    goto :goto_3

    .line 49
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_1d
    move-exception v4

    move-object v2, v4

    .line 50
    .local v2, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    .end local v2           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_29
    move-exception v4

    move-object v2, v4

    .line 55
    .local v2, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 56
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/lang/CloneNotSupportedException;

    if-eqz v4, :cond_36

    .line 57
    check-cast v0, Ljava/lang/CloneNotSupportedException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 59
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_36
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Unexpected exception"

    invoke-direct {v4, v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 61
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v2           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_3e
    move-exception v4

    move-object v2, v4

    .line 62
    .local v2, ex:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalAccessError;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #ex:Ljava/lang/IllegalAccessException;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :cond_4a
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v4}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v4
.end method
