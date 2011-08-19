.class Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;
.super Ljava/lang/Object;
.source "FilterExprIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/FilterExprIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "filterExprOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/axes/FilterExprIterator;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/FilterExprIterator;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    #getter for: Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;
    invoke-static {v0}, Lorg/apache/xpath/axes/FilterExprIterator;->access$000(Lorg/apache/xpath/axes/FilterExprIterator;)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3
    .parameter "exp"

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 180
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    #setter for: Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;
    invoke-static {v0, p1}, Lorg/apache/xpath/axes/FilterExprIterator;->access$002(Lorg/apache/xpath/axes/FilterExprIterator;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;

    .line 181
    return-void
.end method
