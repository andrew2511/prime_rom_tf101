.class public Lorg/apache/xpath/VariableStack;
.super Ljava/lang/Object;
.source "VariableStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLEARLIMITATION:I = 0x400

.field private static m_nulls:[Lorg/apache/xpath/objects/XObject;


# instance fields
.field private _currentFrameBottom:I

.field _frameTop:I

.field _links:[I

.field _linksTop:I

.field _stackFrames:[Lorg/apache/xpath/objects/XObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 397
    const/16 v0, 0x400

    new-array v0, v0, [Lorg/apache/xpath/objects/XObject;

    sput-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Lorg/apache/xpath/VariableStack;->reset()V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initStackSize"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/VariableStack;->reset(II)V

    .line 61
    return-void
.end method


# virtual methods
.method public clearLocalSlots(II)V
    .registers 6
    .parameter "start"
    .parameter "len"

    .prologue
    .line 411
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, v0

    .line 413
    sget-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/VariableStack;

    .line 76
    .local v0, vs:Lorg/apache/xpath/VariableStack;
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v1}, [Lorg/apache/xpath/objects/XObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xpath/objects/XObject;

    check-cast v1, [Lorg/apache/xpath/objects/XObject;

    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    .line 77
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_links:[I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 79
    monitor-exit p0

    return-object v0

    .line 73
    .end local v0           #vs:Lorg/apache/xpath/VariableStack;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public elementAt(I)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .parameter "i"

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .parameter "xctxt"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    .line 451
    .local v0, val:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_16

    .line 452
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    aput-object v2, v1, p2

    move-object v1, v2

    .line 454
    :goto_15
    return-object v1

    :cond_16
    move-object v1, v0

    goto :goto_15
.end method

.method public getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .parameter "xctxt"
    .parameter "index"
    .parameter "destructiveOK"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    .line 478
    .local v0, val:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_16

    .line 479
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    aput-object v2, v1, p2

    move-object v1, v2

    .line 481
    :goto_15
    return-object v1

    :cond_16
    if-eqz p3, :cond_1a

    move-object v1, v0

    goto :goto_15

    :cond_1a
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    goto :goto_15
.end method

.method public getLocalVariable(II)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .parameter "index"
    .parameter "frame"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 340
    add-int/2addr p1, p2

    .line 342
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p1

    .line 344
    .local v0, val:Lorg/apache/xpath/objects/XObject;
    return-object v0
.end method

.method public getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .parameter "xctxt"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 308
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v1

    .line 310
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    .line 312
    .local v0, val:Lorg/apache/xpath/objects/XObject;
    if-nez v0, :cond_1a

    .line 313
    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v1

    .line 318
    :cond_1a
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_2c

    .line 319
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    aput-object v2, v1, p2

    move-object v1, v2

    .line 321
    :goto_2b
    return-object v1

    :cond_2c
    move-object v1, v0

    goto :goto_2b
.end method

.method public getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .registers 8
    .parameter "xctxt"
    .parameter "index"
    .parameter "destructiveOK"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 365
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v1

    .line 367
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    .line 369
    .local v0, val:Lorg/apache/xpath/objects/XObject;
    if-nez v0, :cond_1a

    .line 370
    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v1

    .line 375
    :cond_1a
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_2c

    .line 376
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    aput-object v2, v1, p2

    move-object v1, v2

    .line 378
    :goto_2b
    return-object v1

    :cond_2c
    if-eqz p3, :cond_30

    move-object v1, v0

    goto :goto_2b

    :cond_30
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    goto :goto_2b
.end method

.method public getStackFrame()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return v0
.end method

.method public getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .registers 13
    .parameter "xctxt"
    .parameter "qname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v1

    .line 511
    .local v1, prefixResolver:Lorg/apache/xml/utils/PrefixResolver;
    instance-of v5, v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v5, :cond_52

    .line 516
    move-object v0, v1

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v2, v0

    .line 519
    .local v2, prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v5, v2, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v5, :cond_3f

    .line 521
    :goto_10
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v5, :cond_3f

    .line 523
    move-object v3, v2

    .line 525
    .local v3, savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_19
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 527
    instance-of v5, v2, Lorg/apache/xalan/templates/ElemVariable;

    if-eqz v5, :cond_19

    .line 529
    move-object v0, v2

    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    move-object v4, v0

    .line 531
    .local v4, vvar:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 532
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    .line 541
    .end local v3           #savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_39
    return-object v5

    .line 535
    .end local v4           #vvar:Lorg/apache/xalan/templates/ElemVariable;
    .restart local v3       #savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3a
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    .line 536
    goto :goto_10

    .line 539
    .end local v3           #savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3f
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v4

    .line 540
    .restart local v4       #vvar:Lorg/apache/xalan/templates/ElemVariable;
    if-eqz v4, :cond_52

    .line 541
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    goto :goto_39

    .line 544
    .end local v2           #prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v4           #vvar:Lorg/apache/xalan/templates/ElemVariable;
    :cond_52
    new-instance v5, Ljavax/xml/transform/TransformerException;

    const-string v6, "ER_VAR_NOT_RESOLVABLE"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public isLocalSet(I)Z
    .registers 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public link(I)I
    .registers 7
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 213
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    .line 214
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    .line 216
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v3, v3

    if-lt v2, v3, :cond_23

    .line 218
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1000

    add-int/2addr v2, p1

    new-array v1, v2, [Lorg/apache/xpath/objects/XObject;

    .line 220
    .local v1, newsf:[Lorg/apache/xpath/objects/XObject;
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    .line 225
    .end local v1           #newsf:[Lorg/apache/xpath/objects/XObject;
    :cond_23
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v3, v3

    if-lt v2, v3, :cond_3d

    .line 227
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v2, v2

    add-int/lit16 v2, v2, 0x800

    new-array v0, v2, [I

    .line 229
    .local v0, newlinks:[I
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    .line 234
    .end local v0           #newlinks:[I
    :cond_3d
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v3, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    iget v4, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    aput v4, v2, v3

    .line 236
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return v2
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 143
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    if-nez v2, :cond_12

    const/16 v2, 0x1000

    move v0, v2

    .line 145
    .local v0, linksSize:I
    :goto_7
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    if-nez v2, :cond_17

    const/16 v2, 0x2000

    move v1, v2

    .line 147
    .local v1, varArraySize:I
    :goto_e
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/VariableStack;->reset(II)V

    .line 148
    return-void

    .line 143
    .end local v0           #linksSize:I
    .end local v1           #varArraySize:I
    :cond_12
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v2, v2

    move v0, v2

    goto :goto_7

    .line 145
    .restart local v0       #linksSize:I
    :cond_17
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v2, v2

    move v1, v2

    goto :goto_e
.end method

.method protected reset(II)V
    .registers 7
    .parameter "linksSize"
    .parameter "varArraySize"

    .prologue
    const/4 v3, 0x0

    .line 156
    iput v3, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    .line 157
    iput v3, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    .line 160
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    if-nez v0, :cond_d

    .line 161
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    .line 167
    :cond_d
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aput v3, v0, v1

    .line 170
    new-array v0, p2, [Lorg/apache/xpath/objects/XObject;

    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    .line 171
    return-void
.end method

.method public setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V
    .registers 4
    .parameter "index"
    .parameter "val"

    .prologue
    .line 427
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aput-object p2, v0, p1

    .line 428
    return-void
.end method

.method public setLocalVariable(ILorg/apache/xpath/objects/XObject;)V
    .registers 5
    .parameter "index"
    .parameter "val"

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    .line 273
    return-void
.end method

.method public setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V
    .registers 6
    .parameter "index"
    .parameter "val"
    .parameter "stackFrame"

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    add-int v1, p1, p3

    aput-object p2, v0, v1

    .line 288
    return-void
.end method

.method public setStackFrame(I)V
    .registers 2
    .parameter "sf"

    .prologue
    .line 180
    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    .line 181
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    return v0
.end method

.method public unlink()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    .line 246
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    sub-int/2addr v1, v2

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    .line 247
    return-void
.end method

.method public unlink(I)V
    .registers 5
    .parameter "currentFrame"

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    .line 258
    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    .line 259
    return-void
.end method
