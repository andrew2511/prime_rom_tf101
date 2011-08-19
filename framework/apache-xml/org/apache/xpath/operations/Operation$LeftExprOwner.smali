.class Lorg/apache/xpath/operations/Operation$LeftExprOwner;
.super Ljava/lang/Object;
.source "Operation.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/operations/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeftExprOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/operations/Operation;


# direct methods
.method constructor <init>(Lorg/apache/xpath/operations/Operation;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lorg/apache/xpath/operations/Operation$LeftExprOwner;->this$0:Lorg/apache/xpath/operations/Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation$LeftExprOwner;->this$0:Lorg/apache/xpath/operations/Operation;

    iget-object v0, v0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3
    .parameter "exp"

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation$LeftExprOwner;->this$0:Lorg/apache/xpath/operations/Operation;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 163
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation$LeftExprOwner;->this$0:Lorg/apache/xpath/operations/Operation;

    iput-object p1, v0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    .line 164
    return-void
.end method
