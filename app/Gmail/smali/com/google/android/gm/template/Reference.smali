.class public Lcom/google/android/gm/template/Reference;
.super Lcom/google/android/gm/template/Expression;
.source "Reference.java"


# instance fields
.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/gm/template/Expression;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/gm/template/Reference;->mKeys:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public static evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "context"
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/template/EvalContext;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, variable:Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Ljava/util/Map;

    .end local v0           #variable:Ljava/lang/Object;
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 43
    .restart local v0       #variable:Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid reference: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is not a map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static evaluate(Lcom/google/android/gm/template/EvalContext;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "context"
    .parameter "keys"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v4, 0x0

    .line 62
    :goto_0
    return-object v4

    .line 51
    :cond_0
    const/4 v4, 0x0

    aget-object v1, p1, v4

    .line 52
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/gm/template/EvalContext;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    .local v3, value:Ljava/lang/Object;
    const/4 v0, 0x1

    .local v0, i:I
    array-length v2, p1

    .local v2, len:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 54
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 55
    aget-object v1, p1, v0

    .line 56
    check-cast v3, Ljava/util/Map;

    .end local v3           #value:Ljava/lang/Object;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    .restart local v3       #value:Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid reference: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a map"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v3

    .line 62
    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gm/template/Reference;->mKeys:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/google/android/gm/template/Reference;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/template/Reference;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
