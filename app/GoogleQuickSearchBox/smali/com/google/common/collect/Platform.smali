.class Lcom/google/common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #array:[Ljava/lang/Object;,"[TT;"
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, reference:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 105
    .local v2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #reference:[Ljava/lang/Object;,"[TT;"
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 106
    .local v1, result:[Ljava/lang/Object;,"[TT;"
    return-object v1
.end method

.method static tryWeakKeys(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;
    .locals 1
    .parameter "mapMaker"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method static unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0
    .parameter "src"
    .parameter "srcPos"
    .parameter "dest"
    .parameter "destPos"
    .parameter "length"

    .prologue
    .line 77
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-void
.end method
