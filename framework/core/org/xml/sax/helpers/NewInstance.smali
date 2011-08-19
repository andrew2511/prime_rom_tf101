.class Lorg/xml/sax/helpers/NewInstance;
.super Ljava/lang/Object;
.source "NewInstance.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getClassLoader()Ljava/lang/ClassLoader;
    .registers 5

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 63
    .local v1, m:Ljava/lang/reflect/Method;
    :try_start_1
    const-class v2, Ljava/lang/Thread;

    const-string v3, "getContextClassLoader"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_b} :catch_1b

    move-result-object v1

    .line 70
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_19} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_19} :catch_30

    move-object v2, v0

    :goto_1a
    return-object v2

    .line 64
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 66
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-class v2, Lorg/xml/sax/helpers/NewInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1a

    .line 71
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_24
    move-exception v2

    move-object v0, v2

    .line 73
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/UnknownError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/UnknownError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "classLoader"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 46
    if-nez p0, :cond_b

    .line 47
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, driverClass:Ljava/lang/Class;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 49
    .end local v0           #driverClass:Ljava/lang/Class;
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0       #driverClass:Ljava/lang/Class;
    goto :goto_6
.end method
