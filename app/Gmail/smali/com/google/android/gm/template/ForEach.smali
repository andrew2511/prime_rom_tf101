.class public Lcom/google/android/gm/template/ForEach;
.super Lcom/google/android/gm/template/Command;
.source "ForEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/template/ForEach$ItemVisitor;
    }
.end annotation


# instance fields
.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mListExpression:Lcom/google/android/gm/template/Expression;

.field private final mVariableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gm/template/Expression;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "variableName"
    .parameter "listExpression"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/template/Expression;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/template/Node;>;"
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gm/template/ForEach;->mVariableName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/google/android/gm/template/ForEach;->mListExpression:Lcom/google/android/gm/template/Expression;

    .line 28
    iput-object p3, p0, Lcom/google/android/gm/template/ForEach;->mChildren:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/template/ForEach;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gm/template/ForEach;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V
    .locals 8
    .parameter "listValue"
    .parameter "varName"
    .parameter "context"
    .parameter "visitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_2

    .line 48
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 49
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 50
    .local v4, numElements:I
    if-lez v4, :cond_1

    .line 51
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v5, scope:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$lastIndex"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    sub-int v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p2, v5}, Lcom/google/android/gm/template/EvalContext;->push(Ljava/util/Map;)V

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$index"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, indexKey:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {p3, p2}, Lcom/google/android/gm/template/ForEach$ItemVisitor;->visit(Lcom/google/android/gm/template/EvalContext;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gm/template/EvalContext;->pop()Ljava/util/Map;

    .line 65
    .end local v1           #i:I
    .end local v2           #indexKey:Ljava/lang/String;
    .end local v5           #scope:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 63
    .end local v3           #list:Ljava/util/List;
    .end local v4           #numElements:I
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid collection"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "out"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lcom/google/android/gm/template/ForEach;->mListExpression:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v2, p2}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, listValue:Ljava/lang/Object;
    new-instance v1, Lcom/google/android/gm/template/ForEach$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/template/ForEach$1;-><init>(Lcom/google/android/gm/template/ForEach;Ljava/lang/Appendable;)V

    .line 78
    .local v1, writeChildrenValuesVisitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    iget-object v2, p0, Lcom/google/android/gm/template/ForEach;->mVariableName:Ljava/lang/String;

    invoke-static {v0, v2, p2, v1}, Lcom/google/android/gm/template/ForEach;->iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V

    .line 79
    return-void
.end method
