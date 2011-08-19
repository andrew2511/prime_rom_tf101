.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;
.super Ljava/lang/Object;
.source "ImplForWildcard.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private final superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V
    .registers 3
    .parameter "extendsBound"
    .parameter "superBound"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 30
    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 45
    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_7

    move v2, v4

    .line 49
    :goto_6
    return v2

    .line 48
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v1, v0

    .line 49
    .local v1, that:Ljava/lang/reflect/WildcardType;
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_6

    :cond_29
    move v2, v4

    goto :goto_6
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_25

    :cond_1d
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-le v1, v3, :cond_35

    .line 64
    :cond_25
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    :cond_35
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 66
    const-string v1, " super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_30
.end method
