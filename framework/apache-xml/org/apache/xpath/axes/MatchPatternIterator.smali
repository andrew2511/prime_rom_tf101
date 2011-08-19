.class public Lorg/apache/xpath/axes/MatchPatternIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "MatchPatternIterator.java"


# static fields
.field private static final DEBUG:Z = false

.field static final serialVersionUID:J = -0x482e35cb67d7471aL


# instance fields
.field protected m_pattern:Lorg/apache/xpath/patterns/StepPattern;

.field protected m_superAxis:I

.field protected m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 12
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v6}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 50
    const/4 v5, -0x1

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    .line 80
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    .line 82
    .local v0, firstStepPos:I
    invoke-static {p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkerFactory;->loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, fromRoot:Z
    const/4 v3, 0x0

    .line 86
    .local v3, walkBack:Z
    const/4 v4, 0x0

    .line 87
    .local v4, walkDescendants:Z
    const/4 v2, 0x0

    .line 89
    .local v2, walkAttributes:Z
    const/high16 v5, 0x2800

    and-int/2addr v5, p3

    if-eqz v5, :cond_1d

    .line 91
    const/4 v1, 0x1

    .line 93
    :cond_1d
    const v5, 0x5d86000

    and-int/2addr v5, p3

    if-eqz v5, :cond_24

    .line 101
    const/4 v3, 0x1

    .line 103
    :cond_24
    const/high16 v5, 0x7

    and-int/2addr v5, p3

    if-eqz v5, :cond_2a

    .line 107
    const/4 v4, 0x1

    .line 109
    :cond_2a
    const v5, 0x208000

    and-int/2addr v5, p3

    if-eqz v5, :cond_31

    .line 111
    const/4 v2, 0x1

    .line 119
    :cond_31
    if-nez v1, :cond_35

    if-eqz v3, :cond_3f

    .line 121
    :cond_35
    if-eqz v2, :cond_3a

    .line 123
    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    .line 150
    :goto_39
    return-void

    .line 127
    :cond_3a
    const/16 v5, 0x11

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_39

    .line 130
    :cond_3f
    if-eqz v4, :cond_4c

    .line 132
    if-eqz v2, :cond_48

    .line 134
    const/16 v5, 0xe

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_39

    .line 138
    :cond_48
    const/4 v5, 0x5

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_39

    .line 143
    :cond_4c
    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_39
.end method


# virtual methods
.method public acceptNode(ILorg/apache/xpath/XPathContext;)S
    .registers 7
    .parameter "n"
    .parameter "xctxt"

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 293
    iget v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    invoke-virtual {p2, v2}, Lorg/apache/xpath/XPathContext;->pushIteratorRoot(I)V

    .line 304
    iget-object v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 314
    .local v0, score:Lorg/apache/xpath/objects/XObject;
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_10} :catch_1c

    if-ne v0, v2, :cond_1a

    const/4 v2, 0x3

    .line 325
    :goto_13
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    return v2

    .line 314
    :cond_1a
    const/4 v2, 0x1

    goto :goto_13

    .line 317
    .end local v0           #score:Lorg/apache/xpath/objects/XObject;
    :catch_1c
    move-exception v2

    move-object v1, v2

    .line 321
    .local v1, se:Ljavax/xml/transform/TransformerException;
    :try_start_1e
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_28

    .line 325
    .end local v1           #se:Ljavax/xml/transform/TransformerException;
    :catchall_28
    move-exception v2

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    throw v2
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_allowDetach:Z

    if-eqz v0, :cond_a

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 180
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 182
    :cond_a
    return-void
.end method

.method protected getNextNode()I
    .registers 4

    .prologue
    .line 190
    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    :goto_d
    iput v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    .line 193
    iget v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    return v0

    .line 190
    :cond_12
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    iget v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_d
.end method

.method public nextNode()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 205
    iget-boolean v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_foundLast:Z

    if-eqz v3, :cond_8

    move v3, v5

    .line 272
    :goto_7
    return v3

    .line 212
    :cond_8
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v5, v3, :cond_37

    .line 214
    iget-object v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 217
    .local v2, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 219
    .local v1, savedStart:I
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 235
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->getNextNode()I

    move-result v0

    .line 237
    .local v0, next:I
    if-eq v5, v0, :cond_29

    .line 239
    iget-object v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, v0, v3}, Lorg/apache/xpath/axes/MatchPatternIterator;->acceptNode(ILorg/apache/xpath/XPathContext;)S

    move-result v3

    if-ne v4, v3, :cond_3a

    .line 249
    :cond_29
    :goto_29
    if-eq v5, v0, :cond_3d

    .line 256
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->incrementCurrentPos()V
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_49

    .line 269
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v5, v3, :cond_35

    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_35
    move v3, v0

    goto :goto_7

    .line 224
    .end local v0           #next:I
    .end local v1           #savedStart:I
    .end local v2           #vars:Lorg/apache/xpath/VariableStack;
    :cond_37
    const/4 v2, 0x0

    .line 225
    .restart local v2       #vars:Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    .restart local v1       #savedStart:I
    goto :goto_1b

    .line 247
    .restart local v0       #next:I
    :cond_3a
    if-ne v0, v5, :cond_1b

    goto :goto_29

    .line 262
    :cond_3d
    const/4 v3, 0x1

    :try_start_3e
    iput-boolean v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_foundLast:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_49

    .line 269
    iget v3, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v5, v3, :cond_47

    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_47
    move v3, v5

    goto :goto_7

    .line 269
    .end local v0           #next:I
    :catchall_49
    move-exception v3

    iget v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v5, v4, :cond_51

    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_51
    throw v3
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 5
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 164
    return-void
.end method
