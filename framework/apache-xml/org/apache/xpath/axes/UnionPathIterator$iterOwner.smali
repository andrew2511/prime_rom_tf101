.class Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;
.super Ljava/lang/Object;
.source "UnionPathIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/UnionPathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "iterOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/axes/UnionPathIterator;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V
    .registers 3
    .parameter
    .parameter "index"

    .prologue
    .line 496
    iput-object p1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    .line 498
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    iget-object v0, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    iget v1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 6
    .parameter "exp"

    .prologue
    .line 514
    instance-of v2, p1, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v2, :cond_31

    .line 518
    new-instance v1, Lorg/apache/xpath/axes/WalkingIterator;

    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {v2}, Lorg/apache/xpath/axes/UnionPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 519
    .local v1, wi:Lorg/apache/xpath/axes/WalkingIterator;
    new-instance v0, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    .line 520
    .local v0, few:Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v1, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 521
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    .line 522
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/WalkingIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 523
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 524
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 525
    move-object p1, v1

    .line 529
    .end local v0           #few:Lorg/apache/xpath/axes/FilterExprWalker;
    .end local v1           #wi:Lorg/apache/xpath/axes/WalkingIterator;
    :goto_26
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    iget-object v2, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    iget v3, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    check-cast p1, Lorg/apache/xpath/axes/LocPathIterator;

    .end local p1
    aput-object p1, v2, v3

    .line 530
    return-void

    .line 528
    .restart local p1
    :cond_31
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {p1, v2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_26
.end method
