.class Lcom/google/android/gm/template/ForEach$1;
.super Ljava/lang/Object;
.source "ForEach.java"

# interfaces
.implements Lcom/google/android/gm/template/ForEach$ItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/template/ForEach;->writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/template/ForEach;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/google/android/gm/template/ForEach;Ljava/lang/Appendable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gm/template/ForEach$1;->this$0:Lcom/google/android/gm/template/ForEach;

    iput-object p2, p0, Lcom/google/android/gm/template/ForEach$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/android/gm/template/EvalContext;)V
    .locals 4
    .parameter "subContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, j:I
    iget-object v3, p0, Lcom/google/android/gm/template/ForEach$1;->this$0:Lcom/google/android/gm/template/ForEach;

    invoke-static {v3}, Lcom/google/android/gm/template/ForEach;->access$000(Lcom/google/android/gm/template/ForEach;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, numNodes:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 73
    iget-object v3, p0, Lcom/google/android/gm/template/ForEach$1;->this$0:Lcom/google/android/gm/template/ForEach;

    invoke-static {v3}, Lcom/google/android/gm/template/ForEach;->access$000(Lcom/google/android/gm/template/ForEach;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/template/Node;

    .line 74
    .local v1, node:Lcom/google/android/gm/template/Node;
    iget-object v3, p0, Lcom/google/android/gm/template/ForEach$1;->val$out:Ljava/lang/Appendable;

    invoke-virtual {v1, v3, p1}, Lcom/google/android/gm/template/Node;->writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1           #node:Lcom/google/android/gm/template/Node;
    :cond_0
    return-void
.end method
