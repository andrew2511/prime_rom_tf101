.class Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;
.super Ljava/lang/Object;
.source "PredicatedNodeTest.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/PredicatedNodeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PredOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/PredicatedNodeTest;I)V
    .registers 3
    .parameter
    .parameter "index"

    .prologue
    .line 624
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput p2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    .line 626
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    #getter for: Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;
    invoke-static {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->access$000(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 4
    .parameter "exp"

    .prologue
    .line 642
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 643
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    #getter for: Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;
    invoke-static {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->access$000(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    aput-object p1, v0, v1

    .line 644
    return-void
.end method
