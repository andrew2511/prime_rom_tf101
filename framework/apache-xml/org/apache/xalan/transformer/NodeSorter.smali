.class public Lorg/apache/xalan/transformer/NodeSorter;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    }
.end annotation


# instance fields
.field m_execContext:Lorg/apache/xpath/XPathContext;

.field m_keys:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/XPathContext;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 62
    return-void
.end method


# virtual methods
.method compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I
    .registers 29
    .parameter "n1"
    .parameter "n2"
    .parameter "kIndex"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 131
    const/16 v17, 0x0

    .line 132
    .local v17, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 134
    .local v8, k:Lorg/apache/xalan/transformer/NodeSortKey;
    move-object v0, v8

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    move/from16 v20, v0

    if-eqz v20, :cond_156

    .line 138
    if-nez p3, :cond_a7

    .line 140
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 141
    .local v9, n1Num:D
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 172
    .local v12, n2Num:D
    :goto_31
    cmpl-double v20, v9, v12

    if-nez v20, :cond_105

    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_105

    .line 174
    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v17

    .line 256
    .end local v9           #n1Num:D
    .end local v12           #n2Num:D
    :cond_57
    :goto_57
    if-nez v17, :cond_7b

    .line 258
    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7b

    .line 260
    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v17

    .line 264
    :cond_7b
    if-nez v17, :cond_a6

    .line 271
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    .line 272
    .local v7, dtm:Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v21, v0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v20

    if-eqz v20, :cond_20a

    const/16 v20, -0x1

    move/from16 v17, v20

    .line 277
    .end local v7           #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_a6
    :goto_a6
    return v17

    .line 143
    :cond_a7
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_c7

    .line 145
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 146
    .restart local v9       #n1Num:D
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .restart local v12       #n2Num:D
    goto/16 :goto_31

    .line 159
    .end local v9           #n1Num:D
    .end local v12           #n2Num:D
    :cond_c7
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    .line 161
    .local v15, r1:Lorg/apache/xpath/objects/XObject;
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    .line 163
    .local v16, r2:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v9

    .line 168
    .restart local v9       #n1Num:D
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v12

    .restart local v12       #n2Num:D
    goto/16 :goto_31

    .line 179
    .end local v15           #r1:Lorg/apache/xpath/objects/XObject;
    .end local v16           #r2:Lorg/apache/xpath/objects/XObject;
    :cond_105
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_129

    .line 181
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_126

    .line 182
    const-wide/16 v5, 0x0

    .line 192
    .local v5, diff:D
    :goto_113
    const-wide/16 v20, 0x0

    cmpg-double v20, v5, v20

    if-gez v20, :cond_13a

    move-object v0, v8

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_135

    const/16 v20, 0x1

    move/from16 v17, v20

    :goto_124
    goto/16 :goto_57

    .line 184
    .end local v5           #diff:D
    :cond_126
    const-wide/high16 v5, -0x4010

    .restart local v5       #diff:D
    goto :goto_113

    .line 186
    .end local v5           #diff:D
    :cond_129
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_132

    .line 187
    const-wide/high16 v5, 0x3ff0

    .restart local v5       #diff:D
    goto :goto_113

    .line 189
    .end local v5           #diff:D
    :cond_132
    sub-double v5, v9, v12

    .restart local v5       #diff:D
    goto :goto_113

    .line 192
    :cond_135
    const/16 v20, -0x1

    move/from16 v17, v20

    goto :goto_124

    :cond_13a
    const-wide/16 v20, 0x0

    cmpl-double v20, v5, v20

    if-lez v20, :cond_151

    move-object v0, v8

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14c

    const/16 v20, -0x1

    move/from16 v17, v20

    goto :goto_124

    :cond_14c
    const/16 v20, 0x1

    move/from16 v17, v20

    goto :goto_124

    :cond_151
    const/16 v20, 0x0

    move/from16 v17, v20

    goto :goto_124

    .line 201
    .end local v5           #diff:D
    .end local v9           #n1Num:D
    .end local v12           #n2Num:D
    :cond_156
    if-nez p3, :cond_19b

    .line 203
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/text/CollationKey;

    .line 204
    .local v11, n1String:Ljava/text/CollationKey;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/text/CollationKey;

    .line 233
    .local v14, n2String:Ljava/text/CollationKey;
    :goto_166
    invoke-virtual {v11, v14}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v17

    .line 236
    move-object v0, v8

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18d

    .line 238
    invoke-virtual {v11}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 239
    .local v18, tempN1:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 241
    .local v19, tempN2:Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18d

    .line 245
    if-nez v17, :cond_202

    const/16 v20, 0x0

    move/from16 v17, v20

    .line 250
    .end local v18           #tempN1:Ljava/lang/String;
    .end local v19           #tempN2:Ljava/lang/String;
    :cond_18d
    :goto_18d
    move-object v0, v8

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_57

    .line 252
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_57

    .line 206
    .end local v11           #n1String:Ljava/text/CollationKey;
    .end local v14           #n2String:Ljava/text/CollationKey;
    :cond_19b
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b2

    .line 208
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/text/CollationKey;

    .line 209
    .restart local v11       #n1String:Ljava/text/CollationKey;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/text/CollationKey;

    .restart local v14       #n2String:Ljava/text/CollationKey;
    goto :goto_166

    .line 222
    .end local v11           #n1String:Ljava/text/CollationKey;
    .end local v14           #n2String:Ljava/text/CollationKey;
    :cond_1b2
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    .line 224
    .restart local v15       #r1:Lorg/apache/xpath/objects/XObject;
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    .line 227
    .restart local v16       #r2:Lorg/apache/xpath/objects/XObject;
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v11

    .line 228
    .restart local v11       #n1String:Ljava/text/CollationKey;
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v14

    .restart local v14       #n2String:Ljava/text/CollationKey;
    goto/16 :goto_166

    .line 245
    .end local v15           #r1:Lorg/apache/xpath/objects/XObject;
    .end local v16           #r2:Lorg/apache/xpath/objects/XObject;
    .restart local v18       #tempN1:Ljava/lang/String;
    .restart local v19       #tempN2:Ljava/lang/String;
    :cond_202
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v17, v20

    goto :goto_18d

    .line 272
    .end local v11           #n1String:Ljava/text/CollationKey;
    .end local v14           #n2String:Ljava/text/CollationKey;
    .end local v18           #tempN1:Ljava/lang/String;
    .end local v19           #tempN2:Ljava/lang/String;
    .restart local v7       #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_20a
    const/16 v20, 0x1

    move/from16 v17, v20

    goto/16 :goto_a6
.end method

.method mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V
    .registers 26
    .parameter "a"
    .parameter "b"
    .parameter "l"
    .parameter "r"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 299
    sub-int v5, p4, p3

    if-lez v5, :cond_fd

    .line 301
    add-int v5, p4, p3

    div-int/lit8 v9, v5, 0x2

    .local v9, m:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    .line 303
    invoke-virtual/range {v5 .. v10}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 304
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 308
    move/from16 v17, v9

    .local v17, i:I
    :goto_26
    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_59

    .line 313
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_48

    .line 314
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 308
    :goto_45
    add-int/lit8 v17, v17, -0x1

    goto :goto_26

    .line 316
    :cond_48
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_45

    .line 319
    :cond_59
    move/from16 v17, p3

    .line 321
    add-int/lit8 v18, v9, 0x1

    .local v18, j:I
    :goto_5d
    move/from16 v0, v18

    move/from16 v1, p4

    if-gt v0, v1, :cond_9d

    .line 325
    add-int v5, p4, v9

    add-int/lit8 v5, v5, 0x1

    sub-int v5, v5, v18

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v5, v6, :cond_87

    .line 326
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    add-int v6, p4, v9

    add-int/lit8 v6, v6, 0x1

    sub-int v6, v6, v18

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 321
    :goto_84
    add-int/lit8 v18, v18, 0x1

    goto :goto_5d

    .line 328
    :cond_87
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    add-int v6, p4, v9

    add-int/lit8 v6, v6, 0x1

    sub-int v6, v6, v18

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_84

    .line 331
    :cond_9d
    move/from16 v18, p4

    .line 335
    move/from16 v19, p3

    .end local p3
    .local v19, k:I
    :goto_a1
    move/from16 v0, v19

    move/from16 v1, p4

    if-gt v0, v1, :cond_fd

    .line 339
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c6

    .line 340
    const/16 v16, -0x1

    .line 345
    .local v16, compVal:I
    :goto_af
    if-gez v16, :cond_e8

    .line 349
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 351
    add-int/lit8 v17, v17, 0x1

    .line 335
    :cond_c3
    :goto_c3
    add-int/lit8 v19, v19, 0x1

    goto :goto_a1

    .line 342
    .end local v16           #compVal:I
    :cond_c6
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v5

    move v3, v6

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v16

    .restart local v16       #compVal:I
    goto :goto_af

    .line 353
    :cond_e8
    if-lez v16, :cond_c3

    .line 357
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 359
    add-int/lit8 v18, v18, -0x1

    goto :goto_c3

    .line 363
    .end local v9           #m:I
    .end local v16           #compVal:I
    .end local v17           #i:I
    .end local v18           #j:I
    .end local v19           #k:I
    :cond_fd
    return-void
.end method

.method public sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .registers 13
    .parameter "v"
    .parameter "keys"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    .line 80
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v8

    .line 88
    .local v8, n:I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 90
    .local v1, nodes:Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_d
    if-ge v7, v8, :cond_1e

    .line 92
    new-instance v6, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    invoke-interface {p1, v7}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    move-result v0

    invoke-direct {v6, p0, v0}, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;-><init>(Lorg/apache/xalan/transformer/NodeSorter;I)V

    .line 94
    .local v6, elem:Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 97
    .end local v6           #elem:Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    :cond_1e
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v2, scratchVector:Ljava/util/Vector;
    const/4 v0, 0x1

    sub-int v4, v8, v0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 102
    const/4 v7, 0x0

    .end local p0
    :goto_2c
    if-ge v7, v8, :cond_3c

    .line 104
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    iget v0, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p1, v0, v7}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 106
    :cond_3c
    invoke-interface {p1, v3}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    .line 111
    return-void
.end method
