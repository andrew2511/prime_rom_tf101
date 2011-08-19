.class public Lcom/android/volley/toolbox/MicroProtoHelper;
.super Ljava/lang/Object;
.source "MicroProtoHelper.java"


# static fields
.field private static final sGetMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSetMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/MicroProtoHelper;->sGetMethodCache:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/MicroProtoHelper;->sSetMethodCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findGetMethod(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, outerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, innerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v6, Lcom/android/volley/toolbox/MicroProtoHelper;->sGetMethodCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 64
    .local v1, cached:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    move-object v6, v1

    .line 75
    :goto_0
    return-object v6

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 69
    .local v5, methods:[Ljava/lang/reflect/Method;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 73
    .local v4, m:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "get"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    sget-object v6, Lcom/android/volley/toolbox/MicroProtoHelper;->sGetMethodCache:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    .line 75
    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v4           #m:Ljava/lang/reflect/Method;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No getter for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static getParsedResponseFromWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/google/protobuf/micro/MessageMicro;",
            "Y:",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">(TX;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Ljava/lang/Class",
            "<TY;>;)TY;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, wrapper:Lcom/google/protobuf/micro/MessageMicro;,"TX;"
    .local p1, wrapperClass:Ljava/lang/Class;,"Ljava/lang/Class<TX;>;"
    .local p2, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TY;>;"
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/volley/toolbox/MicroProtoHelper;->findGetMethod(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 36
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #wrapper:Lcom/google/protobuf/micro/MessageMicro;,"TX;"
    check-cast p0, Lcom/google/protobuf/micro/MessageMicro;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 37
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 38
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
