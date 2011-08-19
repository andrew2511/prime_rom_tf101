.class public Lorg/apache/xalan/transformer/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.java"


# instance fields
.field private transient m_key_tables:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;
    .registers 20
    .parameter "xctxt"
    .parameter "doc"
    .parameter "name"
    .parameter "ref"
    .parameter "nscontext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v12, 0x0

    .line 63
    .local v12, nl:Lorg/apache/xpath/objects/XNodeSet;
    move-object/from16 v0, p5

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v13, v0

    .line 65
    .local v13, template:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v13, :cond_4f

    invoke-virtual {v13}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 68
    const/4 v9, 0x0

    .line 70
    .local v9, foundDoc:Z
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    if-nez v4, :cond_50

    .line 72
    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    .line 96
    :cond_1f
    :goto_1f
    if-nez v12, :cond_4f

    if-nez v9, :cond_4f

    .line 98
    new-instance v3, Lorg/apache/xalan/transformer/KeyTable;

    invoke-virtual {v13}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v7

    move/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xalan/transformer/KeyTable;-><init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    .line 103
    .local v3, kt:Lorg/apache/xalan/transformer/KeyTable;
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v3}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    move-result v4

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_4f

    .line 107
    const/4 v9, 0x1

    .line 108
    move-object v0, v3

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v12

    .line 113
    .end local v3           #kt:Lorg/apache/xalan/transformer/KeyTable;
    .end local v9           #foundDoc:Z
    :cond_4f
    return-object v12

    .line 76
    .restart local v9       #foundDoc:Z
    :cond_50
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v11

    .line 78
    .local v11, nKeyTables:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_57
    if-ge v10, v11, :cond_1f

    .line 80
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v4, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/KeyTable;

    .line 82
    .restart local v3       #kt:Lorg/apache/xalan/transformer/KeyTable;
    invoke-virtual {v3}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-virtual {v3}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    move-result v4

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_84

    .line 84
    move-object v0, v3

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v12

    .line 86
    if-eqz v12, :cond_84

    .line 88
    const/4 v9, 0x1

    .line 90
    goto :goto_1f

    .line 78
    :cond_84
    add-int/lit8 v10, v10, 0x1

    goto :goto_57
.end method
