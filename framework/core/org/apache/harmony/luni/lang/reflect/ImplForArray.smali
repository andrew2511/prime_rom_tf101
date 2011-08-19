.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForArray;
.super Ljava/lang/Object;
.source "ImplForArray.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2
    .parameter "componentType"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    .line 27
    return-void
.end method


# virtual methods
.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    check-cast v1, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 33
    :goto_8
    return-object v1

    .line 32
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 33
    .local v0, e:Ljava/lang/ClassCastException;
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
