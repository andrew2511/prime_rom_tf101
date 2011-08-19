.class public final Lorg/apache/harmony/security/fortress/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final ACC_CACHE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext(Ljava/lang/Thread;)Ljava/security/AccessControlContext;
    .registers 3
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/AccessControlContext;

    monitor-exit v0

    return-object p0

    .line 110
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static putContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V
    .registers 5
    .parameter "thread"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p0, :cond_8

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_8
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 77
    :try_start_b
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 78
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You can not modify this map"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw v1

    .line 80
    :cond_1e
    if-nez p1, :cond_31

    .line 82
    :try_start_20
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 83
    new-instance v1, Ljava/lang/Error;

    const-string v2, "null context may be stored only once"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_31
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_1b

    .line 88
    return-void
.end method
