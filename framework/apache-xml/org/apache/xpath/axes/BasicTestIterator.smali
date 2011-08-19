.class public abstract Lorg/apache/xpath/axes/BasicTestIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "BasicTestIterator.java"


# static fields
.field static final serialVersionUID:J = 0x30a59aca78c5c1efL


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2
    .parameter "nscontext"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 8
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 78
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    .line 79
    .local v0, firstStepPos:I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    .line 81
    .local v1, whatToShow:I
    and-int/lit16 v2, v1, 0x1043

    if-eqz v2, :cond_13

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 87
    :cond_13
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/BasicTestIterator;->initNodeTest(I)V

    .line 93
    :goto_16
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/BasicTestIterator;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    .line 94
    return-void

    .line 90
    :cond_1a
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xpath/axes/BasicTestIterator;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .registers 5
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .parameter "shouldLoadWalkers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 116
    return-void
.end method


# virtual methods
.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ChildTestIterator;

    .line 219
    .local v0, clone:Lorg/apache/xpath/axes/ChildTestIterator;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/ChildTestIterator;->resetProximityPositions()V

    .line 221
    return-object v0
.end method

.method protected abstract getNextNode()I
.end method

.method public nextNode()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 135
    iget-boolean v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_foundLast:Z

    if-eqz v3, :cond_a

    .line 137
    iput v5, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_lastFetched:I

    move v3, v5

    .line 201
    :goto_9
    return v3

    .line 141
    :cond_a
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_lastFetched:I

    if-ne v5, v3, :cond_11

    .line 143
    invoke-virtual {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->resetProximityPositions()V

    .line 150
    :cond_11
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    if-eq v5, v3, :cond_41

    .line 152
    iget-object v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 155
    .local v2, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 157
    .local v1, savedStart:I
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 170
    :cond_24
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->getNextNode()I

    move-result v0

    .line 172
    .local v0, next:I
    if-eq v5, v0, :cond_30

    .line 174
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;->acceptNode(I)S

    move-result v3

    if-ne v4, v3, :cond_44

    .line 184
    :cond_30
    :goto_30
    if-eq v5, v0, :cond_47

    .line 186
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_pos:I
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_53

    .line 198
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    if-eq v5, v3, :cond_3f

    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_3f
    move v3, v0

    goto :goto_9

    .line 162
    .end local v0           #next:I
    .end local v1           #savedStart:I
    .end local v2           #vars:Lorg/apache/xpath/VariableStack;
    :cond_41
    const/4 v2, 0x0

    .line 163
    .restart local v2       #vars:Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    .restart local v1       #savedStart:I
    goto :goto_24

    .line 182
    .restart local v0       #next:I
    :cond_44
    if-ne v0, v5, :cond_24

    goto :goto_30

    .line 191
    :cond_47
    const/4 v3, 0x1

    :try_start_48
    iput-boolean v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_foundLast:Z
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_53

    .line 198
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    if-eq v5, v3, :cond_51

    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_51
    move v3, v5

    goto :goto_9

    .line 198
    .end local v0           #next:I
    :catchall_53
    move-exception v3

    iget v4, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    if-eq v5, v4, :cond_5b

    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_5b
    throw v3
.end method
