.class public Lorg/apache/xalan/templates/ElemNumber;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;,
        Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    }
.end annotation


# static fields
.field private static final m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman; = null

.field static final serialVersionUID:J = 0x70aa9b8ab17ec4baL


# instance fields
.field private m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

.field private m_countMatchPattern:Lorg/apache/xpath/XPath;

.field private m_format_avt:Lorg/apache/xalan/templates/AVT;

.field private m_fromMatchPattern:Lorg/apache/xpath/XPath;

.field private m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

.field private m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

.field private m_level:I

.field private m_valueExpr:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const-wide/16 v9, 0x1

    .line 487
    const/4 v0, 0x7

    new-array v7, v0, [Lorg/apache/xalan/transformer/DecimalToRoman;

    const/4 v8, 0x0

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x3e8

    const-string v3, "M"

    const-wide/16 v4, 0x384

    const-string v6, "CM"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x1f4

    const-string v3, "D"

    const-wide/16 v4, 0x190

    const-string v6, "CD"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x64

    const-string v3, "C"

    const-wide/16 v4, 0x5a

    const-string v6, "XC"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x32

    const-string v3, "L"

    const-wide/16 v4, 0x28

    const-string v6, "XL"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0xa

    const-string v3, "X"

    const-wide/16 v4, 0x9

    const-string v6, "IX"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x5

    const-string v3, "V"

    const-wide/16 v4, 0x4

    const-string v6, "IV"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-string v3, "I"

    const-string v6, "I"

    move-wide v1, v9

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    sput-object v7, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 83
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 136
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 181
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    .line 243
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    .line 277
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    .line 311
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    .line 344
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 383
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    .line 417
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    .line 451
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    .line 2007
    return-void
.end method

.method private findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .registers 13
    .parameter "xctxt"
    .parameter "fromMatchPattern"
    .parameter "countMatchPattern"
    .parameter "context"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v5, -0x10

    const/4 v4, -0x1

    .line 665
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 666
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    :cond_7
    :goto_7
    if-eq v4, p4, :cond_14

    .line 668
    if-eqz p2, :cond_15

    .line 670
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-eqz v2, :cond_15

    .line 673
    const/4 p4, -0x1

    .line 705
    :cond_14
    return p4

    .line 679
    :cond_15
    if-eqz p3, :cond_1f

    .line 681
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_14

    .line 688
    :cond_1f
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v1

    .line 690
    .local v1, prevSibling:I
    if-ne v4, v1, :cond_2a

    .line 692
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_7

    .line 698
    :cond_2a
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result p4

    .line 700
    if-ne p4, v4, :cond_7

    .line 701
    move p4, v1

    goto :goto_7
.end method

.method private getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V
    .registers 27
    .parameter "transformer"
    .parameter "contextNode"
    .parameter "numberType"
    .parameter "numberWidth"
    .parameter "listElement"
    .parameter "formattedNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    move-object v14, v0

    if-eqz v14, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    move-object v14, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v15

    move-object v0, v14

    move-object v1, v15

    move/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 1330
    .local v8, letterVal:Ljava/lang/String;
    :goto_1b
    const/4 v5, 0x0

    .line 1332
    .local v5, alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;
    const/4 v13, 0x0

    .line 1334
    .local v13, thisBundle:Lorg/apache/xml/utils/res/XResourceBundle;
    sparse-switch p3, :sswitch_data_3da

    .line 1557
    invoke-direct/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;

    move-result-object v6

    .line 1558
    .local v6, formatter:Ljava/text/DecimalFormat;
    if-nez v6, :cond_3be

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 1559
    .local v11, padString:Ljava/lang/String;
    :goto_2c
    if-nez v6, :cond_3c7

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 1560
    .local v10, numString:Ljava/lang/String;
    :goto_33
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v9, p4, v14

    .line 1562
    .local v9, nPadding:I
    const/4 v7, 0x0

    .local v7, k:I
    :goto_3a
    if-ge v7, v9, :cond_3d1

    .line 1564
    move-object/from16 v0, p7

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1562
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 1322
    .end local v5           #alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v6           #formatter:Ljava/text/DecimalFormat;
    .end local v7           #k:I
    .end local v8           #letterVal:Ljava/lang/String;
    .end local v9           #nPadding:I
    .end local v10           #numString:Ljava/lang/String;
    .end local v11           #padString:Ljava/lang/String;
    .end local v13           #thisBundle:Lorg/apache/xml/utils/res/XResourceBundle;
    :cond_45
    const/4 v14, 0x0

    move-object v8, v14

    goto :goto_1b

    .line 1337
    .restart local v5       #alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v8       #letterVal:Ljava/lang/String;
    .restart local v13       #thisBundle:Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object v14, v0

    if-nez v14, :cond_67

    .line 1338
    const-string v14, "org.apache.xml.utils.res.XResources"

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1341
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1343
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object v14, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v14

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1569
    .end local p3
    :goto_76
    return-void

    .line 1346
    .restart local p1
    .restart local p3
    :sswitch_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object v14, v0

    if-nez v14, :cond_96

    .line 1347
    const-string v14, "org.apache.xml.utils.res.XResources"

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1350
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1352
    :cond_96
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v12

    .line 1356
    .local v12, stringBuf:Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object v14, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v14

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1357
    invoke-virtual {v12}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_9a .. :try_end_ba} :catchall_be

    .line 1363
    invoke-static {v12}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    goto :goto_76

    :catchall_be
    move-exception v14

    invoke-static {v12}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v14

    .line 1367
    .end local v12           #stringBuf:Lorg/apache/xml/utils/FastStringBuffer;
    .restart local p3
    :sswitch_c3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_76

    .line 1370
    :sswitch_d4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_76

    .line 1377
    :sswitch_ed
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "ja"

    const-string v17, "JP"

    const-string v18, "HA"

    invoke-direct/range {v15 .. v18}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1380
    if-eqz v8, :cond_119

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_119

    .line 1382
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1384
    :cond_119
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1394
    .restart local p1
    :sswitch_133
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "ja"

    const-string v17, "JP"

    const-string v18, "HI"

    invoke-direct/range {v15 .. v18}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1397
    if-eqz v8, :cond_15f

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15f

    .line 1399
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1401
    :cond_15f
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1411
    .restart local p1
    :sswitch_179
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "ja"

    const-string v17, "JP"

    const-string v18, "A"

    invoke-direct/range {v15 .. v18}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1414
    if-eqz v8, :cond_1a5

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a5

    .line 1416
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1418
    :cond_1a5
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1428
    .restart local p1
    :sswitch_1bf
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "ja"

    const-string v17, "JP"

    const-string v18, "I"

    invoke-direct/range {v15 .. v18}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1431
    if-eqz v8, :cond_1eb

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1eb

    .line 1433
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1435
    :cond_1eb
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1445
    .restart local p1
    :sswitch_205
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "zh"

    const-string v17, "CN"

    invoke-direct/range {v15 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1448
    if-eqz v8, :cond_22f

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22f

    .line 1451
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1454
    :cond_22f
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_76

    .line 1463
    .restart local p1
    :sswitch_244
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "zh"

    const-string v17, "TW"

    invoke-direct/range {v15 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1466
    if-eqz v8, :cond_26e

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26e

    .line 1468
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1470
    :cond_26e
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_76

    .line 1479
    .restart local p1
    :sswitch_283
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "th"

    const-string v17, ""

    invoke-direct/range {v15 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1482
    if-eqz v8, :cond_2ad

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2ad

    .line 1484
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1486
    :cond_2ad
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_76

    .line 1495
    .restart local p1
    :sswitch_2c2
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "he"

    const-string v17, ""

    invoke-direct/range {v15 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1498
    if-eqz v8, :cond_2ec

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2ec

    .line 1500
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1502
    :cond_2ec
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_76

    .line 1511
    .restart local p1
    :sswitch_301
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "ka"

    const-string v17, ""

    invoke-direct/range {v15 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1514
    if-eqz v8, :cond_32b

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32b

    .line 1516
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1518
    :cond_32b
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_76

    .line 1527
    .restart local p1
    :sswitch_340
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "el"

    const-string v17, ""

    invoke-direct/range {v15 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1530
    if-eqz v8, :cond_36a

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36a

    .line 1532
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1534
    :cond_36a
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_76

    .line 1543
    .restart local p1
    :sswitch_37f
    const-string v14, "org.apache.xml.utils.res.XResources"

    new-instance v15, Ljava/util/Locale;

    const-string v16, "cy"

    const-string v17, ""

    invoke-direct/range {v15 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v13

    .line 1546
    if-eqz v8, :cond_3a9

    const-string v14, "traditional"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a9

    .line 1548
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1550
    :cond_3a9
    const-string v14, "alphabet"

    invoke-virtual {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_76

    .line 1558
    .restart local v6       #formatter:Ljava/text/DecimalFormat;
    .restart local p1
    :cond_3be
    const-wide/16 v14, 0x0

    invoke-virtual {v6, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    goto/16 :goto_2c

    .line 1559
    .restart local v11       #padString:Ljava/lang/String;
    :cond_3c7
    move-object v0, v6

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    goto/16 :goto_33

    .line 1567
    .restart local v7       #k:I
    .restart local v9       #nPadding:I
    .restart local v10       #numString:Ljava/lang/String;
    :cond_3d1
    move-object/from16 v0, p7

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1334
    nop

    :sswitch_data_3da
    .sparse-switch
        0x41 -> :sswitch_48
        0x49 -> :sswitch_c3
        0x61 -> :sswitch_77
        0x69 -> :sswitch_d4
        0x3b1 -> :sswitch_340
        0x430 -> :sswitch_37f
        0x5d0 -> :sswitch_2c2
        0xe51 -> :sswitch_283
        0x10d0 -> :sswitch_301
        0x3042 -> :sswitch_ed
        0x3044 -> :sswitch_133
        0x30a2 -> :sswitch_179
        0x30a4 -> :sswitch_1bf
        0x4e00 -> :sswitch_205
        0x58f9 -> :sswitch_244
    .end sparse-switch
.end method

.method private getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;
    .registers 20
    .parameter "transformer"
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v16, 0x0

    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 1087
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    .line 1090
    .local v7, locale:Ljava/util/Locale;
    const/4 v6, 0x0

    .line 1097
    .local v6, formatter:Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    move-object v10, v0

    if-eqz v10, :cond_a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    move-object v10, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v11

    move-object v0, v10

    move-object v1, v11

    move/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 1105
    .local v4, digitGroupSepValue:Ljava/lang/String;
    :goto_2a
    if-eqz v4, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v10

    if-nez v10, :cond_5d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v10, v15, :cond_5d

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v10

    const-string v11, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "name"

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v15

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    move-object v10, v0

    if-eqz v10, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    move-object v10, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v11

    move-object v0, v10

    move-object v1, v11

    move/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 1120
    .local v8, nDigitsPerGroupValue:Ljava/lang/String;
    :goto_78
    if-eqz v4, :cond_a8

    if-eqz v8, :cond_a8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a8

    .line 1126
    :try_start_82
    invoke-static {v7}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v6, v0

    .line 1127
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 1130
    invoke-virtual {v6}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v9

    .line 1131
    .local v9, symbols:Ljava/text/DecimalFormatSymbols;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 1132
    invoke-virtual {v6, v9}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 1133
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_a8} :catch_b0

    .line 1141
    .end local v9           #symbols:Ljava/text/DecimalFormatSymbols;
    :cond_a8
    :goto_a8
    return-object v6

    .end local v4           #digitGroupSepValue:Ljava/lang/String;
    .end local v8           #nDigitsPerGroupValue:Ljava/lang/String;
    :cond_a9
    move-object/from16 v4, v16

    .line 1097
    goto/16 :goto_2a

    .restart local v4       #digitGroupSepValue:Ljava/lang/String;
    :cond_ad
    move-object/from16 v8, v16

    .line 1114
    goto :goto_78

    .line 1135
    .restart local v8       #nDigitsPerGroupValue:Ljava/lang/String;
    :catch_b0
    move-exception v10

    move-object v5, v10

    .line 1137
    .local v5, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v6, v14}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    goto :goto_a8
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 6
    .parameter "newChild"

    .prologue
    .line 586
    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 1978
    if-eqz p2, :cond_5c

    .line 1980
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_11

    .line 1981
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1982
    :cond_11
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_20

    .line 1983
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1984
    :cond_20
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_2f

    .line 1985
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1987
    :cond_2f
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_38

    .line 1988
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1989
    :cond_38
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_41

    .line 1990
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1991
    :cond_41
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_4a

    .line 1992
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1993
    :cond_4a
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_53

    .line 1994
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1995
    :cond_53
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_5c

    .line 1996
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1999
    :cond_5c
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 2000
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 505
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 506
    .local v0, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 507
    .local v1, vnames:Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_18

    .line 508
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 509
    :cond_18
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_25

    .line 510
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 511
    :cond_25
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_32

    .line 512
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 513
    :cond_32
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_3f

    .line 514
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 515
    :cond_3f
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_4c

    .line 516
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 517
    :cond_4c
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_59

    .line 518
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 519
    :cond_59
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_66

    .line 520
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 521
    :cond_66
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_73

    .line 522
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 523
    :cond_73
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 9
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    .line 561
    .local v2, sourceNode:I
    invoke-virtual {p0, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, countString:Ljava/lang/String;
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_1c} :catch_1d

    .line 572
    return-void

    .line 568
    :catch_1d
    move-exception v3

    move-object v1, v3

    .line 570
    .local v1, se:Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .registers 11
    .parameter "xctxt"
    .parameter "fromMatchPattern"
    .parameter "countMatchPattern"
    .parameter "context"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v3, -0x10

    .line 615
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 616
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    :goto_6
    const/4 v1, -0x1

    if-eq v1, p4, :cond_13

    .line 618
    if-eqz p2, :cond_14

    .line 620
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_14

    .line 641
    :cond_13
    return p4

    .line 629
    :cond_14
    if-eqz p3, :cond_1e

    .line 631
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_13

    .line 638
    :cond_1e
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_6
.end method

.method formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;
    .registers 26
    .parameter "transformer"
    .parameter "list"
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1163
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v11

    .line 1167
    .local v11, formattedNumber:Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_4
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    .local v20, nNumbers:I
    const/4 v8, 0x1

    .line 1168
    .local v8, numberWidth:I
    const/16 v7, 0x31

    .line 1169
    .local v7, numberType:C
    const/16 v19, 0x0

    .local v19, lastSepString:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1178
    .local v13, formatTokenString:Ljava/lang/String;
    const-string v18, "."

    .line 1179
    .local v18, lastSep:Ljava/lang/String;
    const/16 v17, 0x1

    .line 1180
    .local v17, isFirstToken:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    move-object v4, v0

    if-eqz v4, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p3

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    .line 1185
    .local v15, formatValue:Ljava/lang/String;
    :goto_2e
    if-nez v15, :cond_32

    .line 1186
    const-string v15, "1"

    .line 1188
    :cond_32
    new-instance v14, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;-><init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V

    .line 1193
    .local v14, formatTokenizer:Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3d
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_ea

    .line 1197
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1199
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 1203
    .local v12, formatToken:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 1206
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 1207
    const/4 v4, 0x1

    sub-int v4, v8, v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1257
    .end local v12           #formatToken:Ljava/lang/String;
    :cond_68
    :goto_68
    if-eqz v13, :cond_da

    if-eqz v17, :cond_da

    .line 1259
    invoke-virtual {v11, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1264
    :cond_6f
    :goto_6f
    aget-wide v9, p2, v16

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-direct/range {v4 .. v11}, Lorg/apache/xalan/templates/ElemNumber;->getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V

    .line 1267
    const/16 v17, 0x0

    .line 1193
    add-int/lit8 v16, v16, 0x1

    goto :goto_3d

    .line 1180
    .end local v14           #formatTokenizer:Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .end local v15           #formatValue:Ljava/lang/String;
    .end local v16           #i:I
    :cond_7f
    const/4 v4, 0x0

    move-object v15, v4

    goto :goto_2e

    .line 1212
    .restart local v12       #formatToken:Ljava/lang/String;
    .restart local v14       #formatTokenizer:Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .restart local v15       #formatValue:Ljava/lang/String;
    .restart local v16       #i:I
    :cond_82
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 1214
    move-object v13, v12

    .line 1219
    :goto_89
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextIsSep()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 1221
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 1222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_89

    .line 1229
    :cond_a5
    if-nez v17, :cond_a9

    .line 1230
    move-object/from16 v18, v13

    .line 1233
    :cond_a9
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 1234
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 1235
    const/4 v4, 0x1

    sub-int v4, v8, v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_68

    .line 1242
    :cond_b9
    move-object/from16 v19, v12

    .line 1245
    :goto_bb
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1247
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_bb

    .line 1261
    .end local v12           #formatToken:Ljava/lang/String;
    :cond_da
    if-eqz v18, :cond_6f

    if-nez v17, :cond_6f

    .line 1262
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_4 .. :try_end_e4} :catchall_e5

    goto :goto_6f

    .line 1291
    .end local v7           #numberType:C
    .end local v8           #numberWidth:I
    .end local v13           #formatTokenString:Ljava/lang/String;
    .end local v14           #formatTokenizer:Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .end local v15           #formatValue:Ljava/lang/String;
    .end local v16           #i:I
    .end local v17           #isFirstToken:Z
    .end local v18           #lastSep:Ljava/lang/String;
    .end local v19           #lastSepString:Ljava/lang/String;
    .end local v20           #nNumbers:I
    :catchall_e5
    move-exception v4

    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v4

    .line 1272
    .restart local v7       #numberType:C
    .restart local v8       #numberWidth:I
    .restart local v13       #formatTokenString:Ljava/lang/String;
    .restart local v14       #formatTokenizer:Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .restart local v15       #formatValue:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v17       #isFirstToken:Z
    .restart local v18       #lastSep:Ljava/lang/String;
    .restart local v19       #lastSepString:Ljava/lang/String;
    .restart local v20       #nNumbers:I
    :cond_ea
    :goto_ea
    :try_start_ea
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 1274
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_ea

    .line 1277
    :cond_f4
    if-eqz v19, :cond_fc

    .line 1278
    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1280
    :cond_fc
    :goto_fc
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 1282
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 1284
    .restart local v12       #formatToken:Ljava/lang/String;
    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_fc

    .line 1287
    .end local v12           #formatToken:Ljava/lang/String;
    :cond_10a
    invoke-virtual {v11}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_10d
    .catchall {:try_start_ea .. :try_end_10d} :catchall_e5

    move-result-object v21

    .line 1291
    .local v21, numStr:Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1294
    return-object v21
.end method

.method public getCount()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;
    .registers 13
    .parameter "support"
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 722
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 723
    .local v4, countMatchPattern:Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v3

    .line 724
    .local v3, dtm:Lorg/apache/xml/dtm/DTM;
    if-nez v4, :cond_11

    .line 726
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    packed-switch v1, :pswitch_data_b8

    .line 770
    :pswitch_10
    const/4 v4, 0x0

    .line 774
    :cond_11
    :goto_11
    return-object v4

    .line 731
    :pswitch_12
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34

    .line 732
    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    .line 737
    .end local v4           #countMatchPattern:Lorg/apache/xpath/XPath;
    .local v0, resolver:Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    :goto_24
    new-instance v4, Lorg/apache/xpath/XPath;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 739
    .restart local v4       #countMatchPattern:Lorg/apache/xpath/XPath;
    goto :goto_11

    .line 734
    .end local v0           #resolver:Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    :cond_34
    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    .end local v4           #countMatchPattern:Lorg/apache/xpath/XPath;
    .restart local v0       #resolver:Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    goto :goto_24

    .line 744
    .end local v0           #resolver:Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    .restart local v4       #countMatchPattern:Lorg/apache/xpath/XPath;
    :pswitch_41
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4           #countMatchPattern:Lorg/apache/xpath/XPath;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 746
    .restart local v4       #countMatchPattern:Lorg/apache/xpath/XPath;
    goto :goto_11

    .line 751
    :pswitch_64
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4           #countMatchPattern:Lorg/apache/xpath/XPath;
    const-string v5, "text()"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 752
    .restart local v4       #countMatchPattern:Lorg/apache/xpath/XPath;
    goto :goto_11

    .line 756
    :pswitch_72
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4           #countMatchPattern:Lorg/apache/xpath/XPath;
    const-string v5, "comment()"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 757
    .restart local v4       #countMatchPattern:Lorg/apache/xpath/XPath;
    goto :goto_11

    .line 761
    :pswitch_80
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4           #countMatchPattern:Lorg/apache/xpath/XPath;
    const-string v5, "/"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 762
    .restart local v4       #countMatchPattern:Lorg/apache/xpath/XPath;
    goto :goto_11

    .line 766
    :pswitch_8e
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4           #countMatchPattern:Lorg/apache/xpath/XPath;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 768
    .restart local v4       #countMatchPattern:Lorg/apache/xpath/XPath;
    goto/16 :goto_11

    .line 726
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_12
        :pswitch_41
        :pswitch_64
        :pswitch_64
        :pswitch_10
        :pswitch_10
        :pswitch_8e
        :pswitch_72
        :pswitch_80
    .end packed-switch
.end method

.method getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;
    .registers 23
    .parameter "transformer"
    .parameter "sourceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 791
    const/4 v13, 0x0

    .line 792
    .local v13, list:[J
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v15

    .line 793
    .local v15, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCountersTable()Lorg/apache/xalan/transformer/CountersTable;

    move-result-object v8

    .line 795
    .local v8, ctable:Lorg/apache/xalan/transformer/CountersTable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    move-object/from16 v16, v0

    if-eqz v16, :cond_72

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    move/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    .line 799
    .local v7, countObj:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 800
    .local v9, d_count:D
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-eqz v16, :cond_37

    const-string v16, "NaN"

    .line 838
    .end local v7           #countObj:Lorg/apache/xpath/objects/XObject;
    .end local v9           #d_count:D
    :goto_36
    return-object v16

    .line 801
    .restart local v7       #countObj:Lorg/apache/xpath/objects/XObject;
    .restart local v9       #d_count:D
    :cond_37
    const-wide/16 v16, 0x0

    cmpg-double v16, v9, v16

    if-gez v16, :cond_46

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_46

    const-string v16, "-Infinity"

    goto :goto_36

    .line 802
    :cond_46
    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_4f

    const-string v16, "Infinity"

    goto :goto_36

    .line 803
    :cond_4f
    const-wide/16 v16, 0x0

    cmpl-double v16, v9, v16

    if-nez v16, :cond_58

    const-string v16, "0"

    goto :goto_36

    .line 805
    :cond_58
    double-to-long v5, v9

    .line 806
    .local v5, count:J
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object v13, v0

    .line 807
    const/16 v16, 0x0

    aput-wide v5, v13, v16

    .line 838
    .end local v5           #count:J
    .end local v7           #countObj:Lorg/apache/xpath/objects/XObject;
    .end local v9           #d_count:D
    :cond_64
    :goto_64
    if-eqz v13, :cond_e6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;

    move-result-object v16

    goto :goto_36

    .line 812
    :cond_72
    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9b

    .line 814
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object v13, v0

    .line 815
    const/16 v16, 0x0

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    aput-wide v17, v13, v16

    goto :goto_64

    .line 819
    :cond_9b
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e3

    const/16 v16, 0x1

    :goto_ab
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemNumber;->getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;

    move-result-object v4

    .line 822
    .local v4, ancestors:Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v4}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v12, v16, v17

    .line 824
    .local v12, lastIndex:I
    if-ltz v12, :cond_64

    .line 826
    add-int/lit8 v16, v12, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object v13, v0

    .line 828
    move v11, v12

    .local v11, i:I
    :goto_c8
    if-ltz v11, :cond_64

    .line 830
    invoke-virtual {v4, v11}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v14

    .line 832
    .local v14, target:I
    sub-int v16, v12, v11

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    aput-wide v17, v13, v16

    .line 828
    add-int/lit8 v11, v11, -0x1

    goto :goto_c8

    .line 819
    .end local v4           #ancestors:Lorg/apache/xml/utils/NodeVector;
    .end local v11           #i:I
    .end local v12           #lastIndex:I
    .end local v14           #target:I
    :cond_e3
    const/16 v16, 0x0

    goto :goto_ab

    .line 838
    :cond_e6
    const-string v16, ""

    goto/16 :goto_36
.end method

.method public getFormat()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getFrom()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getGroupingSeparator()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getGroupingSize()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLang()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLetterValue()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    return v0
.end method

.method getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;
    .registers 12
    .parameter "transformer"
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v7, 0x0

    .line 1039
    .local v7, locale:Ljava/util/Locale;
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_3c

    .line 1041
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    .line 1042
    .local v8, xctxt:Lorg/apache/xpath/XPathContext;
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1044
    .local v6, langValue:Ljava/lang/String;
    if-eqz v6, :cond_3b

    .line 1050
    new-instance v7, Ljava/util/Locale;

    .end local v7           #locale:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {v7, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .restart local v7       #locale:Ljava/util/Locale;
    if-nez v7, :cond_3b

    .line 1055
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "WG_LOCALE_NOT_FOUND"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v6, v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 1068
    .end local v6           #langValue:Ljava/lang/String;
    .end local v8           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_3b
    :goto_3b
    return-object v7

    .line 1065
    :cond_3c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    goto :goto_3b
.end method

.method getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;
    .registers 11
    .parameter "xctxt"
    .parameter "node"
    .parameter "stopAtFirstFound"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v5, -0x10

    .line 982
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 983
    .local v0, ancestors:Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v1

    .line 984
    .local v1, countMatchPattern:Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 986
    .local v2, dtm:Lorg/apache/xml/dtm/DTM;
    :goto_13
    const/4 v3, -0x1

    if-eq v3, p2, :cond_26

    .line 988
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_27

    .line 999
    if-nez p3, :cond_27

    .line 1019
    :cond_26
    return-object v0

    .line 1003
    :cond_27
    if-nez v1, :cond_30

    .line 1004
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Programmers error! countMatchPattern should never be null!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    :cond_30
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3d

    .line 1010
    invoke-virtual {v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    .line 1012
    if-nez p3, :cond_26

    .line 1016
    :cond_3d
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p2

    goto :goto_13
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 544
    const-string v0, "number"

    return-object v0
.end method

.method public getPreviousNode(Lorg/apache/xpath/XPathContext;I)I
    .registers 13
    .parameter "xctxt"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, -0x10

    const/4 v7, -0x1

    .line 856
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v1

    .line 857
    .local v1, countMatchPattern:Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 859
    .local v2, dtm:Lorg/apache/xml/dtm/DTM;
    const/4 v5, 0x3

    iget v6, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    if-ne v5, v6, :cond_4d

    .line 861
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    .line 866
    .local v3, fromMatchPattern:Lorg/apache/xpath/XPath;
    :cond_12
    if-eq v7, p2, :cond_33

    .line 872
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v4

    .line 874
    .local v4, next:I
    if-ne v7, v4, :cond_34

    .line 876
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v4

    .line 878
    if-eq v7, v4, :cond_3f

    if-eqz v3, :cond_2a

    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-nez v5, :cond_32

    :cond_2a
    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3f

    .line 882
    :cond_32
    const/4 p2, -0x1

    .line 929
    .end local v3           #fromMatchPattern:Lorg/apache/xpath/XPath;
    .end local v4           #next:I
    :cond_33
    :goto_33
    return p2

    .line 891
    .restart local v3       #fromMatchPattern:Lorg/apache/xpath/XPath;
    .restart local v4       #next:I
    :cond_34
    move v0, v4

    .line 893
    .local v0, child:I
    :cond_35
    :goto_35
    if-eq v7, v0, :cond_3f

    .line 895
    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v0

    .line 897
    if-eq v7, v0, :cond_35

    .line 898
    move v4, v0

    goto :goto_35

    .line 902
    .end local v0           #child:I
    :cond_3f
    move p2, v4

    .line 904
    if-eq v7, p2, :cond_12

    if-eqz v1, :cond_33

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-eqz v5, :cond_12

    goto :goto_33

    .line 915
    .end local v3           #fromMatchPattern:Lorg/apache/xpath/XPath;
    .end local v4           #next:I
    :cond_4d
    if-eq v7, p2, :cond_33

    .line 917
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result p2

    .line 919
    if-eq v7, p2, :cond_4d

    if-eqz v1, :cond_33

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-eqz v5, :cond_4d

    goto :goto_33
.end method

.method public getTargetNode(Lorg/apache/xpath/XPathContext;I)I
    .registers 10
    .parameter "xctxt"
    .parameter "sourceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v6, -0x1

    .line 947
    .local v6, target:I
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v3

    .line 949
    .local v3, countMatchPattern:Lorg/apache/xpath/XPath;
    const/4 v0, 0x3

    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    if-ne v0, v1, :cond_15

    .line 951
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result v6

    .line 961
    :goto_14
    return v6

    .line 957
    :cond_15
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result v6

    goto :goto_14
.end method

.method public getValue()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 534
    const/16 v0, 0x23

    return v0
.end method

.method getZeroString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1577
    const-string v0, "0"

    return-object v0
.end method

.method protected int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 21
    .parameter "val"
    .parameter "aTable"
    .parameter "stringBuf"

    .prologue
    .line 1624
    invoke-virtual/range {p3 .. p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v11

    .line 1625
    .local v11, radix:I
    new-array v12, v11, [C

    .line 1630
    .local v12, table:[C
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7
    const/4 v13, 0x1

    sub-int v13, v11, v13

    if-ge v9, v13, :cond_1a

    .line 1632
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v14

    aput-char v14, v12, v13

    .line 1630
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1635
    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v14

    aput-char v14, v12, v13

    .line 1640
    const/16 v13, 0x64

    new-array v4, v13, [C

    .line 1648
    .local v4, buf:[C
    array-length v13, v4

    const/4 v14, 0x1

    sub-int v5, v13, v14

    .line 1651
    .local v5, charPos:I
    const/4 v10, 0x1

    .line 1677
    .local v10, lookupIndex:I
    const-wide/16 v7, 0x0

    .local v7, correction:J
    move v6, v5

    .line 1686
    .end local v5           #charPos:I
    .local v6, charPos:I
    :goto_30
    if-eqz v10, :cond_3d

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-eqz v13, :cond_62

    const/4 v13, 0x1

    sub-int v13, v11, v13

    if-ne v10, v13, :cond_62

    :cond_3d
    const/4 v13, 0x1

    sub-int v13, v11, v13

    int-to-long v13, v13

    move-wide v7, v13

    .line 1691
    :goto_42
    add-long v13, p1, v7

    long-to-int v13, v13

    rem-int v10, v13, v11

    .line 1694
    int-to-long v13, v11

    div-long p1, p1, v13

    .line 1697
    if-nez v10, :cond_66

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-nez v13, :cond_66

    move v5, v6

    .line 1705
    .end local v6           #charPos:I
    .restart local v5       #charPos:I
    :cond_53
    add-int/lit8 v13, v5, 0x1

    array-length v14, v4

    sub-int/2addr v14, v5

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move-object/from16 v0, p4

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 1706
    return-void

    .line 1686
    .end local v5           #charPos:I
    .restart local v6       #charPos:I
    :cond_62
    const-wide/16 v13, 0x0

    move-wide v7, v13

    goto :goto_42

    .line 1701
    :cond_66
    add-int/lit8 v5, v6, -0x1

    .end local v6           #charPos:I
    .restart local v5       #charPos:I
    aget-char v13, v12, v10

    aput-char v13, v4, v6

    .line 1703
    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-lez v13, :cond_53

    move v6, v5

    .end local v5           #charPos:I
    .restart local v6       #charPos:I
    goto :goto_30
.end method

.method protected int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;
    .registers 8
    .parameter "val"
    .parameter "table"

    .prologue
    .line 1595
    invoke-virtual {p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v0

    .line 1598
    .local v0, radix:I
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_e

    .line 1600
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object v1

    .line 1603
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Ljava/lang/Character;

    long-to-int v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p3, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method protected long2roman(JZ)Ljava/lang/String;
    .registers 10
    .parameter "val"
    .parameter "prefixesAreOK"

    .prologue
    const-wide/16 v4, 0x0

    .line 1933
    cmp-long v2, p1, v4

    if-gtz v2, :cond_b

    .line 1935
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object v2

    .line 1969
    :goto_a
    return-object v2

    .line 1938
    :cond_b
    const-string v1, ""

    .line 1939
    .local v1, roman:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1941
    .local v0, place:I
    const-wide/16 v2, 0xf9f

    cmp-long v2, p1, v2

    if-gtz v2, :cond_6f

    .line 1945
    :cond_14
    :goto_14
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3d

    .line 1947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1948
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    sub-long/2addr p1, v2

    goto :goto_14

    .line 1951
    :cond_3d
    if-eqz p3, :cond_67

    .line 1953
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_67

    .line 1955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1956
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    sub-long/2addr p1, v2

    .line 1960
    :cond_67
    add-int/lit8 v0, v0, 0x1

    .line 1962
    cmp-long v2, p1, v4

    if-gtz v2, :cond_14

    :goto_6d
    move-object v2, v1

    .line 1969
    goto :goto_a

    .line 1966
    :cond_6f
    const-string v1, "#error"

    goto :goto_6d
.end method

.method public setCount(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 152
    return-void
.end method

.method public setFormat(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 323
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    .line 324
    return-void
.end method

.method public setFrom(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    .line 198
    return-void
.end method

.method public setGroupingSeparator(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 430
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    .line 431
    return-void
.end method

.method public setGroupingSize(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 462
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    .line 463
    return-void
.end method

.method public setLang(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 359
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 360
    return-void
.end method

.method public setLetterValue(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 395
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    .line 396
    return-void
.end method

.method public setLevel(I)V
    .registers 2
    .parameter "v"

    .prologue
    .line 255
    iput p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    .line 256
    return-void
.end method

.method public setValue(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 289
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    .line 290
    return-void
.end method

.method protected tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;
    .registers 32
    .parameter "val"
    .parameter "thisBundle"

    .prologue
    .line 1725
    const-wide v24, 0x7fffffffffffffffL

    cmp-long v24, p1, v24

    if-lez v24, :cond_15

    .line 1727
    const-string v24, "ER_NUMBER_TOO_BIG"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;)V

    .line 1728
    const-string v24, "#error"

    .line 1918
    .end local p0
    :goto_14
    return-object v24

    .line 1730
    .restart local p0
    :cond_15
    const/16 v20, 0x0

    .line 1733
    .local v20, table:[C
    const/4 v13, 0x1

    .line 1738
    .local v13, lookupIndex:I
    const/16 v24, 0x64

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object v5, v0

    .line 1746
    .local v5, buf:[C
    const/4 v6, 0x0

    .line 1749
    .local v6, charPos:I
    const-string v24, "numberGroups"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xml/utils/res/IntArrayWrapper;

    .line 1752
    .local v9, groups:Lorg/apache/xml/utils/res/IntArrayWrapper;
    const-string v24, "tables"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xml/utils/res/StringArrayWrapper;

    move-object/from16 v0, p0

    check-cast v0, Lorg/apache/xml/utils/res/StringArrayWrapper;

    move-object/from16 v21, v0

    .line 1757
    .local v21, tables:Lorg/apache/xml/utils/res/StringArrayWrapper;
    const-string v24, "numbering"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1760
    .local v19, numbering:Ljava/lang/String;
    const-string v24, "multiplicative-additive"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9d

    .line 1762
    const-string v24, "multiplierOrder"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1763
    .local v16, mult_order:Ljava/lang/String;
    const-string v24, "multiplier"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/res/LongArrayWrapper;

    move-object/from16 v0, p0

    check-cast v0, Lorg/apache/xml/utils/res/LongArrayWrapper;

    move-object/from16 v17, v0

    .line 1765
    .local v17, multiplier:Lorg/apache/xml/utils/res/LongArrayWrapper;
    const-string v24, "zero"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1766
    .local v23, zeroChar:Lorg/apache/xml/utils/res/CharArrayWrapper;
    const/4 v10, 0x0

    .line 1769
    .local v10, i:I
    :goto_7d
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v24

    move v0, v10

    move/from16 v1, v24

    if-ge v0, v1, :cond_94

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v24

    cmp-long v24, p1, v24

    if-gez v24, :cond_94

    .line 1771
    add-int/lit8 v10, v10, 0x1

    goto :goto_7d

    .line 1776
    :cond_94
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v24

    move v0, v10

    move/from16 v1, v24

    if-lt v0, v1, :cond_bb

    .line 1870
    .end local v10           #i:I
    .end local v16           #mult_order:Ljava/lang/String;
    .end local v17           #multiplier:Lorg/apache/xml/utils/res/LongArrayWrapper;
    .end local v23           #zeroChar:Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_9d
    :goto_9d
    const/4 v8, 0x0

    .line 1874
    .local v8, count:I
    :goto_9e
    invoke-virtual {v9}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v24

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_24e

    .line 1876
    invoke-virtual {v9, v8}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    div-long v24, p1, v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_1eb

    .line 1877
    add-int/lit8 v8, v8, 0x1

    goto :goto_9e

    .line 1782
    .end local v8           #count:I
    .restart local v10       #i:I
    .restart local v16       #mult_order:Ljava/lang/String;
    .restart local v17       #multiplier:Lorg/apache/xml/utils/res/LongArrayWrapper;
    .restart local v23       #zeroChar:Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_bb
    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v24

    cmp-long v24, p1, v24

    if-gez v24, :cond_fc

    .line 1784
    invoke-virtual/range {v23 .. v23}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v24

    if-nez v24, :cond_d8

    .line 1786
    add-int/lit8 v10, v10, 0x1

    .line 1866
    :cond_ce
    :goto_ce
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v24

    move v0, v10

    move/from16 v1, v24

    if-lt v0, v1, :cond_94

    goto :goto_9d

    .line 1790
    :cond_d8
    const/16 v24, 0x1

    sub-int v24, v6, v24

    aget-char v24, v5, v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f9

    .line 1791
    add-int/lit8 v7, v6, 0x1

    .end local v6           #charPos:I
    .local v7, charPos:I
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v24

    aput-char v24, v5, v6

    move v6, v7

    .line 1793
    .end local v7           #charPos:I
    .restart local v6       #charPos:I
    :cond_f9
    add-int/lit8 v10, v10, 0x1

    goto :goto_ce

    .line 1796
    :cond_fc
    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v24

    cmp-long v24, p1, v24

    if-ltz v24, :cond_ce

    .line 1798
    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v24

    div-long v14, p1, v24

    .line 1800
    .local v14, mult:J
    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v24

    rem-long p1, p1, v24

    .line 1802
    const/4 v12, 0x0

    .line 1804
    .local v12, k:I
    :goto_11a
    invoke-virtual {v9}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v24

    move v0, v12

    move/from16 v1, v24

    if-ge v0, v1, :cond_18b

    .line 1806
    const/4 v13, 0x1

    .line 1808
    invoke-virtual {v9, v12}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    div-long v24, v14, v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_138

    .line 1809
    add-int/lit8 v12, v12, 0x1

    goto :goto_11a

    .line 1814
    :cond_138
    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1816
    .local v4, THEletters:Lorg/apache/xml/utils/res/CharArrayWrapper;
    invoke-virtual {v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 1820
    const/4 v11, 0x0

    .local v11, j:I
    :goto_156
    invoke-virtual {v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v24

    move v0, v11

    move/from16 v1, v24

    if-ge v0, v1, :cond_16a

    .line 1822
    add-int/lit8 v24, v11, 0x1

    invoke-virtual {v4, v11}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v25

    aput-char v25, v20, v24

    .line 1820
    add-int/lit8 v11, v11, 0x1

    goto :goto_156

    .line 1825
    :cond_16a
    const/16 v24, 0x0

    const/16 v25, 0x1

    sub-int v25, v11, v25

    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v25

    aput-char v25, v20, v24

    .line 1828
    move-wide v0, v14

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual {v9, v12}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v25

    div-int v13, v24, v25

    .line 1831
    if-nez v13, :cond_18f

    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-nez v24, :cond_18f

    .line 1863
    .end local v4           #THEletters:Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v11           #j:I
    :cond_18b
    :goto_18b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_ce

    .line 1834
    .restart local v4       #THEletters:Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v11       #j:I
    :cond_18f
    const-string v24, "multiplierChar"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    check-cast p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v18

    .line 1838
    .local v18, multiplierChar:C
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move v0, v13

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e7

    .line 1840
    const-string v24, "precedes"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c5

    .line 1842
    add-int/lit8 v7, v6, 0x1

    .end local v6           #charPos:I
    .restart local v7       #charPos:I
    aput-char v18, v5, v6

    .line 1843
    add-int/lit8 v6, v7, 0x1

    .end local v7           #charPos:I
    .restart local v6       #charPos:I
    aget-char v24, v20, v13

    aput-char v24, v5, v7

    goto :goto_18b

    .line 1849
    :cond_1c5
    const/16 v24, 0x1

    move v0, v13

    move/from16 v1, v24

    if-ne v0, v1, :cond_1df

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v24

    const/16 v25, 0x1

    sub-int v24, v24, v25

    move v0, v10

    move/from16 v1, v24

    if-ne v0, v1, :cond_1df

    .line 1853
    :goto_1d9
    add-int/lit8 v7, v6, 0x1

    .end local v6           #charPos:I
    .restart local v7       #charPos:I
    aput-char v18, v5, v6

    move v6, v7

    .line 1856
    .end local v7           #charPos:I
    .restart local v6       #charPos:I
    goto :goto_18b

    .line 1851
    :cond_1df
    add-int/lit8 v7, v6, 0x1

    .end local v6           #charPos:I
    .restart local v7       #charPos:I
    aget-char v24, v20, v13

    aput-char v24, v5, v6

    move v6, v7

    .end local v7           #charPos:I
    .restart local v6       #charPos:I
    goto :goto_1d9

    .line 1859
    :cond_1e7
    const-string v24, "#error"

    goto/16 :goto_14

    .line 1880
    .end local v4           #THEletters:Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #k:I
    .end local v14           #mult:J
    .end local v16           #mult_order:Ljava/lang/String;
    .end local v17           #multiplier:Lorg/apache/xml/utils/res/LongArrayWrapper;
    .end local v18           #multiplierChar:C
    .end local v23           #zeroChar:Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v8       #count:I
    :cond_1eb
    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1882
    .local v22, theletters:Lorg/apache/xml/utils/res/CharArrayWrapper;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 1887
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_209
    invoke-virtual/range {v22 .. v22}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v24

    move v0, v11

    move/from16 v1, v24

    if-ge v0, v1, :cond_220

    .line 1889
    add-int/lit8 v24, v11, 0x1

    move-object/from16 v0, v22

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v25

    aput-char v25, v20, v24

    .line 1887
    add-int/lit8 v11, v11, 0x1

    goto :goto_209

    .line 1892
    :cond_220
    const/16 v24, 0x0

    const/16 v25, 0x1

    sub-int v25, v11, v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v25

    aput-char v25, v20, v24

    .line 1895
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual {v9, v8}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v25

    div-int v13, v24, v25

    .line 1898
    invoke-virtual {v9, v8}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    rem-long p1, p1, v24

    .line 1901
    if-nez v13, :cond_25d

    const-wide/16 v24, 0x0

    cmp-long v24, p1, v24

    if-nez v24, :cond_25d

    .line 1918
    .end local v11           #j:I
    .end local v22           #theletters:Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_24e
    new-instance v24, Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v5

    move/from16 v2, v25

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_14

    .line 1904
    .restart local v11       #j:I
    .restart local v22       #theletters:Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_25d
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move v0, v13

    move/from16 v1, v24

    if-ge v0, v1, :cond_272

    .line 1908
    add-int/lit8 v7, v6, 0x1

    .end local v6           #charPos:I
    .restart local v7       #charPos:I
    aget-char v24, v20, v13

    aput-char v24, v5, v6

    .line 1913
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .line 1914
    .end local v7           #charPos:I
    .restart local v6       #charPos:I
    goto/16 :goto_9e

    .line 1911
    :cond_272
    const-string v24, "#error"

    goto/16 :goto_14
.end method
