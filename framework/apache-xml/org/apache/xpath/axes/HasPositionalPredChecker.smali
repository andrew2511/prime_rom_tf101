.class public Lorg/apache/xpath/axes/HasPositionalPredChecker;
.super Lorg/apache/xpath/XPathVisitor;
.source "HasPositionalPredChecker.java"


# instance fields
.field private m_hasPositionalPred:Z

.field private m_predDepth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    .line 40
    iput-boolean v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    .line 41
    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    return-void
.end method

.method public static check(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 52
    new-instance v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;

    invoke-direct {v0}, Lorg/apache/xpath/axes/HasPositionalPredChecker;-><init>()V

    .line 53
    .local v0, hppc:Lorg/apache/xpath/axes/HasPositionalPredChecker;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 54
    iget-boolean v1, v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    return v1
.end method


# virtual methods
.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .registers 5
    .parameter "owner"
    .parameter "func"

    .prologue
    const/4 v1, 0x1

    .line 66
    instance-of v0, p2, Lorg/apache/xpath/functions/FuncPosition;

    if-nez v0, :cond_9

    instance-of v0, p2, Lorg/apache/xpath/functions/FuncLast;

    if-eqz v0, :cond_b

    .line 68
    :cond_9
    iput-boolean v1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    .line 69
    :cond_b
    return v1
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .registers 5
    .parameter "owner"
    .parameter "pred"

    .prologue
    const/4 v1, 0x1

    .line 97
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    .line 99
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    if-ne v0, v1, :cond_35

    .line 101
    instance-of v0, p2, Lorg/apache/xpath/operations/Variable;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/objects/XNumber;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/operations/Div;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/operations/Plus;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/operations/Minus;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/operations/Mod;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/operations/Quo;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/operations/Mult;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/operations/Number;

    if-nez v0, :cond_33

    instance-of v0, p2, Lorg/apache/xpath/functions/Function;

    if-eqz v0, :cond_3c

    .line 111
    :cond_33
    iput-boolean v1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    .line 116
    :cond_35
    :goto_35
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    .line 119
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_3c
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    goto :goto_35
.end method
