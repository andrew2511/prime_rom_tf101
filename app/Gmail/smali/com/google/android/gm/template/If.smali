.class public Lcom/google/android/gm/template/If;
.super Lcom/google/android/gm/template/Command;
.source "If.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/template/If$1;,
        Lcom/google/android/gm/template/If$Builder;
    }
.end annotation


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodeLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Expression;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Node;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, conditions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/template/Expression;>;"
    .local p2, nodeLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/google/android/gm/template/Node;>;>;"
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gm/template/If;->mConditions:Ljava/util/ArrayList;

    .line 28
    iput-object p2, p0, Lcom/google/android/gm/template/If;->mNodeLists:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/template/If$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/template/If;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 8
    .parameter "out"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v7, p0, Lcom/google/android/gm/template/If;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, numConditions:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 34
    iget-object v7, p0, Lcom/google/android/gm/template/If;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/template/Expression;

    .line 35
    .local v0, condition:Lcom/google/android/gm/template/Expression;
    invoke-virtual {v0, p2}, Lcom/google/android/gm/template/Expression;->booleanValue(Lcom/google/android/gm/template/EvalContext;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    iget-object v7, p0, Lcom/google/android/gm/template/If;->mNodeLists:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 37
    .local v4, nodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/template/Node;>;"
    const/4 v2, 0x0

    .local v2, j:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, numNodes:I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 38
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/template/Node;

    .line 39
    .local v3, node:Lcom/google/android/gm/template/Node;
    invoke-virtual {v3, p1, p2}, Lcom/google/android/gm/template/Node;->writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    .end local v2           #j:I
    .end local v3           #node:Lcom/google/android/gm/template/Node;
    .end local v4           #nodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/template/Node;>;"
    .end local v6           #numNodes:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0           #condition:Lcom/google/android/gm/template/Expression;
    :cond_1
    return-void
.end method
