.class Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;
.super Ljava/lang/Object;
.source "FunctionMultiArgs.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/functions/FunctionMultiArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArgMultiOwner"
.end annotation


# instance fields
.field m_argIndex:I

.field final synthetic this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;


# direct methods
.method constructor <init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V
    .registers 3
    .parameter
    .parameter "index"

    .prologue
    .line 167
    iput-object p1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    .line 169
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    iget-object v0, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 4
    .parameter "exp"

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 186
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    iget-object v0, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    aput-object p1, v0, v1

    .line 187
    return-void
.end method
