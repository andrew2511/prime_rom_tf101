.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForType;
.super Ljava/lang/Object;
.source "ImplForType.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private loader:Ljava/lang/ClassLoader;

.field private final ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

.field private ownerTypeRes:Ljava/lang/reflect/Type;

.field private rawType:Ljava/lang/Class;

.field private final rawTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/lang/reflect/ImplForType;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V
    .registers 5
    .parameter "ownerType"
    .parameter "rawTypeName"
    .parameter "args"
    .parameter "loader"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    .line 34
    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 36
    iput-object p4, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->loader:Ljava/lang/ClassLoader;

    .line 37
    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    if-nez v0, :cond_10

    .line 47
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    if-eqz v0, :cond_13

    .line 48
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    .line 53
    :cond_10
    :goto_10
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    return-object v0

    .line 50
    :cond_13
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    goto :goto_10
.end method

.method public getRawType()Ljava/lang/Class;
    .registers 5

    .prologue
    .line 57
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawType:Ljava/lang/Class;

    if-nez v1, :cond_f

    .line 62
    :try_start_4
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawType:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_f} :catch_12

    .line 67
    :cond_f
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawType:Ljava/lang/Class;

    return-object v1

    .line 63
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/TypeNotPresentException;

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getResolvedType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_e

    .line 73
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 75
    :goto_d
    return-object v0

    :cond_e
    move-object v0, p0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 84
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
