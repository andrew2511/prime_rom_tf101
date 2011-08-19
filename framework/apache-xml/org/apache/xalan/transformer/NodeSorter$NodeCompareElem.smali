.class Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/transformer/NodeSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeCompareElem"
.end annotation


# instance fields
.field m_key1Value:Ljava/lang/Object;

.field m_key2Value:Ljava/lang/Object;

.field m_node:I

.field maxkey:I

.field final synthetic this$0:Lorg/apache/xalan/transformer/NodeSorter;


# direct methods
.method constructor <init>(Lorg/apache/xalan/transformer/NodeSorter;I)V
    .registers 15
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 492
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->this$0:Lorg/apache/xalan/transformer/NodeSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/4 v8, 0x2

    iput v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->maxkey:I

    .line 493
    iput p2, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    .line 495
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_75

    .line 497
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 498
    .local v3, k1:Lorg/apache/xalan/transformer/NodeSortKey;
    iget-object v8, v3, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object v9, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget-object v10, v3, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v8, v9, p2, v10}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    .line 503
    .local v6, r:Lorg/apache/xpath/objects/XObject;
    iget-boolean v8, v3, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-eqz v8, :cond_76

    .line 505
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    .line 508
    .local v1, d:D
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    .line 515
    .end local v1           #d:D
    :goto_35
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4c

    .line 518
    check-cast v6, Lorg/apache/xpath/objects/XNodeSet;

    .end local v6           #r:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v5

    .line 519
    .local v5, ni:Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v5}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v0

    .line 520
    .local v0, current:I
    const/4 v8, -0x1

    if-ne v8, v0, :cond_4c

    .line 521
    invoke-interface {v5}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 529
    .end local v0           #current:I
    .end local v5           #ni:Lorg/apache/xml/dtm/DTMIterator;
    :cond_4c
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-le v8, v11, :cond_75

    .line 531
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v8, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 533
    .local v4, k2:Lorg/apache/xalan/transformer/NodeSortKey;
    iget-object v8, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object v9, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget-object v10, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v8, v9, p2, v10}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    .line 536
    .local v7, r2:Lorg/apache/xpath/objects/XObject;
    iget-boolean v8, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-eqz v8, :cond_83

    .line 537
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    .line 538
    .restart local v1       #d:D
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    .line 555
    .end local v1           #d:D
    .end local v3           #k1:Lorg/apache/xalan/transformer/NodeSortKey;
    .end local v4           #k2:Lorg/apache/xalan/transformer/NodeSortKey;
    .end local v7           #r2:Lorg/apache/xpath/objects/XObject;
    :cond_75
    :goto_75
    return-void

    .line 512
    .restart local v3       #k1:Lorg/apache/xalan/transformer/NodeSortKey;
    .restart local v6       #r:Lorg/apache/xpath/objects/XObject;
    :cond_76
    iget-object v8, v3, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    goto :goto_35

    .line 540
    .end local v6           #r:Lorg/apache/xpath/objects/XObject;
    .restart local v4       #k2:Lorg/apache/xalan/transformer/NodeSortKey;
    .restart local v7       #r2:Lorg/apache/xpath/objects/XObject;
    :cond_83
    iget-object v8, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    goto :goto_75
.end method
