.class public Lorg/apache/xalan/templates/FuncFormatNumb;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncFormatNumb.java"


# static fields
.field static final serialVersionUID:J = -0x7b185720e3567f8cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .registers 3
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x3

    if-gt p1, v0, :cond_6

    const/4 v0, 0x2

    if-ge p1, v0, :cond_9

    .line 176
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->reportWrongNumberArgs()V

    .line 177
    :cond_9
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 22
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v16

    check-cast v16, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 59
    .local v16, templElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v15

    .line 60
    .local v15, ss:Lorg/apache/xalan/templates/StylesheetRoot;
    const/4 v8, 0x0

    .line 61
    .local v8, formatter:Ljava/text/DecimalFormat;
    const/4 v6, 0x0

    .line 62
    .local v6, dfs:Ljava/text/DecimalFormatSymbols;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v11

    .line 63
    .local v11, num:D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, patternStr:Ljava/lang/String;
    const/16 v17, 0xa4

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_3f

    .line 67
    const-string v17, "ER_CURRENCY_SIGN_ILLEGAL"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->error(Ljava/lang/String;)V

    .line 73
    :cond_3f
    :try_start_3f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg2()Lorg/apache/xpath/Expression;

    move-result-object v4

    .line 75
    .local v4, arg2Expr:Lorg/apache/xpath/Expression;
    if-eqz v4, :cond_102

    .line 77
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, dfName:Ljava/lang/String;
    new-instance v14, Lorg/apache/xml/utils/QName;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v17

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 80
    .local v14, qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {v15, v14}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    .line 82
    if-nez v6, :cond_a4

    .line 84
    const-string v17, "WG_NO_DECIMALFORMAT_DECLARATION"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncFormatNumb;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_7c} :catch_f1

    move-object v9, v8

    .line 101
    .end local v5           #dfName:Ljava/lang/String;
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .end local v14           #qname:Lorg/apache/xml/utils/QName;
    .local v9, formatter:Ljava/text/DecimalFormat;
    :goto_7d
    if-nez v9, :cond_100

    .line 105
    :try_start_7f
    new-instance v17, Lorg/apache/xml/utils/QName;

    const-string v18, ""

    invoke-direct/range {v17 .. v18}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_c8

    .line 109
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_94} :catch_b0

    .line 111
    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    :try_start_94
    invoke-virtual {v8, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 112
    invoke-virtual {v8, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 130
    :goto_9a
    new-instance v17, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v8, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 137
    .end local v4           #arg2Expr:Lorg/apache/xpath/Expression;
    :goto_a3
    return-object v17

    .line 93
    .restart local v4       #arg2Expr:Lorg/apache/xpath/Expression;
    .restart local v5       #dfName:Ljava/lang/String;
    .restart local v14       #qname:Lorg/apache/xml/utils/QName;
    :cond_a4
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a9} :catch_f1

    .line 95
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :try_start_a9
    invoke-virtual {v9, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 96
    invoke-virtual {v9, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_af} :catch_b0

    goto :goto_7d

    .line 132
    .end local v5           #dfName:Ljava/lang/String;
    .end local v14           #qname:Lorg/apache/xml/utils/QName;
    :catch_b0
    move-exception v17

    move-object/from16 v10, v17

    move-object v8, v9

    .line 134
    .end local v4           #arg2Expr:Lorg/apache/xpath/Expression;
    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    .local v10, iae:Ljava/lang/Exception;
    :goto_b4
    const-string v17, "ER_MALFORMED_FORMAT_STRING"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    invoke-virtual/range {v16 .. v18}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object v17, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_a3

    .line 116
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .end local v10           #iae:Ljava/lang/Exception;
    .restart local v4       #arg2Expr:Lorg/apache/xpath/Expression;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :cond_c8
    :try_start_c8
    new-instance v7, Ljava/text/DecimalFormatSymbols;

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d2} :catch_b0

    .line 118
    .end local v6           #dfs:Ljava/text/DecimalFormatSymbols;
    .local v7, dfs:Ljava/text/DecimalFormatSymbols;
    :try_start_d2
    const-string v17, "Infinity"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 119
    const-string v17, "NaN"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 121
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e7} :catch_f5

    .line 123
    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    :try_start_e7
    invoke-virtual {v8, v7}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 125
    if-eqz v13, :cond_ef

    .line 126
    invoke-virtual {v8, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ef} :catch_fb

    :cond_ef
    move-object v6, v7

    .end local v7           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v6       #dfs:Ljava/text/DecimalFormatSymbols;
    goto :goto_9a

    .line 132
    .end local v4           #arg2Expr:Lorg/apache/xpath/Expression;
    :catch_f1
    move-exception v17

    move-object/from16 v10, v17

    goto :goto_b4

    .end local v6           #dfs:Ljava/text/DecimalFormatSymbols;
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v4       #arg2Expr:Lorg/apache/xpath/Expression;
    .restart local v7       #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :catch_f5
    move-exception v17

    move-object/from16 v10, v17

    move-object v6, v7

    .end local v7           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v6       #dfs:Ljava/text/DecimalFormatSymbols;
    move-object v8, v9

    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    goto :goto_b4

    .end local v6           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v7       #dfs:Ljava/text/DecimalFormatSymbols;
    :catch_fb
    move-exception v17

    move-object/from16 v10, v17

    move-object v6, v7

    .end local v7           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v6       #dfs:Ljava/text/DecimalFormatSymbols;
    goto :goto_b4

    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :cond_100
    move-object v8, v9

    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    goto :goto_9a

    :cond_102
    move-object v9, v8

    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    goto/16 :goto_7d
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_TWO_OR_THREE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, formattedMsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 161
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v2, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 163
    return-void
.end method
