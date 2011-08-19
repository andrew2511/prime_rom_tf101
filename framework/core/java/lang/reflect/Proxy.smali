.class public Ljava/lang/reflect/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static NextClassNameIndex:I = 0x0

.field private static final loaderCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private static final proxyCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1ed825df33efbc35L


# instance fields
.field protected h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Ljava/lang/reflect/Proxy;->$assertionsDisabled:Z

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    .line 48
    sput v1, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    return-void

    :cond_1d
    move v0, v1

    .line 38
    goto :goto_a
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 68
    return-void
.end method

.method private static native constructorPrototype(Ljava/lang/reflect/InvocationHandler;)V
.end method

.method private static native generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Class;
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 3
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 279
    check-cast p0, Ljava/lang/reflect/Proxy;

    .end local p0
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    return-object v0

    .line 282
    .restart local p0
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a proxy instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 9
    .parameter "loader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 98
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p1, :cond_8

    .line 99
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 101
    .restart local p0
    :cond_8
    const/4 v0, 0x0

    .line 102
    .local v0, commonPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, p1

    .local v3, length:I
    :goto_b
    if-ge v1, v3, :cond_ce

    .line 103
    aget-object v5, p1, v1

    .line 104
    .local v5, next:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v5, :cond_17

    .line 105
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 107
    .restart local p0
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 109
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not an interface"

    .end local v0           #commonPackageName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    .restart local v0       #commonPackageName:Ljava/lang/String;
    .restart local p0
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_3a
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq p0, v2, :cond_7a

    .line 113
    const/4 v2, 0x0

    :try_start_41
    invoke-static {v4, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-eq v5, v2, :cond_7a

    .line 114
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not visible from class loader"

    .end local v0           #commonPackageName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_60} :catch_60

    .line 117
    :catch_60
    move-exception p0

    .line 118
    .local p0, ex:Ljava/lang/ClassNotFoundException;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #ex:Ljava/lang/ClassNotFoundException;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not visible from class loader"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    .restart local v0       #commonPackageName:Ljava/lang/String;
    .local p0, loader:Ljava/lang/ClassLoader;
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_7a
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_7c
    if-ge v2, v3, :cond_9e

    .line 122
    aget-object v6, p1, v2

    if-ne v5, v6, :cond_9b

    .line 123
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #loader:Ljava/lang/ClassLoader;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " appears more than once"

    .end local v0           #commonPackageName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    .restart local v0       #commonPackageName:Ljava/lang/String;
    .restart local p0       #loader:Ljava/lang/ClassLoader;
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 126
    :cond_9e
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    .end local v2           #j:I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_b6

    .line 127
    const/16 v2, 0x2e

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 128
    .local v2, last:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_ba

    .end local v5           #next:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, ""

    .line 129
    .local v2, p:Ljava/lang/String;
    :goto_b3
    if-nez v0, :cond_c0

    .line 130
    move-object v0, v2

    .line 102
    .end local v2           #p:Ljava/lang/String;
    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 128
    .local v2, last:I
    :cond_ba
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b3

    .line 131
    .local v2, p:Ljava/lang/String;
    :cond_c0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v2           #p:Ljava/lang/String;
    if-nez v2, :cond_b6

    .line 132
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #loader:Ljava/lang/ClassLoader;
    const-string p1, "non-public interfaces must be in the same package"

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    .end local v4           #name:Ljava/lang/String;
    .restart local p0       #loader:Ljava/lang/ClassLoader;
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_ce
    sget-object v5, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    monitor-enter v5

    .line 140
    :try_start_d1
    sget-object v1, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    .end local v1           #i:I
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 142
    .local v1, interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    if-nez v1, :cond_e5

    .line 143
    sget-object v2, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    .end local v1           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .restart local v1       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e5
    move-object v2, v1

    .line 149
    .end local v1           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .local v2, interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    const-string v1, ""

    .line 150
    .local v1, interfaceKey:Ljava/lang/String;
    array-length v1, p1

    .end local v1           #interfaceKey:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_15a

    .line 151
    .end local v3           #length:I
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .restart local v1       #interfaceKey:Ljava/lang/String;
    :goto_f3
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 163
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    if-nez v3, :cond_180

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$Proxy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    add-int/lit8 v6, v4, 0x1

    sput v6, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, nextClassName:Ljava/lang/String;
    if-eqz v0, :cond_1df

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1df

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #commonPackageName:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .end local v3           #nextClassName:Ljava/lang/String;
    .local v0, nextClassName:Ljava/lang/String;
    :goto_133
    if-nez p0, :cond_139

    .line 174
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 176
    :cond_139
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .end local v0           #nextClassName:Ljava/lang/String;
    invoke-static {v0, p1, p0}, Ljava/lang/reflect/Proxy;->generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 181
    .local p1, newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    monitor-enter v0
    :try_end_150
    .catchall {:try_start_d1 .. :try_end_150} :catchall_17d

    .line 185
    :try_start_150
    sget-object v1, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    .end local v1           #interfaceKey:Ljava/lang/String;
    const-string v2, ""

    .end local v2           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v0
    :try_end_158
    .catchall {:try_start_150 .. :try_end_158} :catchall_17a

    .line 194
    :cond_158
    :try_start_158
    monitor-exit v5

    return-object p1

    .line 153
    .local v0, commonPackageName:Ljava/lang/String;
    .restart local v2       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_15a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v4, names:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, p1

    .local v3, length:I
    :goto_161
    if-ge v1, v3, :cond_174

    .line 155
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_161

    .line 158
    :cond_174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_177
    .catchall {:try_start_158 .. :try_end_177} :catchall_17d

    move-result-object v1

    .local v1, interfaceKey:Ljava/lang/String;
    goto/16 :goto_f3

    .line 186
    .end local v0           #commonPackageName:Ljava/lang/String;
    .end local v1           #interfaceKey:Ljava/lang/String;
    .end local v2           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .end local v3           #length:I
    .end local v4           #names:Ljava/lang/StringBuilder;
    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catchall_17a
    move-exception p1

    :try_start_17b
    monitor-exit v0
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17a

    :try_start_17c
    throw p1

    .line 195
    :catchall_17d
    move-exception p1

    monitor-exit v5
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_17d

    throw p1

    .line 188
    .restart local v0       #commonPackageName:Ljava/lang/String;
    .restart local v1       #interfaceKey:Ljava/lang/String;
    .restart local v2       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_180
    :try_start_180
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    check-cast p1, Ljava/lang/Class;

    .line 189
    .local p1, newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-boolean v0, Ljava/lang/reflect/Proxy;->$assertionsDisabled:Z

    .end local v0           #commonPackageName:Ljava/lang/String;
    if-nez v0, :cond_158

    if-nez p1, :cond_158

    new-instance p1, Ljava/lang/AssertionError;

    .end local p1           #newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ninterfaceKey=\""

    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    .end local v1           #interfaceKey:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nloaderCache=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nintfCache=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nproxyCache=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1df
    .catchall {:try_start_180 .. :try_end_1df} :catchall_17d

    .restart local v0       #commonPackageName:Ljava/lang/String;
    .restart local v1       #interfaceKey:Ljava/lang/String;
    .local v3, nextClassName:Ljava/lang/String;
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1df
    move-object v0, v3

    .end local v3           #nextClassName:Ljava/lang/String;
    .local v0, nextClassName:Ljava/lang/String;
    goto/16 :goto_133
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_8

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :cond_8
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    monitor-enter v0

    .line 262
    :try_start_b
    sget-object v1, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 263
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .registers 9
    .parameter "loader"
    .parameter
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 223
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p2, :cond_8

    .line 224
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 227
    :cond_8
    :try_start_8
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/reflect/InvocationHandler;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_21} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_21} :catch_37
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_21} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_21} :catch_5f

    move-result-object v2

    return-object v2

    .line 230
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 231
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0

    .line 233
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    .restart local p0
    :catch_37
    move-exception v2

    move-object v0, v2

    .line 234
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0

    .line 236
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    .restart local p0
    :catch_4b
    move-exception v2

    move-object v0, v2

    .line 237
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0

    .line 239
    .end local v0           #ex:Ljava/lang/InstantiationException;
    .restart local p0
    :catch_5f
    move-exception v2

    move-object v0, v2

    .line 240
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 241
    .local v1, target:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0
.end method
