.class public Lorg/apache/xalan/templates/RedundentExprEliminator;
.super Lorg/apache/xalan/templates/XSLTVisitor;
.source "RedundentExprEliminator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DIAGNOSE_MULTISTEPLIST:Z = false

.field public static final DIAGNOSE_NUM_PATHS_REDUCED:Z = false

.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field private static m_uniquePseudoVarID:I


# instance fields
.field m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

.field m_absPaths:Ljava/util/Vector;

.field m_isSameContext:Z

.field m_paths:Ljava/util/Vector;

.field m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/xalan/templates/XSLTVisitor;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-direct {v0}, Lorg/apache/xalan/templates/AbsPathChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    .line 66
    new-instance v0, Lorg/apache/xalan/templates/VarNameCollector;

    invoke-direct {v0}, Lorg/apache/xalan/templates/VarNameCollector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 76
    return-void
.end method

.method private final assertIsLocPathIterator(Lorg/apache/xpath/Expression;Lorg/apache/xpath/ExpressionOwner;)V
    .registers 8
    .parameter "expr1"
    .parameter "eo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1244
    instance-of v2, p1, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v2, :cond_72

    .line 1247
    instance-of v2, p1, Lorg/apache/xpath/operations/Variable;

    if-eqz v2, :cond_56

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programmer\'s assertion: expr1 not an iterator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/operations/Variable;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    .local v1, errMsg:Ljava/lang/String;
    :goto_23
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1254
    .end local v1           #errMsg:Ljava/lang/String;
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programmer\'s assertion: expr1 not an iterator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #errMsg:Ljava/lang/String;
    goto :goto_23

    .line 1261
    .end local v1           #errMsg:Ljava/lang/String;
    :cond_72
    return-void
.end method

.method protected static assertion(ZLjava/lang/String;)V
    .registers 6
    .parameter "b"
    .parameter "msg"

    .prologue
    .line 1288
    if-nez p0, :cond_14

    .line 1290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_ASSERT_REDUNDENT_EXPR_ELIMINATOR"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_14
    return-void
.end method

.method private static declared-synchronized getPseudoVarID()I
    .registers 3

    .prologue
    .line 803
    const-class v0, Lorg/apache/xalan/templates/RedundentExprEliminator;

    monitor-enter v0

    :try_start_3
    sget v1, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static validateNewAddition(Ljava/util/Vector;Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)V
    .registers 10
    .parameter "paths"
    .parameter "owner"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1272
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    if-ne v3, p2, :cond_32

    move v3, v6

    :goto_9
    const-string v4, "owner.getExpression() != path!!!"

    invoke-static {v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1273
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1275
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v2, :cond_38

    .line 1277
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    .line 1278
    .local v0, ew:Lorg/apache/xpath/ExpressionOwner;
    if-eq v0, p1, :cond_34

    move v3, v6

    :goto_1e
    const-string v4, "duplicate owner on the list!!!"

    invoke-static {v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1279
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    if-eq v3, p2, :cond_36

    move v3, v6

    :goto_2a
    const-string v4, "duplicate expression on the list!!!"

    invoke-static {v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1275
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .end local v0           #ew:Lorg/apache/xpath/ExpressionOwner;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_32
    move v3, v5

    .line 1272
    goto :goto_9

    .restart local v0       #ew:Lorg/apache/xpath/ExpressionOwner;
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_34
    move v3, v5

    .line 1278
    goto :goto_1e

    :cond_36
    move v3, v5

    .line 1279
    goto :goto_2a

    .line 1281
    .end local v0           #ew:Lorg/apache/xpath/ExpressionOwner;
    :cond_38
    return-void
.end method


# virtual methods
.method protected addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 11
    .parameter "psuedoVarRecipient"
    .parameter "lpi"
    .parameter "psuedoVar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x29

    .line 902
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 904
    .local v1, ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {p2, v6, v3}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 910
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/VarNameCollector;->getVarCount()I

    move-result v3

    if-lez v3, :cond_32

    .line 912
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 913
    .local v0, baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 914
    .local v2, varElem:Lorg/apache/xalan/templates/ElemVariable;
    :goto_1c
    if-eqz v2, :cond_32

    .line 916
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xalan/templates/VarNameCollector;->doesOccur(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 918
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    .line 919
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 926
    .end local v0           #baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #varElem:Lorg/apache/xalan/templates/ElemVariable;
    :cond_32
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    if-ne v5, v3, :cond_55

    .line 929
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isParam(Lorg/apache/xpath/ExpressionNode;)Z

    move-result v3

    if-eqz v3, :cond_47

    move-object v3, v6

    .line 941
    :goto_41
    return-object v3

    .line 922
    .restart local v0       #baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v2       #varElem:Lorg/apache/xalan/templates/ElemVariable;
    :cond_42
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    goto :goto_1c

    .line 932
    .end local v0           #baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #varElem:Lorg/apache/xalan/templates/ElemVariable;
    :cond_47
    if-eqz v1, :cond_55

    .line 934
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 935
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    if-eq v5, v3, :cond_47

    .line 939
    :cond_55
    invoke-virtual {p1, p3, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 940
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/VarNameCollector;->reset()V

    move-object v3, p3

    .line 941
    goto :goto_41
.end method

.method protected changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;
    .registers 16
    .parameter "uniquePseudoVarName"
    .parameter "wi"
    .parameter "numSteps"
    .parameter "isGlobal"

    .prologue
    const/4 v10, 0x1

    .line 442
    new-instance v5, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v5}, Lorg/apache/xpath/operations/Variable;-><init>()V

    .line 443
    .local v5, var:Lorg/apache/xpath/operations/Variable;
    invoke-virtual {v5, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    .line 444
    invoke-virtual {v5, p4}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    .line 445
    if-eqz p4, :cond_22

    .line 446
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 447
    .local v0, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    .line 448
    .local v4, root:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v6

    .line 449
    .local v6, vars:Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v5, v8}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    .line 453
    .end local v0           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v4           #root:Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v6           #vars:Ljava/util/Vector;
    :cond_22
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v7

    .line 454
    .local v7, walker:Lorg/apache/xpath/axes/AxesWalker;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    if-ge v3, p3, :cond_3a

    .line 456
    if-eqz v7, :cond_38

    move v8, v10

    :goto_2c
    const-string v9, "Walker should not be null!"

    invoke-static {v8, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 457
    invoke-virtual {v7}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v7

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 456
    :cond_38
    const/4 v8, 0x0

    goto :goto_2c

    .line 460
    :cond_3a
    if-eqz v7, :cond_52

    .line 463
    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    .line 464
    .local v2, few:Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v2, v5}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    .line 465
    invoke-virtual {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 466
    invoke-virtual {v2, v7}, Lorg/apache/xpath/axes/FilterExprWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 467
    invoke-virtual {v7, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 468
    invoke-virtual {p2, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    move-object v8, p2

    .line 475
    .end local v2           #few:Lorg/apache/xpath/axes/FilterExprWalker;
    :goto_51
    return-object v8

    .line 473
    :cond_52
    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-direct {v1, v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;-><init>(Lorg/apache/xpath/Expression;)V

    .line 474
    .local v1, feis:Lorg/apache/xpath/axes/FilterExprIteratorSimple;
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    move-object v8, v1

    .line 475
    goto :goto_51
.end method

.method protected changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 11
    .parameter "varName"
    .parameter "owner"
    .parameter "paths"
    .parameter "psuedoVarRecipient"

    .prologue
    const/4 v5, 0x1

    .line 788
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v4, :cond_29

    new-instance v4, Lorg/apache/xpath/operations/VariableSafeAbsRef;

    invoke-direct {v4}, Lorg/apache/xpath/operations/VariableSafeAbsRef;-><init>()V

    move-object v3, v4

    .line 789
    .local v3, varRef:Lorg/apache/xpath/operations/Variable;
    :goto_b
    invoke-virtual {v3, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    .line 790
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v4, :cond_25

    .line 792
    move-object v0, p4

    check-cast v0, Lorg/apache/xalan/templates/StylesheetRoot;

    move-object v2, v0

    .line 793
    .local v2, root:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v1

    .line 796
    .local v1, globalVars:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    .line 797
    invoke-virtual {v3, v5}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    .line 799
    .end local v1           #globalVars:Ljava/util/Vector;
    .end local v2           #root:Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_25
    invoke-interface {p2, v3}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 800
    return-void

    .line 788
    .end local v3           #varRef:Lorg/apache/xpath/operations/Variable;
    :cond_29
    new-instance v4, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v4}, Lorg/apache/xpath/operations/Variable;-><init>()V

    move-object v3, v4

    goto :goto_b
.end method

.method protected countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 3
    .parameter "elem"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, count:I
    :goto_1
    if-eqz p1, :cond_a

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 407
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_1

    .line 409
    :cond_a
    return v0
.end method

.method protected countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I
    .registers 7
    .parameter "lpi"

    .prologue
    .line 753
    instance-of v4, p1, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz v4, :cond_18

    .line 755
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    move-object v3, v0

    .line 756
    .local v3, wi:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v3}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    .line 757
    .local v1, aw:Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x0

    .line 758
    .local v2, count:I
    :goto_d
    if-eqz v1, :cond_16

    .line 760
    add-int/lit8 v2, v2, 0x1

    .line 761
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    goto :goto_d

    :cond_16
    move v4, v2

    .line 766
    .end local v1           #aw:Lorg/apache/xpath/axes/AxesWalker;
    .end local v2           #count:I
    .end local v3           #wi:Lorg/apache/xpath/axes/WalkingIterator;
    :goto_17
    return v4

    :cond_18
    const/4 v4, 0x1

    goto :goto_17
.end method

.method protected createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 8
    .parameter "uniquePseudoVarName"
    .parameter "stylesheetRoot"
    .parameter "lpi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 848
    new-instance v1, Lorg/apache/xalan/templates/ElemVariable;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    .line 849
    .local v1, psuedoVar:Lorg/apache/xalan/templates/ElemVariable;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    .line 850
    new-instance v2, Lorg/apache/xpath/XPath;

    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    .line 851
    .local v2, xpath:Lorg/apache/xpath/XPath;
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 852
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    .line 854
    invoke-virtual {p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v0

    .line 855
    .local v0, globalVars:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    .line 856
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 857
    return-object v1
.end method

.method protected createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;
    .registers 9
    .parameter "wi"
    .parameter "numSteps"

    .prologue
    .line 489
    new-instance v2, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 492
    .local v2, newIter:Lorg/apache/xpath/axes/WalkingIterator;
    :try_start_9
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/axes/AxesWalker;

    .line 493
    .local v4, walker:Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 494
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 495
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1a
    if-ge v1, p2, :cond_30

    .line 497
    invoke-virtual {v4}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/AxesWalker;

    .line 498
    .local v3, next:Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 499
    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 500
    move-object v4, v3

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 502
    .end local v3           #next:Lorg/apache/xpath/axes/AxesWalker;
    :cond_30
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    :try_end_34
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_34} :catch_35

    .line 508
    return-object v2

    .line 504
    .end local v1           #i:I
    .end local v4           #walker:Lorg/apache/xpath/axes/AxesWalker;
    :catch_35
    move-exception v5

    move-object v0, v5

    .line 506
    .local v0, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 7
    .parameter "uniquePseudoVarName"
    .parameter "psuedoVarRecipient"
    .parameter "lpi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 879
    new-instance v0, Lorg/apache/xalan/templates/ElemVariablePsuedo;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemVariablePsuedo;-><init>()V

    .line 881
    .local v0, psuedoVar:Lorg/apache/xalan/templates/ElemVariable;
    new-instance v2, Lorg/apache/xpath/XPath;

    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    .line 882
    .local v2, xpath:Lorg/apache/xpath/XPath;
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/ElemVariablePsuedo;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 883
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    .line 885
    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    .line 887
    .local v1, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p3, v1}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 889
    return-object v1
.end method

.method protected createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 11
    .parameter "paths"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    .line 558
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_2e

    .line 560
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    .line 561
    .local v0, eo:Lorg/apache/xpath/ExpressionOwner;
    if-nez v0, :cond_15

    .line 558
    :cond_12
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 565
    :cond_15
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/LocPathIterator;

    .line 566
    .local v3, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v5

    .line 567
    .local v5, numPaths:I
    if-le v5, v7, :cond_12

    .line 569
    if-nez v1, :cond_29

    .line 570
    new-instance v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .end local v1           #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    invoke-direct {v1, p0, v0, v5, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    .restart local v1       #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    goto :goto_12

    .line 572
    :cond_29
    invoke-virtual {v1, v0, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v1

    goto :goto_12

    .line 576
    .end local v0           #eo:Lorg/apache/xpath/ExpressionOwner;
    .end local v3           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v5           #numPaths:I
    :cond_2e
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v6

    if-gt v6, v7, :cond_38

    :cond_36
    move-object v6, v8

    .line 579
    :goto_37
    return-object v6

    :cond_38
    move-object v6, v1

    goto :goto_37
.end method

.method protected createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;
    .registers 8
    .parameter "psuedoVarRecipient"
    .parameter "lpi"
    .parameter "isGlobal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 821
    new-instance v0, Lorg/apache/xml/utils/QName;

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPseudoVarID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .local v0, uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    if-eqz p3, :cond_27

    .line 825
    check-cast p1, Lorg/apache/xalan/templates/StylesheetRoot;

    .end local p1
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    .line 829
    :goto_26
    return-object v1

    .restart local p1
    :cond_27
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    goto :goto_26
.end method

.method protected diagnoseLineNumber(Lorg/apache/xpath/Expression;)V
    .registers 6
    .parameter "expr"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 285
    .local v0, e:Lorg/apache/xalan/templates/ElemTemplateElement;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected diagnoseMultistepList(IIZ)V
    .registers 7
    .parameter "matchCount"
    .parameter "lengthToTest"
    .parameter "isGlobal"

    .prologue
    .line 420
    if-lez p1, :cond_33

    .line 422
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found multistep matches: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 424
    if-eqz p3, :cond_34

    .line 425
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " (global)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_33
    :goto_33
    return-void

    .line 427
    :cond_34
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_33
.end method

.method protected diagnoseNumPaths(Ljava/util/Vector;II)V
    .registers 7
    .parameter "paths"
    .parameter "numPathsEliminated"
    .parameter "numUniquePathsEliminated"

    .prologue
    .line 1219
    if-lez p2, :cond_42

    .line 1221
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-ne p1, v0, :cond_43

    .line 1223
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eliminated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1224
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consolodated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redundent paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1234
    :cond_42
    :goto_42
    return-void

    .line 1229
    :cond_43
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eliminated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total global paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1230
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consolodated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redundent global paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_42
.end method

.method protected eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .registers 13
    .parameter "psuedoVarRecipient"
    .parameter "paths"

    .prologue
    .line 123
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v7

    .line 124
    .local v7, n:I
    const/4 v8, 0x0

    .line 125
    .local v8, numPathsEliminated:I
    const/4 v9, 0x0

    .line 126
    .local v9, numUniquePathsEliminated:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v7, :cond_22

    .line 128
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/ExpressionOwner;

    .line 129
    .local v3, owner:Lorg/apache/xpath/ExpressionOwner;
    if-eqz v3, :cond_1f

    .line 131
    add-int/lit8 v1, v2, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I

    move-result v6

    .line 132
    .local v6, found:I
    if-lez v6, :cond_1e

    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 134
    :cond_1e
    add-int/2addr v8, v6

    .line 126
    .end local v6           #found:I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 138
    .end local v3           #owner:Lorg/apache/xpath/ExpressionOwner;
    :cond_22
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    .line 142
    return-void
.end method

.method public eleminateRedundentGlobals(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .parameter "stylesheet"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    .line 106
    return-void
.end method

.method public eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .parameter "psuedoVarRecipient"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    .line 93
    return-void
.end method

.method protected eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .registers 11
    .parameter "psuedoVarRecipient"
    .parameter "paths"

    .prologue
    const/4 v7, 0x1

    .line 154
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v2

    .line 155
    .local v2, list:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    if-eqz v2, :cond_28

    .line 160
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p2, v0, :cond_1c

    move v3, v7

    .line 164
    .local v3, isGlobal:Z
    :goto_c
    iget v6, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    .line 165
    .local v6, longestStepsCount:I
    sub-int v4, v6, v7

    .local v4, i:I
    :goto_10
    if-lt v4, v7, :cond_28

    .line 167
    move-object v1, v2

    .line 168
    .local v1, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_13
    if-eqz v1, :cond_19

    .line 170
    iget v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-ge v0, v4, :cond_1f

    .line 165
    :cond_19
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 160
    .end local v1           #next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v3           #isGlobal:Z
    .end local v4           #i:I
    .end local v6           #longestStepsCount:I
    :cond_1c
    const/4 v0, 0x0

    move v3, v0

    goto :goto_c

    .restart local v1       #next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .restart local v3       #isGlobal:Z
    .restart local v4       #i:I
    .restart local v6       #longestStepsCount:I
    :cond_1f
    move-object v0, p0

    move-object v5, p1

    .line 172
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v2

    .line 173
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_13

    .line 177
    .end local v1           #next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v3           #isGlobal:Z
    .end local v4           #i:I
    .end local v6           #longestStepsCount:I
    :cond_28
    return-void
.end method

.method protected findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .registers 31
    .parameter "start"
    .parameter "firstOccuranceIndex"
    .parameter "firstOccuranceOwner"
    .parameter "psuedoVarRecipient"
    .parameter "paths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 602
    const/4 v7, 0x0

    .line 603
    .local v7, head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v20, 0x0

    .line 604
    .local v20, tail:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v14, 0x0

    .line 605
    .local v14, numPathsFound:I
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v13

    .line 607
    .local v13, n:I
    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    .line 610
    .local v5, expr1:Lorg/apache/xpath/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_86

    const/16 v23, 0x1

    move/from16 v9, v23

    .line 611
    .local v9, isGlobal:Z
    :goto_1c
    move-object v0, v5

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    move-object v11, v0

    .line 612
    .local v11, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v19

    .line 613
    .local v19, stepCount:I
    move/from16 v10, p1

    .local v10, j:I
    :goto_29
    if-ge v10, v13, :cond_8b

    .line 615
    move-object/from16 v0, p5

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/xpath/ExpressionOwner;

    .line 616
    .local v16, owner2:Lorg/apache/xpath/ExpressionOwner;
    if-eqz v16, :cond_83

    .line 618
    invoke-interface/range {v16 .. v16}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v6

    .line 619
    .local v6, expr2:Lorg/apache/xpath/Expression;
    invoke-virtual {v6, v11}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v8

    .line 620
    .local v8, isEqual:Z
    if-eqz v8, :cond_83

    .line 622
    move-object v0, v6

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    move-object v12, v0

    .line 623
    .local v12, lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    if-nez v7, :cond_5a

    .line 625
    new-instance v7, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .end local v7           #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v23, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v19

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    .line 626
    .restart local v7       #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object/from16 v20, v7

    .line 627
    add-int/lit8 v14, v14, 0x1

    .line 629
    :cond_5a
    new-instance v23, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, v19

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 630
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object/from16 v20, v0

    .line 633
    const/16 v23, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 636
    add-int/lit8 v14, v14, 0x1

    .line 613
    .end local v6           #expr2:Lorg/apache/xpath/Expression;
    .end local v8           #isEqual:Z
    .end local v12           #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_83
    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    .line 610
    .end local v9           #isGlobal:Z
    .end local v10           #j:I
    .end local v11           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v16           #owner2:Lorg/apache/xpath/ExpressionOwner;
    .end local v19           #stepCount:I
    :cond_86
    const/16 v23, 0x0

    move/from16 v9, v23

    goto :goto_1c

    .line 642
    .restart local v9       #isGlobal:Z
    .restart local v10       #j:I
    .restart local v11       #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v19       #stepCount:I
    :cond_8b
    if-nez v14, :cond_a1

    if-eqz v9, :cond_a1

    .line 644
    new-instance v7, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .end local v7           #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v23, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v19

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    .line 645
    .restart local v7       #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    add-int/lit8 v14, v14, 0x1

    .line 648
    :cond_a1
    if-eqz v7, :cond_eb

    .line 650
    if-eqz v9, :cond_d4

    move-object/from16 v17, p4

    .line 651
    .local v17, root:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_a7
    move-object v0, v7

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v18

    check-cast v18, Lorg/apache/xpath/axes/LocPathIterator;

    .line 652
    .local v18, sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v22

    .line 655
    .local v22, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v21

    .line 656
    .local v21, uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    :goto_c1
    if-eqz v7, :cond_de

    .line 658
    iget-object v15, v7, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 661
    .local v15, owner:Lorg/apache/xpath/ExpressionOwner;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v15

    move-object/from16 v3, p5

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 662
    iget-object v7, v7, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 663
    goto :goto_c1

    .line 650
    .end local v15           #owner:Lorg/apache/xpath/ExpressionOwner;
    .end local v17           #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v18           #sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v21           #uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    .end local v22           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_d4
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v23

    move-object/from16 v17, v23

    goto :goto_a7

    .line 666
    .restart local v17       #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v18       #sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v21       #uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    .restart local v22       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_de
    invoke-virtual/range {v22 .. v22}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v23

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 669
    .end local v17           #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v18           #sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v21           #uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    .end local v22           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_eb
    return v14
.end method

.method protected findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 20
    .parameter "head"

    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v12

    .line 299
    .local v12, numExprs:I
    new-array v6, v12, [Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 300
    .local v6, elems:[Lorg/apache/xalan/templates/ElemTemplateElement;
    new-array v3, v12, [I

    .line 304
    .local v3, ancestorCounts:[I
    move-object/from16 v10, p1

    .line 305
    .local v10, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v14, 0x2710

    .line 306
    .local v14, shortestAncestorCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_d
    if-ge v8, v12, :cond_33

    .line 308
    move-object v0, v10

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    .line 310
    .local v5, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    aput-object v5, v6, v8

    .line 311
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result v11

    .line 312
    .local v11, numAncestors:I
    aput v11, v3, v8

    .line 313
    if-ge v11, v14, :cond_2e

    .line 315
    move v14, v11

    .line 317
    :cond_2e
    iget-object v10, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 306
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 321
    .end local v5           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v11           #numAncestors:I
    :cond_33
    const/4 v8, 0x0

    :goto_34
    if-ge v8, v12, :cond_52

    .line 323
    aget v16, v3, v8

    move/from16 v0, v16

    move v1, v14

    if-le v0, v1, :cond_4f

    .line 325
    aget v16, v3, v8

    sub-int v13, v16, v14

    .line 326
    .local v13, numStepCorrection:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_42
    if-ge v9, v13, :cond_4f

    .line 328
    aget-object v16, v6, v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v16

    aput-object v16, v6, v8

    .line 326
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 321
    .end local v9           #j:I
    .end local v13           #numStepCorrection:I
    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 335
    :cond_52
    const/4 v7, 0x0

    .local v7, first:Lorg/apache/xalan/templates/ElemTemplateElement;
    move v15, v14

    .line 336
    .end local v14           #shortestAncestorCount:I
    .local v15, shortestAncestorCount:I
    :goto_54
    add-int/lit8 v14, v15, -0x1

    .end local v15           #shortestAncestorCount:I
    .restart local v14       #shortestAncestorCount:I
    if-ltz v15, :cond_91

    .line 338
    const/4 v4, 0x1

    .line 339
    .local v4, areEqual:Z
    const/16 v16, 0x0

    aget-object v7, v6, v16

    .line 340
    const/4 v8, 0x1

    :goto_5e
    if-ge v8, v12, :cond_68

    .line 342
    aget-object v16, v6, v8

    move-object v0, v7

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_7e

    .line 344
    const/4 v4, 0x0

    .line 350
    :cond_68
    if-eqz v4, :cond_81

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v16

    if-eqz v16, :cond_81

    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->canAcceptVariables()Z

    move-result v16

    if-eqz v16, :cond_81

    move-object/from16 v16, v7

    .line 367
    .end local v4           #areEqual:Z
    :goto_7d
    return-object v16

    .line 340
    .restart local v4       #areEqual:Z
    :cond_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 360
    :cond_81
    const/4 v8, 0x0

    :goto_82
    if-ge v8, v12, :cond_8f

    .line 362
    aget-object v16, v6, v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v16

    aput-object v16, v6, v8

    .line 360
    add-int/lit8 v8, v8, 0x1

    goto :goto_82

    :cond_8f
    move v15, v14

    .line 364
    .end local v14           #shortestAncestorCount:I
    .restart local v15       #shortestAncestorCount:I
    goto :goto_54

    .line 366
    .end local v4           #areEqual:Z
    .end local v15           #shortestAncestorCount:I
    .restart local v14       #shortestAncestorCount:I
    :cond_91
    const/16 v16, 0x0

    const-string v17, "Could not find common ancestor!!!"

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 367
    const/16 v16, 0x0

    goto :goto_7d
.end method

.method protected getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 6
    .parameter "expr"

    .prologue
    .line 1038
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    .line 1039
    .local v0, parent:Lorg/apache/xpath/ExpressionNode;
    :goto_4
    if-eqz v0, :cond_12

    .line 1041
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v1, :cond_d

    .line 1042
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .end local v0           #parent:Lorg/apache/xpath/ExpressionNode;
    return-object v0

    .line 1043
    .restart local v0       #parent:Lorg/apache/xpath/ExpressionNode;
    :cond_d
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    goto :goto_4

    .line 1045
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_ASSERT_NO_TEMPLATE_PARENT"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 5
    .parameter "elem"

    .prologue
    .line 1012
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 1013
    .local v0, prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v0, :cond_a

    .line 1014
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 1015
    :cond_a
    if-eqz v0, :cond_1d

    .line 1017
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    .line 1018
    .local v1, type:I
    const/16 v2, 0x1c

    if-eq v2, v1, :cond_1c

    const/16 v2, 0x13

    if-eq v2, v1, :cond_1c

    const/16 v2, 0x19

    if-ne v2, v1, :cond_1d

    .line 1022
    :cond_1c
    const/4 v0, 0x0

    .line 1025
    .end local v1           #type:I
    :cond_1d
    return-object v0
.end method

.method protected getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 4
    .parameter "elem"

    .prologue
    .line 989
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 991
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 993
    .local v0, type:I
    const/16 v1, 0x49

    if-eq v1, v0, :cond_12

    const/16 v1, 0x29

    if-ne v1, v0, :cond_0

    .line 996
    :cond_12
    check-cast p1, Lorg/apache/xalan/templates/ElemVariable;

    .end local p1
    move-object v1, p1

    .line 999
    .end local v0           #type:I
    :goto_15
    return-object v1

    .restart local p1
    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 5
    .parameter "path"

    .prologue
    .line 1057
    invoke-virtual {p1}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    move-result v0

    .line 1058
    .local v0, analysis:I
    const/high16 v2, 0x800

    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_14

    const/high16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_14
    const/4 v2, 0x1

    move v1, v2

    .line 1060
    .local v1, isAbs:Z
    :goto_16
    if-eqz v1, :cond_1e

    .line 1062
    iget-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AbsPathChecker;->checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v1

    .line 1064
    :cond_1e
    return v1

    .line 1058
    .end local v1           #isAbs:Z
    :cond_1f
    const/4 v2, 0x0

    move v1, v2

    goto :goto_16
.end method

.method protected isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 6
    .parameter "head"
    .parameter "ete"

    .prologue
    .line 384
    move-object v1, p1

    .line 385
    .local v1, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_1
    if-eqz v1, :cond_14

    .line 387
    iget-object v2, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v2}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 388
    .local v0, elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-ne v0, p2, :cond_11

    .line 389
    const/4 v2, 0x0

    .line 392
    .end local v0           #elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_10
    return v2

    .line 390
    .restart local v0       #elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_11
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 391
    goto :goto_1

    .line 392
    .end local v0           #elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_14
    const/4 v2, 0x1

    goto :goto_10
.end method

.method protected isParam(Lorg/apache/xpath/ExpressionNode;)Z
    .registers 7
    .parameter "expr"

    .prologue
    const/4 v4, 0x0

    .line 949
    :goto_1
    if-eqz p1, :cond_7

    .line 951
    instance-of v3, p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v3, :cond_1b

    .line 955
    :cond_7
    if-eqz p1, :cond_24

    .line 957
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v1, v0

    .line 958
    .local v1, ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_d
    if-eqz v1, :cond_24

    .line 960
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    .line 961
    .local v2, type:I
    sparse-switch v2, :sswitch_data_26

    .line 969
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 970
    goto :goto_d

    .line 953
    .end local v1           #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #type:I
    :cond_1b
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p1

    goto :goto_1

    .line 964
    .restart local v1       #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v2       #type:I
    :sswitch_20
    const/4 v3, 0x1

    .line 972
    .end local v1           #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #type:I
    :goto_21
    return v3

    .restart local v1       #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v2       #type:I
    :sswitch_22
    move v3, v4

    .line 967
    goto :goto_21

    .end local v1           #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #type:I
    :cond_24
    move v3, v4

    .line 972
    goto :goto_21

    .line 961
    :sswitch_data_26
    .sparse-switch
        0x13 -> :sswitch_22
        0x19 -> :sswitch_22
        0x29 -> :sswitch_20
    .end sparse-switch
.end method

.method protected matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 25
    .parameter "testee"
    .parameter "head"
    .parameter "isGlobal"
    .parameter "lengthToTest"
    .parameter "varScope"

    .prologue
    .line 192
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 261
    :cond_8
    return-object p2

    .line 196
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v6

    check-cast v6, Lorg/apache/xpath/axes/WalkingIterator;

    .line 197
    .local v6, iter1:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z

    move-result v18

    if-nez v18, :cond_8

    .line 199
    const/4 v9, 0x0

    .line 200
    .local v9, matchedPaths:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v10, 0x0

    .line 201
    .local v10, matchedPathsTail:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object/from16 v11, p2

    .line 202
    .local v11, meh:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_25
    if-eqz v11, :cond_7f

    .line 204
    move-object v0, v11

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_7c

    move-object v0, v11

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7c

    .line 206
    move-object v0, v11

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v7

    check-cast v7, Lorg/apache/xpath/axes/WalkingIterator;

    .line 207
    .local v7, iter2:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z

    move-result v18

    if-eqz v18, :cond_7c

    .line 209
    if-nez v9, :cond_64

    .line 213
    :try_start_4c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #matchedPathsTail:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object v0, v10

    check-cast v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v9, v0

    .line 214
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_5c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4c .. :try_end_5c} :catch_d2

    .line 217
    :goto_5c
    move-object v10, v9

    .line 218
    .restart local v10       #matchedPathsTail:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object v1, v10

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 223
    :cond_64
    :try_start_64
    invoke-virtual {v11}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object v5, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 224
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object v1, v11

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_73
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_64 .. :try_end_73} :catch_d0

    .line 227
    :goto_73
    iget-object v10, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 228
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object v1, v10

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 231
    .end local v7           #iter2:Lorg/apache/xpath/axes/WalkingIterator;
    :cond_7c
    iget-object v11, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_25

    .line 234
    :cond_7f
    const/4 v8, 0x0

    .line 235
    .local v8, matchCount:I
    if-eqz v9, :cond_8

    .line 237
    if-eqz p3, :cond_c6

    move-object/from16 v15, p5

    .line 238
    .local v15, root:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_86
    move-object v0, v9

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v16

    check-cast v16, Lorg/apache/xpath/axes/WalkingIterator;

    .line 239
    .local v16, sharedIter:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v12

    .line 240
    .local v12, newIter:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v12

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v17

    .line 243
    .local v17, var:Lorg/apache/xalan/templates/ElemVariable;
    :goto_a5
    if-eqz v9, :cond_8

    .line 245
    iget-object v14, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 246
    .local v14, owner:Lorg/apache/xpath/ExpressionOwner;
    invoke-interface {v14}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/WalkingIterator;

    .line 251
    .local v5, iter:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    move/from16 v3, p4

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v13

    .line 253
    .local v13, newIter2:Lorg/apache/xpath/axes/LocPathIterator;
    invoke-interface {v14, v13}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 255
    iget-object v9, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 256
    goto :goto_a5

    .line 237
    .end local v5           #iter:Lorg/apache/xpath/axes/WalkingIterator;
    .end local v12           #newIter:Lorg/apache/xpath/axes/WalkingIterator;
    .end local v13           #newIter2:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v14           #owner:Lorg/apache/xpath/ExpressionOwner;
    .end local v15           #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v16           #sharedIter:Lorg/apache/xpath/axes/WalkingIterator;
    .end local v17           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_c6
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v18

    move-object/from16 v15, v18

    goto :goto_86

    .line 226
    .end local v8           #matchCount:I
    .restart local v7       #iter2:Lorg/apache/xpath/axes/WalkingIterator;
    :catch_d0
    move-exception v18

    goto :goto_73

    .line 216
    .end local v10           #matchedPathsTail:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :catch_d2
    move-exception v18

    goto :goto_5c
.end method

.method protected oldFindAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .registers 25
    .parameter "start"
    .parameter "firstOccuranceIndex"
    .parameter "firstOccuranceOwner"
    .parameter "psuedoVarRecipient"
    .parameter "paths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 681
    const/16 v16, 0x0

    .line 682
    .local v16, uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    const/4 v7, 0x0

    .line 683
    .local v7, foundFirst:Z
    const/4 v14, 0x0

    .line 684
    .local v14, numPathsFound:I
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v13

    .line 685
    .local v13, n:I
    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    .line 688
    .local v5, expr1:Lorg/apache/xpath/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4f

    const/16 v18, 0x1

    move/from16 v9, v18

    .line 689
    .local v9, isGlobal:Z
    :goto_1c
    move-object v0, v5

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    move-object v11, v0

    .line 690
    .local v11, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    move/from16 v10, p1

    .local v10, j:I
    :goto_22
    if-ge v10, v13, :cond_8f

    .line 692
    move-object/from16 v0, p5

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/xpath/ExpressionOwner;

    .line 693
    .local v15, owner2:Lorg/apache/xpath/ExpressionOwner;
    if-eqz v15, :cond_8c

    .line 695
    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v6

    .line 696
    .local v6, expr2:Lorg/apache/xpath/Expression;
    invoke-virtual {v6, v11}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v8

    .line 697
    .local v8, isEqual:Z
    if-eqz v8, :cond_8c

    .line 699
    move-object v0, v6

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    move-object v12, v0

    .line 700
    .local v12, lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    if-nez v7, :cond_74

    .line 702
    const/4 v7, 0x1

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v11

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v17

    .line 707
    .local v17, var:Lorg/apache/xalan/templates/ElemVariable;
    if-nez v17, :cond_54

    .line 708
    const/16 v18, 0x0

    .line 742
    .end local v6           #expr2:Lorg/apache/xpath/Expression;
    .end local v8           #isEqual:Z
    .end local v12           #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v15           #owner2:Lorg/apache/xpath/ExpressionOwner;
    .end local v17           #var:Lorg/apache/xalan/templates/ElemVariable;
    :goto_4e
    return v18

    .line 688
    .end local v9           #isGlobal:Z
    .end local v10           #j:I
    .end local v11           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_4f
    const/16 v18, 0x0

    move/from16 v9, v18

    goto :goto_1c

    .line 709
    .restart local v6       #expr2:Lorg/apache/xpath/Expression;
    .restart local v8       #isEqual:Z
    .restart local v9       #isGlobal:Z
    .restart local v10       #j:I
    .restart local v11       #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v12       #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v15       #owner2:Lorg/apache/xpath/ExpressionOwner;
    .restart local v17       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_54
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v16

    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 716
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v18

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 717
    add-int/lit8 v14, v14, 0x1

    .line 720
    .end local v17           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_74
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v15

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 723
    const/16 v18, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 726
    add-int/lit8 v14, v14, 0x1

    .line 690
    .end local v6           #expr2:Lorg/apache/xpath/Expression;
    .end local v8           #isEqual:Z
    .end local v12           #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_8c
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 732
    .end local v15           #owner2:Lorg/apache/xpath/ExpressionOwner;
    :cond_8f
    if-nez v14, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_cf

    .line 734
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v11

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v17

    .line 735
    .restart local v17       #var:Lorg/apache/xalan/templates/ElemVariable;
    if-nez v17, :cond_af

    .line 736
    const/16 v18, 0x0

    goto :goto_4e

    .line 737
    :cond_af
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v16

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 739
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v18

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 740
    add-int/lit8 v14, v14, 0x1

    .end local v17           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_cf
    move/from16 v18, v14

    .line 742
    goto/16 :goto_4e
.end method

.method partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z
    .registers 6
    .parameter "testee"
    .parameter "lengthToTest"

    .prologue
    const/4 v2, 0x1

    .line 270
    if-ne v2, p2, :cond_15

    .line 272
    iget-object v1, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    .line 273
    .local v0, wi:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz v1, :cond_15

    move v1, v2

    .line 276
    .end local v0           #wi:Lorg/apache/xpath/axes/WalkingIterator;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method protected stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z
    .registers 10
    .parameter "iter1"
    .parameter "iter2"
    .parameter "numSteps"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 523
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 524
    .local v0, aw1:Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    .line 526
    .local v1, aw2:Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, p3, :cond_26

    .line 528
    if-eqz v0, :cond_11

    if-nez v1, :cond_13

    :cond_11
    move v3, v4

    .line 540
    :goto_12
    return v3

    .line 531
    :cond_13
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_1b

    move v3, v4

    .line 532
    goto :goto_12

    .line 534
    :cond_1b
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 535
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 538
    :cond_26
    if-nez v0, :cond_2a

    if-eqz v1, :cond_32

    :cond_2a
    move v3, v5

    :goto_2b
    const-string v4, "Total match is incorrect!"

    invoke-static {v3, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    move v3, v5

    .line 540
    goto :goto_12

    :cond_32
    move v3, v4

    .line 538
    goto :goto_2b
.end method

.method public visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 10
    .parameter "elem"

    .prologue
    const/4 v7, 0x0

    .line 1165
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v5

    .line 1166
    .local v5, type:I
    sparse-switch v5, :sswitch_data_38

    .line 1207
    const/4 v6, 0x1

    :goto_9
    return v6

    .line 1174
    :sswitch_a
    const/16 v6, 0x1c

    if-ne v5, v6, :cond_19

    .line 1176
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemForEach;

    move-object v1, v0

    .line 1178
    .local v1, efe:Lorg/apache/xalan/templates/ElemForEach;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemForEach;->getSelect()Lorg/apache/xpath/Expression;

    move-result-object v4

    .line 1179
    .local v4, select:Lorg/apache/xpath/Expression;
    invoke-virtual {v4, v1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1182
    .end local v1           #efe:Lorg/apache/xalan/templates/ElemForEach;
    .end local v4           #select:Lorg/apache/xpath/Expression;
    :cond_19
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 1183
    .local v3, savedPaths:Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 1188
    invoke-virtual {p1, p0, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 1191
    iput-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    move v6, v7

    .line 1194
    goto :goto_9

    .line 1200
    .end local v3           #savedPaths:Ljava/util/Vector;
    :sswitch_2c
    iget-boolean v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1201
    .local v2, savedIsSame:Z
    iput-boolean v7, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1202
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1203
    iput-boolean v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    move v6, v7

    .line 1204
    goto :goto_9

    .line 1166
    nop

    :sswitch_data_38
    .sparse-switch
        0x11 -> :sswitch_a
        0x13 -> :sswitch_a
        0x1c -> :sswitch_a
        0x23 -> :sswitch_2c
        0x40 -> :sswitch_2c
    .end sparse-switch
.end method

.method public visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 10
    .parameter "owner"
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    .line 1079
    instance-of v5, p2, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    if-eqz v5, :cond_7

    move v5, v6

    .line 1109
    :goto_6
    return v5

    .line 1083
    :cond_7
    instance-of v5, p2, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz v5, :cond_2b

    .line 1085
    move-object v0, p2

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    move-object v4, v0

    .line 1086
    .local v4, wi:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v4}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    .line 1087
    .local v1, aw:Lorg/apache/xpath/axes/AxesWalker;
    instance-of v5, v1, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz v5, :cond_2b

    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v5

    if-nez v5, :cond_2b

    .line 1089
    move-object v0, v1

    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    move-object v3, v0

    .line 1090
    .local v3, few:Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v3}, Lorg/apache/xpath/axes/FilterExprWalker;->getInnerExpression()Lorg/apache/xpath/Expression;

    move-result-object v2

    .line 1091
    .local v2, exp:Lorg/apache/xpath/Expression;
    instance-of v5, v2, Lorg/apache/xpath/operations/Variable;

    if-eqz v5, :cond_2b

    move v5, v6

    .line 1092
    goto :goto_6

    .line 1096
    .end local v1           #aw:Lorg/apache/xpath/axes/AxesWalker;
    .end local v2           #exp:Lorg/apache/xpath/Expression;
    .end local v3           #few:Lorg/apache/xpath/axes/FilterExprWalker;
    .end local v4           #wi:Lorg/apache/xpath/axes/WalkingIterator;
    :cond_2b
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-eqz v5, :cond_3c

    .line 1100
    iget-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3a
    :goto_3a
    move v5, v6

    .line 1109
    goto :goto_6

    .line 1102
    :cond_3c
    iget-boolean v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-eqz v5, :cond_3a

    .line 1106
    iget-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .registers 5
    .parameter "owner"
    .parameter "pred"

    .prologue
    const/4 v1, 0x0

    .line 1124
    iget-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1125
    .local v0, savedIsSame:Z
    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1128
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1130
    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1134
    return v1
.end method

.method public visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 4
    .parameter "elem"

    .prologue
    .line 1145
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 1146
    .local v0, type:I
    packed-switch v0, :pswitch_data_e

    .line 1151
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 1149
    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v1

    goto :goto_8

    .line 1146
    :pswitch_data_e
    .packed-switch 0x13
        :pswitch_9
    .end packed-switch
.end method
