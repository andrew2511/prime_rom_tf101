.class public Lorg/apache/xalan/templates/StylesheetRoot;
.super Lorg/apache/xalan/templates/StylesheetComposed;
.source "StylesheetRoot.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/xml/transform/Templates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35c805222327c5cfL


# instance fields
.field private m_attrSets:Ljava/util/HashMap;

.field private m_availElems:Ljava/util/HashMap;

.field private transient m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

.field private m_decimalFormatSymbols:Ljava/util/Hashtable;

.field private m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private transient m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

.field private m_extensionHandlerClass:Ljava/lang/String;

.field private m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_keyDecls:Ljava/util/Vector;

.field private m_namespaceAliasComposed:Ljava/util/Hashtable;

.field private m_optimizer:Z

.field private m_outputMethodSet:Z

.field private m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

.field m_selectDefault:Lorg/apache/xpath/XPath;

.field private m_source_location:Z

.field private m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_templateList:Lorg/apache/xalan/templates/TemplateList;

.field private m_variables:Ljava/util/Vector;

.field private m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;)V
    .registers 10
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, v7}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    .line 66
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    .line 71
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    .line 76
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    .line 158
    iput-object v7, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    .line 526
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    .line 1221
    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerExsltFunction"

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 91
    :try_start_19
    new-instance v0, Lorg/apache/xpath/XPath;

    const-string v1, "node()"

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/StylesheetRoot;->initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    :try_end_29
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19 .. :try_end_29} :catch_2a

    .line 99
    return-void

    .line 95
    :catch_2a
    move-exception v0

    move-object v6, v0

    .line 97
    .local v6, se:Ljavax/xml/transform/TransformerException;
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ER_CANNOT_INIT_DEFAULT_TEMPLATES"

    invoke-static {v1, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V
    .registers 4
    .parameter "schema"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Ljavax/xml/transform/ErrorListener;)V

    .line 118
    invoke-virtual {p1}, Lorg/apache/xalan/processor/XSLTSchema;->getElemsAvailable()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    .line 119
    return-void
.end method

.method private QuickSort2(Ljava/util/Vector;II)V
    .registers 9
    .parameter "v"
    .parameter "lo0"
    .parameter "hi0"

    .prologue
    .line 1141
    move v1, p2

    .line 1142
    .local v1, lo:I
    move v0, p3

    .line 1144
    .local v0, hi:I
    if-le p3, p2, :cond_53

    .line 1148
    add-int v4, p2, p3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1151
    .local v2, midNode:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_e
    :goto_e
    if-gt v1, v0, :cond_49

    .line 1155
    :goto_10
    if-ge v1, p3, :cond_21

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_21

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1162
    :cond_21
    :goto_21
    if-le v0, p2, :cond_32

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_32

    .line 1163
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 1167
    :cond_32
    if-gt v1, v0, :cond_e

    .line 1169
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1170
    .local v3, node:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1171
    invoke-virtual {p1, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1173
    add-int/lit8 v1, v1, 0x1

    .line 1174
    add-int/lit8 v0, v0, -0x1

    .line 1175
    goto :goto_e

    .line 1180
    .end local v3           #node:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_49
    if-ge p2, v0, :cond_4e

    .line 1182
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    .line 1187
    :cond_4e
    if-ge v1, p3, :cond_53

    .line 1189
    invoke-direct {p0, p1, v1, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    .line 1192
    .end local v2           #midNode:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_53
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object v0
.end method

.method private clearComposeState()V
    .registers 2

    .prologue
    .line 1218
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    .line 1219
    return-void
.end method

.method private initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    .registers 16
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1071
    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1073
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1075
    new-instance v0, Lorg/apache/xpath/XPath;

    const-string v1, "*"

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 1077
    .local v0, defMatch:Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 1079
    new-instance v12, Lorg/apache/xalan/templates/ElemApplyTemplates;

    invoke-direct {v12}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    .line 1081
    .local v12, childrenElement:Lorg/apache/xalan/templates/ElemApplyTemplates;
    invoke-virtual {v12, v4}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    .line 1082
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {v12, v1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 1083
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v12}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1085
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1088
    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1090
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1092
    new-instance v0, Lorg/apache/xpath/XPath;

    .end local v0           #defMatch:Lorg/apache/xpath/XPath;
    const-string v1, "text() | @*"

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 1094
    .restart local v0       #defMatch:Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 1096
    new-instance v13, Lorg/apache/xalan/templates/ElemValueOf;

    invoke-direct {v13}, Lorg/apache/xalan/templates/ElemValueOf;-><init>()V

    .line 1098
    .local v13, elemValueOf:Lorg/apache/xalan/templates/ElemValueOf;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v13}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1100
    new-instance v5, Lorg/apache/xpath/XPath;

    const-string v6, "."

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 1102
    .local v5, selectPattern:Lorg/apache/xpath/XPath;
    invoke-virtual {v13, v5}, Lorg/apache/xalan/templates/ElemValueOf;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 1105
    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1107
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1109
    new-instance v0, Lorg/apache/xpath/XPath;

    .end local v0           #defMatch:Lorg/apache/xpath/XPath;
    const-string v7, "/"

    move-object v6, v0

    move-object v8, p0

    move-object v9, p0

    move v10, v4

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 1111
    .restart local v0       #defMatch:Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 1113
    new-instance v12, Lorg/apache/xalan/templates/ElemApplyTemplates;

    .end local v12           #childrenElement:Lorg/apache/xalan/templates/ElemApplyTemplates;
    invoke-direct {v12}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    .line 1115
    .restart local v12       #childrenElement:Lorg/apache/xalan/templates/ElemApplyTemplates;
    invoke-virtual {v12, v4}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    .line 1116
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v1, v12}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1117
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {v12, v1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 1118
    return-void
.end method


# virtual methods
.method protected addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V
    .registers 9
    .parameter "stylesheet"
    .parameter "addToList"
    .parameter "importList"

    .prologue
    .line 404
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v3

    .line 406
    .local v3, n:I
    if-lez v3, :cond_14

    .line 408
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v3, :cond_14

    .line 410
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    .line 412
    .local v1, imported:Lorg/apache/xalan/templates/Stylesheet;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 416
    .end local v0           #i:I
    .end local v1           #imported:Lorg/apache/xalan/templates/Stylesheet;
    :cond_14
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v3

    .line 418
    if-lez v3, :cond_28

    .line 420
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1b
    if-ge v0, v3, :cond_28

    .line 422
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v2

    .line 424
    .local v2, included:Lorg/apache/xalan/templates/Stylesheet;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 428
    .end local v0           #i:I
    .end local v2           #included:Lorg/apache/xalan/templates/Stylesheet;
    :cond_28
    if-eqz p2, :cond_2d

    .line 429
    invoke-virtual {p3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 431
    :cond_2d
    return-void
.end method

.method public canStripWhiteSpace()Z
    .registers 2

    .prologue
    .line 970
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .parameter "templ"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 363
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 364
    .local v0, child:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_7
    if-eqz v0, :cond_11

    .line 366
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 364
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_7

    .line 369
    :cond_11
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 370
    return-void
.end method

.method public getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getAvailableElements()Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    return-object v0
.end method

.method getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    return-object v0
.end method

.method public getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;
    .registers 3
    .parameter "name"

    .prologue
    .line 640
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method public getDefaultOutputProps()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public final getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public final getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getExtensionHandlerClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1240
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-nez v0, :cond_b

    .line 167
    new-instance v0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    invoke-direct {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    .line 168
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    invoke-virtual {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 3
    .parameter "i"

    .prologue
    .line 443
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGlobalImportCount()I
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I
    .registers 5
    .parameter "sheet"

    .prologue
    .line 472
    if-ne p0, p1, :cond_4

    .line 473
    const/4 v2, 0x0

    .line 483
    :goto_3
    return v2

    .line 475
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    .line 477
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_16

    .line 479
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    if-ne p1, v2, :cond_13

    move v2, v0

    .line 480
    goto :goto_3

    .line 477
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 483
    :cond_16
    const/4 v2, -0x1

    goto :goto_3
.end method

.method public getIncremental()Z
    .registers 2

    .prologue
    .line 1381
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    return v0
.end method

.method public getKeysComposed()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    return-object v0
.end method

.method public getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;
    .registers 3
    .parameter "uri"

    .prologue
    .line 699
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    move-object p0, v0

    .end local p0
    :goto_6
    check-cast p0, Lorg/apache/xalan/templates/NamespaceAlias;

    return-object p0

    .restart local p0
    :cond_9
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    goto :goto_6
.end method

.method public getOptimizer()Z
    .registers 2

    .prologue
    .line 1367
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    return v0
.end method

.method public getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultOutputProps()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getSource_location()Z
    .registers 2

    .prologue
    .line 1388
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    return v0
.end method

.method public final getStartRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 3
    .parameter "qname"

    .prologue
    .line 813
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 16
    .parameter "xctxt"
    .parameter "targetNode"
    .parameter "mode"
    .parameter "maxImportLevel"
    .parameter "endImportLevel"
    .parameter "quietConflictWarnings"
    .parameter "dtm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 796
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 12
    .parameter "xctxt"
    .parameter "targetNode"
    .parameter "mode"
    .parameter "quietConflictWarnings"
    .parameter "dtm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    return-object v0
.end method

.method public final getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    return-object v0
.end method

.method public getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 6
    .parameter "qname"

    .prologue
    .line 848
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    if-eqz v3, :cond_24

    .line 850
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 852
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_24

    .line 854
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

    .line 855
    .local v2, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v3, v2

    .line 860
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    :goto_20
    return-object v3

    .line 852
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 860
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_24
    const/4 v3, 0x0

    goto :goto_20
.end method

.method public getVariablesAndParamsComposed()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object v0
.end method

.method public getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .registers 10
    .parameter "support"
    .parameter "targetElement"
    .parameter "dtm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 921
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_13

    .line 922
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-object v0, p0

    .line 925
    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    move-object v0, v3

    goto :goto_12
.end method

.method initComposeState()V
    .registers 2

    .prologue
    .line 1201
    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    .line 1202
    return-void
.end method

.method public isOutputMethodSet()Z
    .registers 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    return v0
.end method

.method public isRoot()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public isSecureProcessing()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    return v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .registers 2

    .prologue
    .line 200
    new-instance v0, Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/TransformerImpl;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-object v0
.end method

.method public recompose()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 242
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 246
    .local v8, recomposableElements:Ljava/util/Vector;
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    if-nez v9, :cond_49

    .line 249
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 251
    .local v1, importList:Ljava/util/Vector;
    invoke-virtual {p0, p0, v11, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    .line 259
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Lorg/apache/xalan/templates/StylesheetComposed;

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    sub-int v5, v9, v11

    .local v5, j:I
    :goto_21
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v0, v9, :cond_49

    .line 263
    iget-object v10, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xalan/templates/StylesheetComposed;

    aput-object v9, v10, v5

    .line 267
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object v9, v9, v5

    iget-object v10, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 269
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    add-int/lit8 v6, v5, -0x1

    .end local v5           #j:I
    .local v6, j:I
    aget-object v9, v9, v5

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeImports()V

    .line 261
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    .end local v6           #j:I
    .restart local v5       #j:I
    goto :goto_21

    .line 273
    .end local v0           #i:I
    .end local v1           #importList:Ljava/util/Vector;
    .end local v5           #j:I
    :cond_49
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v7

    .line 275
    .local v7, n:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4e
    if-ge v0, v7, :cond_5a

    .line 277
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    .line 278
    .local v2, imported:Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v2, v8}, Lorg/apache/xalan/templates/StylesheetComposed;->recompose(Ljava/util/Vector;)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 283
    .end local v2           #imported:Lorg/apache/xalan/templates/StylesheetComposed;
    :cond_5a
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-direct {p0, v8, v9, v10}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    .line 288
    new-instance v9, Lorg/apache/xalan/templates/OutputProperties;

    const-string v10, ""

    invoke-direct {v9, v10}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    .line 291
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    .line 292
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    .line 293
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    .line 294
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    .line 295
    new-instance v9, Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {v9}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    .line 296
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    .line 302
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    sub-int v0, v9, v11

    :goto_9c
    if-ltz v0, :cond_aa

    .line 303
    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_9c

    .line 320
    :cond_aa
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->initComposeState()V

    .line 323
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/TemplateList;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 326
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/OutputProperties;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 327
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/OutputProperties;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 332
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v7

    .line 334
    const/4 v0, 0x0

    :goto_c1
    if-ge v0, v7, :cond_db

    .line 336
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    .line 337
    .restart local v2       #imported:Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v4

    .line 338
    .local v4, includedCount:I
    const/4 v5, -0x1

    .restart local v5       #j:I
    :goto_cc
    if-ge v5, v4, :cond_d8

    .line 340
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    .line 341
    .local v3, included:Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    .line 334
    .end local v3           #included:Lorg/apache/xalan/templates/Stylesheet;
    :cond_d8
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 345
    .end local v2           #imported:Lorg/apache/xalan/templates/StylesheetComposed;
    .end local v4           #includedCount:I
    .end local v5           #j:I
    :cond_db
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-eqz v9, :cond_e4

    .line 346
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    invoke-virtual {v9}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerUnregisteredNamespaces()V

    .line 348
    :cond_e4
    invoke-direct {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->clearComposeState()V

    .line 349
    return-void
.end method

.method recomposeAttributeSets(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .registers 5
    .parameter "attrSet"

    .prologue
    .line 553
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 555
    .local v0, attrSetList:Ljava/util/ArrayList;
    if-nez v0, :cond_1c

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #attrSetList:Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .restart local v0       #attrSetList:Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method recomposeDecimalFormats(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .registers 8
    .parameter "dfp"

    .prologue
    const/4 v5, 0x0

    .line 594
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    .line 596
    .local v0, oldDfs:Ljava/text/DecimalFormatSymbols;
    if-nez v0, :cond_1d

    .line 598
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_1c
    :goto_1c
    return-void

    .line 600
    :cond_1d
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 603
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    new-instance v3, Lorg/apache/xml/utils/QName;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 606
    const-string v2, "WG_ONE_DEFAULT_XSLDECIMALFORMAT_ALLOWED"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, themsg:Ljava/lang/String;
    :goto_40
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->error(Ljava/lang/String;)V

    goto :goto_1c

    .line 613
    .end local v1           #themsg:Ljava/lang/String;
    :cond_44
    const-string v2, "WG_XSLDECIMALFORMAT_NAMES_MUST_BE_UNIQUE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #themsg:Ljava/lang/String;
    goto :goto_40
.end method

.method recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .registers 3
    .parameter "keyDecl"

    .prologue
    .line 657
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 658
    return-void
.end method

.method recomposeNamespaceAliases(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .registers 4
    .parameter "nsAlias"

    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    return-void
.end method

.method recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 3
    .parameter "oprops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V

    .line 503
    return-void
.end method

.method recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 3
    .parameter "template"

    .prologue
    .line 716
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 717
    return-void
.end method

.method recomposeVariables(Lorg/apache/xalan/templates/ElemVariable;)V
    .registers 3
    .parameter "elemVar"

    .prologue
    .line 830
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 832
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    .line 833
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    .line 834
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 836
    :cond_1c
    return-void
.end method

.method recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .registers 3
    .parameter "wsi"

    .prologue
    .line 888
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-nez v0, :cond_b

    .line 889
    new-instance v0, Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {v0}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    .line 891
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 892
    return-void
.end method

.method public setExtensionHandlerClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "handlerClassName"

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    .line 1232
    .local v0, oldvalue:Ljava/lang/String;
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    .line 1233
    return-object v0
.end method

.method public setIncremental(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 1395
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    .line 1396
    return-void
.end method

.method public setOptimizer(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 1374
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    .line 1375
    return-void
.end method

.method public setSecureProcessing(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    .line 137
    return-void
.end method

.method public setSource_location(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 1402
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    .line 1403
    return-void
.end method

.method public final setTemplateListComposed(Lorg/apache/xalan/templates/TemplateList;)V
    .registers 2
    .parameter "templateList"

    .prologue
    .line 739
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    .line 740
    return-void
.end method

.method public shouldCheckWhitespace()Z
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;I)Z
    .registers 12
    .parameter "support"
    .parameter "targetElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 942
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_2f

    .line 944
    :goto_6
    if-eq v8, p2, :cond_2f

    .line 946
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v5

    .line 947
    .local v5, dtm:Lorg/apache/xml/dtm/DTM;
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v6

    check-cast v6, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    .line 949
    .local v6, info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    if-eqz v6, :cond_1e

    .line 950
    invoke-virtual {v6}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z

    move-result v0

    .line 959
    .end local v5           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v6           #info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :goto_1d
    return v0

    .line 952
    .restart local v5       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v6       #info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :cond_1e
    invoke-interface {v5, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v7

    .line 953
    .local v7, parent:I
    if-eq v8, v7, :cond_2d

    const/4 v0, 0x1

    invoke-interface {v5, v7}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_2d

    .line 954
    move p2, v7

    goto :goto_6

    .line 956
    :cond_2d
    const/4 p2, -0x1

    goto :goto_6

    .end local v5           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v6           #info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .end local v7           #parent:I
    :cond_2f
    move v0, v4

    .line 959
    goto :goto_1d
.end method
