.class Lorg/apache/xalan/transformer/NodeSortKey;
.super Ljava/lang/Object;
.source "NodeSortKey.java"


# instance fields
.field m_caseOrderUpper:Z

.field m_col:Ljava/text/Collator;

.field m_descending:Z

.field m_locale:Ljava/util/Locale;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

.field m_selectPat:Lorg/apache/xpath/XPath;

.field m_treatAsNumbers:Z


# direct methods
.method constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V
    .registers 13
    .parameter "transformer"
    .parameter "selectPat"
    .parameter "treatAsNumbers"
    .parameter "descending"
    .parameter "langValue"
    .parameter "caseOrderUpper"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 82
    iput-object p7, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 83
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    .line 84
    iput-boolean p3, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    .line 85
    iput-boolean p4, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    .line 86
    iput-boolean p6, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    .line 88
    if-eqz p5, :cond_57

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-nez v0, :cond_57

    .line 100
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    .line 107
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    if-nez v0, :cond_32

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    .line 119
    :cond_32
    :goto_32
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    .line 121
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    if-nez v0, :cond_56

    .line 123
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WG_CANNOT_FIND_COLLATOR"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    .line 128
    :cond_56
    return-void

    .line 116
    :cond_57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    goto :goto_32
.end method
