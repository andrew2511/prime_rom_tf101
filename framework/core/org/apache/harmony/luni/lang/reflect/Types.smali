.class public Lorg/apache/harmony/luni/lang/reflect/Types;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;
    .registers 2
    .parameter "types"

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public static getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2
    .parameter "type"

    .prologue
    .line 28
    instance-of v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    if-eqz v0, :cond_b

    .line 29
    check-cast p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    .end local p0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 31
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    move-object v0, p0

    goto :goto_a
.end method
