.class Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;
.super Ljava/lang/Object;
.source "AppendingLayoutBehavior.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endBlock(Lcom/amazon/topaz/internal/layout/Block;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 67
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$000(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 82
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$102(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;I)I

    .line 73
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$002(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    .line 74
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$202(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/LayoutLine;)Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 76
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$100(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$300(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 82
    goto :goto_0
.end method

.method public startBlock(Lcom/amazon/topaz/internal/layout/Block;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 88
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$000(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 102
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$102(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;I)I

    .line 93
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$002(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    .line 94
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$202(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/LayoutLine;)Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 96
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$100(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$300(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 98
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 102
    goto :goto_0
.end method

.method public visitLine(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/internal/layout/LayoutLine;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 108
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$000(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 121
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0, v2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$102(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;I)I

    .line 113
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$002(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    .line 114
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0, p2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$202(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/LayoutLine;)Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 115
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$100(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->access$300(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 121
    goto :goto_0
.end method
