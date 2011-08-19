.class public Lorg/apache/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field public static final MATCH:I = 0x1

.field public static final MATCH_SCORE_NODETEST:D = -0.5

.field public static final MATCH_SCORE_NONE:D = -Infinity

.field public static final MATCH_SCORE_NSWILD:D = -0.25

.field public static final MATCH_SCORE_OTHER:D = 0.5

.field public static final MATCH_SCORE_QNAME:D = 0.0

.field public static final SELECT:I = 0x0

.field static final serialVersionUID:J = 0x372f57bff437e299L


# instance fields
.field private transient m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private m_mainExp:Lorg/apache/xpath/Expression;

.field m_patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V
    .registers 11
    .parameter "exprString"
    .parameter "locator"
    .parameter "prefixResolver"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V
    .registers 14
    .parameter "exprString"
    .parameter "locator"
    .parameter "prefixResolver"
    .parameter "type"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 168
    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    .line 169
    if-nez p5, :cond_12

    .line 170
    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    .end local p5
    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    .line 172
    .restart local p5
    :cond_12
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    .line 174
    new-instance v2, Lorg/apache/xpath/compiler/XPathParser;

    invoke-direct {v2, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    .line 175
    .local v2, parser:Lorg/apache/xpath/compiler/XPathParser;
    new-instance v0, Lorg/apache/xpath/compiler/Compiler;

    iget-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0, p5, p2, v3}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 177
    .local v0, compiler:Lorg/apache/xpath/compiler/Compiler;
    if-nez p4, :cond_38

    .line 178
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 185
    :goto_25
    invoke-virtual {v0, v7}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    .line 188
    .local v1, expr:Lorg/apache/xpath/Expression;
    invoke-virtual {p0, v1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 190
    if-eqz p2, :cond_37

    instance-of v3, p2, Lorg/apache/xpath/ExpressionNode;

    if-eqz v3, :cond_37

    .line 192
    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    .end local p2
    invoke-virtual {v1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 195
    :cond_37
    return-void

    .line 179
    .end local v1           #expr:Lorg/apache/xpath/Expression;
    .restart local p2
    :cond_38
    if-ne v5, p4, :cond_3e

    .line 180
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_25

    .line 182
    :cond_3e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_CANNOT_DEAL_XPATH_TYPE"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V
    .registers 15
    .parameter "exprString"
    .parameter "locator"
    .parameter "prefixResolver"
    .parameter "type"
    .parameter "errorListener"
    .parameter "aTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 217
    iput-object p6, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 218
    if-nez p5, :cond_11

    .line 219
    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    .end local p5
    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    .line 221
    .restart local p5
    :cond_11
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    .line 223
    new-instance v2, Lorg/apache/xpath/compiler/XPathParser;

    invoke-direct {v2, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    .line 224
    .local v2, parser:Lorg/apache/xpath/compiler/XPathParser;
    new-instance v0, Lorg/apache/xpath/compiler/Compiler;

    iget-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0, p5, p2, v3}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 226
    .local v0, compiler:Lorg/apache/xpath/compiler/Compiler;
    if-nez p4, :cond_37

    .line 227
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 237
    :goto_24
    invoke-virtual {v0, v7}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    .line 240
    .local v1, expr:Lorg/apache/xpath/Expression;
    invoke-virtual {p0, v1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 242
    if-eqz p2, :cond_36

    instance-of v3, p2, Lorg/apache/xpath/ExpressionNode;

    if-eqz v3, :cond_36

    .line 244
    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    .end local p2
    invoke-virtual {v1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 247
    :cond_36
    return-void

    .line 228
    .end local v1           #expr:Lorg/apache/xpath/Expression;
    .restart local p2
    :cond_37
    if-ne v5, p4, :cond_3d

    .line 229
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_24

    .line 231
    :cond_3d
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_CANNOT_DEAL_XPATH_TYPE"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .registers 3
    .parameter "expr"

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 279
    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    .line 280
    return-void
.end method

.method private initFunctionTable()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 63
    return-void
.end method


# virtual methods
.method public assertion(ZLjava/lang/String;)V
    .registers 7
    .parameter "b"
    .parameter "msg"

    .prologue
    .line 551
    if-nez p1, :cond_14

    .line 553
    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, fMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    .end local v0           #fMsg:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z
    .registers 10
    .parameter "xctxt"
    .parameter "contextNode"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 408
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 412
    :try_start_6
    iget-object v4, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v4, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_36

    move-result v4

    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 459
    :goto_12
    return v4

    .line 414
    :catch_13
    move-exception v4

    move-object v3, v4

    .line 416
    .local v3, te:Ljavax/xml/transform/TransformerException;
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 417
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 418
    .local v1, el:Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_2d

    .line 420
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_2e

    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 459
    :goto_2b
    const/4 v4, 0x0

    goto :goto_12

    .line 423
    :cond_2d
    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 454
    .end local v1           #el:Ljavax/xml/transform/ErrorListener;
    .end local v3           #te:Ljavax/xml/transform/TransformerException;
    :catchall_2e
    move-exception v4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v4

    .line 425
    :catch_36
    move-exception v4

    move-object v0, v4

    .line 427
    .local v0, e:Ljava/lang/Exception;
    :goto_38
    :try_start_38
    instance-of v4, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v4, :cond_43

    .line 429
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v0           #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_38

    .line 433
    :cond_43
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, msg:Ljava/lang/String;
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_56

    .line 436
    :cond_4f
    const-string v4, "ER_XPATH_ERROR"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 441
    :cond_56
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 443
    .restart local v3       #te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 445
    .restart local v1       #el:Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_6f

    .line 447
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_68
    .catchall {:try_start_38 .. :try_end_68} :catchall_2e

    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_2b

    .line 450
    :cond_6f
    :try_start_6f
    throw v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_2e
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 609
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 610
    return-void
.end method

.method public error(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .parameter "xctxt"
    .parameter "sourceNode"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-static {p3, p4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, fmsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 584
    .local v0, ehandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_19

    .line 586
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v3, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 596
    :goto_18
    return-void

    .line 591
    .restart local p0
    :cond_19
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    .line 592
    .local v2, slocator:Ljavax/xml/transform/SourceLocator;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 11
    .parameter "xctxt"
    .parameter "contextNode"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 331
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 333
    const/4 v4, 0x0

    .line 337
    .local v4, xobj:Lorg/apache/xpath/objects/XObject;
    :try_start_7
    iget-object v5, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_c} :catch_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_36

    move-result-object v4

    .line 378
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 383
    :goto_13
    return-object v4

    .line 339
    :catch_14
    move-exception v5

    move-object v3, v5

    .line 341
    .local v3, te:Ljavax/xml/transform/TransformerException;
    :try_start_16
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 342
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 343
    .local v1, el:Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_2d

    .line 345
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_2e

    .line 378
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_13

    .line 348
    :cond_2d
    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 378
    .end local v1           #el:Ljavax/xml/transform/ErrorListener;
    .end local v3           #te:Ljavax/xml/transform/TransformerException;
    :catchall_2e
    move-exception v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v5

    .line 350
    :catch_36
    move-exception v5

    move-object v0, v5

    .line 352
    .local v0, e:Ljava/lang/Exception;
    :goto_38
    :try_start_38
    instance-of v5, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v5, :cond_43

    .line 354
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v0           #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_38

    .line 358
    :cond_43
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, msg:Ljava/lang/String;
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_56

    .line 361
    :cond_4f
    const-string v5, "ER_XPATH_ERROR"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 365
    :cond_56
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v5

    invoke-direct {v3, v2, v5, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 367
    .restart local v3       #te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 369
    .restart local v1       #el:Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_6f

    .line 371
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_68
    .catchall {:try_start_38 .. :try_end_68} :catchall_2e

    .line 378
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_13

    .line 374
    :cond_6f
    :try_start_6f
    throw v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_2e
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .parameter "xctxt"
    .parameter "contextNode"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 4
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 89
    return-void
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .registers 6
    .parameter "xctxt"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 483
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 487
    :try_start_6
    iget-object v1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 497
    .local v0, score:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_17

    move-result-wide v1

    .line 501
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 502
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    return-wide v1

    .line 501
    .end local v0           #score:Lorg/apache/xpath/objects/XObject;
    :catchall_17
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 502
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    throw v1
.end method

.method public getPatternString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3
    .parameter "exp"

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_d

    .line 100
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 101
    :cond_d
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    .line 102
    return-void
.end method

.method public warn(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "xctxt"
    .parameter "sourceNode"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-static {p3, p4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, fmsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 531
    .local v0, ehandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_18

    .line 535
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v2, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 537
    :cond_18
    return-void
.end method
