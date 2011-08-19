.class public Lorg/apache/xpath/patterns/UnionPattern;
.super Lorg/apache/xpath/Expression;
.source "UnionPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x5c9232e74e04ed5cL


# instance fields
.field private m_patterns:[Lorg/apache/xpath/patterns/StepPattern;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 7
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 177
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnionPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/UnionPattern;)Z

    .line 178
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v2, :cond_1c

    .line 180
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v1, v2

    .line 181
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1c

    .line 183
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v2, v2, v0

    new-instance v3, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;

    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;-><init>(Lorg/apache/xpath/patterns/UnionPattern;I)V

    invoke-virtual {v2, v3, p2}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 186
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_1c
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 4

    .prologue
    .line 62
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v2, :cond_19

    .line 64
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v1, v2

    .line 65
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_19

    .line 67
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xpath/patterns/StepPattern;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 68
    const/4 v2, 0x1

    .line 71
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_15
    return v2

    .line 65
    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 71
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_19
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 9
    .parameter "expr"

    .prologue
    const/4 v6, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/UnionPattern;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 213
    :goto_8
    return v4

    .line 196
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/patterns/UnionPattern;

    move-object v3, v0

    .line 198
    .local v3, up:Lorg/apache/xpath/patterns/UnionPattern;
    iget-object v4, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_35

    .line 200
    iget-object v4, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v2, v4

    .line 201
    .local v2, n:I
    iget-object v4, v3, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v4, v4

    if-eq v4, v2, :cond_1f

    :cond_1d
    move v4, v6

    .line 202
    goto :goto_8

    .line 204
    :cond_1f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v2, :cond_3b

    .line 206
    iget-object v4, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v4, v4, v1

    iget-object v5, v3, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_32

    move v4, v6

    .line 207
    goto :goto_8

    .line 204
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 210
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_35
    iget-object v4, v3, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_3b

    move v4, v6

    .line 211
    goto :goto_8

    .line 213
    :cond_3b
    const/4 v4, 0x1

    goto :goto_8
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, bestScore:Lorg/apache/xpath/objects/XObject;
    iget-object v4, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v2, v4

    .line 123
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_27

    .line 125
    iget-object v4, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    .line 127
    .local v3, score:Lorg/apache/xpath/objects/XObject;
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_16

    .line 129
    if-nez v0, :cond_19

    .line 130
    move-object v0, v3

    .line 123
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 131
    :cond_19
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_16

    .line 132
    move-object v0, v3

    goto :goto_16

    .line 136
    .end local v3           #score:Lorg/apache/xpath/objects/XObject;
    :cond_27
    if-nez v0, :cond_2b

    .line 138
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 141
    :cond_2b
    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 5
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 49
    iget-object v1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_10
    return-void
.end method

.method public getPatterns()[Lorg/apache/xpath/patterns/StepPattern;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public setPatterns([Lorg/apache/xpath/patterns/StepPattern;)V
    .registers 4
    .parameter "patterns"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    .line 83
    if-eqz p1, :cond_10

    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 87
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/xpath/patterns/StepPattern;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 91
    .end local v0           #i:I
    :cond_10
    return-void
.end method
