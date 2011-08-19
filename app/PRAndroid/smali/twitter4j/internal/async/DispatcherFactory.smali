.class public final Ltwitter4j/internal/async/DispatcherFactory;
.super Ljava/lang/Object;
.source "DispatcherFactory.java"


# static fields
.field static class$twitter4j$internal$async$DispatcherConfiguration:Ljava/lang/Class;


# instance fields
.field private conf:Ltwitter4j/internal/async/DispatcherConfiguration;

.field private dispatcherImpl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/internal/async/DispatcherFactory;-><init>(Ltwitter4j/internal/async/DispatcherConfiguration;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/async/DispatcherConfiguration;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p1}, Ltwitter4j/internal/async/DispatcherConfiguration;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/async/DispatcherFactory;->dispatcherImpl:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Ltwitter4j/internal/async/DispatcherFactory;->conf:Ltwitter4j/internal/async/DispatcherConfiguration;

    .line 44
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
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

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getInstance()Ltwitter4j/internal/async/Dispatcher;
    .locals 5

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Ltwitter4j/internal/async/DispatcherFactory;->dispatcherImpl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ltwitter4j/internal/async/DispatcherFactory;->class$twitter4j$internal$async$DispatcherConfiguration:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "twitter4j.internal.async.DispatcherConfiguration"

    invoke-static {v4}, Ltwitter4j/internal/async/DispatcherFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/internal/async/DispatcherFactory;->class$twitter4j$internal$async$DispatcherConfiguration:Ljava/lang/Class;

    :goto_0
    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/internal/async/DispatcherFactory;->conf:Ltwitter4j/internal/async/DispatcherConfiguration;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/internal/async/Dispatcher;

    return-object p0

    .restart local p0
    :cond_0
    sget-object v4, Ltwitter4j/internal/async/DispatcherFactory;->class$twitter4j$internal$async$DispatcherConfiguration:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 59
    .end local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 60
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 61
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 62
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 63
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 65
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 66
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 67
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 68
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 69
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
