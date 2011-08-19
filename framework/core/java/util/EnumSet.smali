.class public abstract Ljava/util/EnumSet;
.super Ljava/util/AbstractSet;
.source "EnumSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumSet$1;,
        Ljava/util/EnumSet$SerializationProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static LANG_BOOTSTRAP:Lorg/apache/harmony/kernel/vm/LangAccess; = null

.field private static final serialVersionUID:J = 0xe03216acd8c29ddL


# instance fields
.field final elementClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Ljava/util/EnumSet;->LANG_BOOTSTRAP:Lorg/apache/harmony/kernel/vm/LangAccess;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 42
    iput-object p1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method public static allOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 81
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    .line 82
    return-object v0
.end method

.method public static complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/EnumSet",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, s:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 146
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    .line 148
    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    instance-of v3, p0, Ljava/util/EnumSet;

    if-eqz v3, :cond_b

    .line 118
    check-cast p0, Ljava/util/EnumSet;

    .end local p0           #c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v3

    .line 130
    :goto_a
    return-object v3

    .line 120
    .restart local p0       #c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 121
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 123
    :cond_17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 125
    .local v0, element:Ljava/lang/Enum;,"TE;"
    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 126
    .local v2, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v2, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3a
    move-object v3, v2

    .line 130
    goto :goto_a
.end method

.method public static copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/EnumSet",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, s:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 98
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-object v0
.end method

.method public static noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_27

    .line 58
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an Enum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_27
    sget-object v1, Ljava/util/SpecialAccess;->LANG:Lorg/apache/harmony/kernel/vm/LangAccess;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/kernel/vm/LangAccess;->getEnumValuesInOrder(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 62
    .local v0, enums:[Ljava/lang/Enum;,"[TE;"
    array-length v1, v0

    const/16 v2, 0x40

    if-gt v1, v2, :cond_3a

    .line 63
    new-instance v1, Ljava/util/MiniEnumSet;

    invoke-direct {v1, p0, v0}, Ljava/util/MiniEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    .line 65
    :goto_39
    return-object v1

    :cond_3a
    new-instance v1, Ljava/util/HugeEnumSet;

    invoke-direct {v1, p0, v0}, Ljava/util/HugeEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    goto :goto_39
.end method

.method public static of(Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, e:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 167
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 168
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 187
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 188
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    .local p2, e3:Ljava/lang/Enum;,"TE;"
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 209
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 210
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    .local p2, e3:Ljava/lang/Enum;,"TE;"
    .local p3, e4:Ljava/lang/Enum;,"TE;"
    invoke-static {p0, p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 233
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    .local p2, e3:Ljava/lang/Enum;,"TE;"
    .local p3, e4:Ljava/lang/Enum;,"TE;"
    .local p4, e5:Ljava/lang/Enum;,"TE;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 259
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 260
    return-object v0
.end method

.method public static varargs of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;[TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, start:Ljava/lang/Enum;,"TE;"
    .local p1, others:[Ljava/lang/Enum;,"[TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 278
    .local v4, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 279
    .local v1, e:Ljava/lang/Enum;,"TE;"
    invoke-virtual {v4, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 281
    .end local v1           #e:Ljava/lang/Enum;,"TE;"
    :cond_11
    return-object v4
.end method

.method public static range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, start:Ljava/lang/Enum;,"TE;"
    .local p1, end:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_c

    .line 301
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 303
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 304
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/EnumSet;->setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V

    .line 305
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    check-cast p0, Ljava/util/EnumSet;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 322
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 323
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method abstract complement()V
.end method

.method isValidType(Ljava/lang/Class;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method abstract setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 351
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/util/EnumSet$SerializationProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/EnumSet$SerializationProxy;-><init>(Ljava/util/EnumSet$1;)V

    .line 352
    .local v0, proxy:Ljava/util/EnumSet$SerializationProxy;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Enum;

    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    #setter for: Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;
    invoke-static {v0, v1}, Ljava/util/EnumSet$SerializationProxy;->access$102(Ljava/util/EnumSet$SerializationProxy;[Ljava/lang/Enum;)[Ljava/lang/Enum;

    .line 353
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #setter for: Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;
    invoke-static {v0, v1}, Ljava/util/EnumSet$SerializationProxy;->access$202(Ljava/util/EnumSet$SerializationProxy;Ljava/lang/Class;)Ljava/lang/Class;

    .line 354
    return-object v0
.end method
