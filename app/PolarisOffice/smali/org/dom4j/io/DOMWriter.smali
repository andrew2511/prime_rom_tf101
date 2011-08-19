.class public Lorg/dom4j/io/DOMWriter;
.super Ljava/lang/Object;
.source "DOMWriter.java"


# static fields
.field private static final DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static loggedWarning:Z


# instance fields
.field private domDocumentClass:Ljava/lang/Class;

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    sput-boolean v2, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 39
    const-string v1, "org.apache.xerces.dom.DocumentImpl"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 40
    const-string v2, "gnu.xml.dom.DomDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 41
    const-string v2, "org.apache.crimson.tree.XmlDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 42
    const-string v2, "com.sun.xml.tree.XmlDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 43
    const-string v2, "oracle.xml.parser.v2.XMLDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 44
    const-string v2, "oracle.xml.parser.XMLDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 45
    const-string v2, "org.dom4j.dom.DOMDocument"

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter "domDocumentClass"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 58
    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 59
    return-void
.end method


# virtual methods
.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1
    .parameter "domDocument"
    .parameter "domCurrent"
    .parameter "text"

    .prologue
    .line 241
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .line 242
    .local v0, domText:Lorg/w3c/dom/Text;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 243
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V
    .locals 6
    .parameter "domDocument"
    .parameter "domCurrent"
    .parameter "content"

    .prologue
    .line 152
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 154
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 175
    return-void

    .line 155
    :cond_0
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, object:Ljava/lang/Object;
    instance-of v5, v2, Lorg/dom4j/Element;

    if-eqz v5, :cond_2

    .line 158
    check-cast v2, Lorg/dom4j/Element;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v2}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V

    .line 154
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .restart local v2       #object:Ljava/lang/Object;
    :cond_2
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 160
    check-cast v2, Ljava/lang/String;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v2}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    .restart local v2       #object:Ljava/lang/Object;
    :cond_3
    instance-of v5, v2, Lorg/dom4j/Text;

    if-eqz v5, :cond_4

    .line 162
    move-object v0, v2

    check-cast v0, Lorg/dom4j/Text;

    move-object v4, v0

    .line 163
    .local v4, text:Lorg/dom4j/Text;
    invoke-interface {v4}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    .end local v4           #text:Lorg/dom4j/Text;
    :cond_4
    instance-of v5, v2, Lorg/dom4j/CDATA;

    if-eqz v5, :cond_5

    .line 165
    check-cast v2, Lorg/dom4j/CDATA;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v2}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V

    goto :goto_1

    .line 166
    .restart local v2       #object:Ljava/lang/Object;
    :cond_5
    instance-of v5, v2, Lorg/dom4j/Comment;

    if-eqz v5, :cond_6

    .line 167
    check-cast v2, Lorg/dom4j/Comment;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v2}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V

    goto :goto_1

    .line 168
    .restart local v2       #object:Ljava/lang/Object;
    :cond_6
    instance-of v5, v2, Lorg/dom4j/Entity;

    if-eqz v5, :cond_7

    .line 169
    check-cast v2, Lorg/dom4j/Entity;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v2}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V

    goto :goto_1

    .line 170
    .restart local v2       #object:Ljava/lang/Object;
    :cond_7
    instance-of v5, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_1

    .line 172
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    .line 171
    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v2}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_1
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V
    .locals 2
    .parameter "domDocument"
    .parameter "domCurrent"
    .parameter "cdata"

    .prologue
    .line 227
    .line 228
    invoke-interface {p3}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 229
    .local v0, domCDATA:Lorg/w3c/dom/CDATASection;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 230
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V
    .locals 2
    .parameter "domDocument"
    .parameter "domCurrent"
    .parameter "comment"

    .prologue
    .line 234
    .line 235
    invoke-interface {p3}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    .line 236
    .local v0, domComment:Lorg/w3c/dom/Comment;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 237
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V
    .locals 18
    .parameter "domDocument"
    .parameter "domCurrent"
    .parameter "element"

    .prologue
    .line 179
    invoke-interface/range {p3 .. p3}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, elUri:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, elName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 184
    .local v8, domElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v15

    .line 187
    .local v15, stackSize:I
    invoke-interface/range {p3 .. p3}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v11

    .line 189
    .local v11, elementNamespace:Lorg/dom4j/Namespace;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 191
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    .line 195
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v7

    .line 197
    .local v7, declaredNamespaces:Ljava/util/List;
    const/4 v12, 0x0

    .local v12, i:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    .local v14, size:I
    :goto_0
    if-lt v12, v14, :cond_1

    .line 207
    const/4 v12, 0x0

    invoke-interface/range {p3 .. p3}, Lorg/dom4j/Element;->attributeCount()I

    move-result v14

    :goto_1
    if-lt v12, v14, :cond_3

    .line 216
    invoke-interface/range {p3 .. p3}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 218
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 220
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v15

    if-gt v0, v1, :cond_4

    .line 223
    return-void

    .line 198
    :cond_1
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/dom4j/Namespace;

    .line 200
    .local v13, namespace:Lorg/dom4j/Namespace;
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 202
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    .line 197
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 208
    .end local v13           #namespace:Lorg/dom4j/Namespace;
    :cond_3
    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v6

    .line 209
    .local v6, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v6}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, attUri:Ljava/lang/String;
    invoke-interface {v6}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, attName:Ljava/lang/String;
    invoke-interface {v6}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 212
    .local v16, value:Ljava/lang/String;
    move-object v0, v8

    move-object v1, v5

    move-object v2, v4

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 221
    .end local v4           #attName:Ljava/lang/String;
    .end local v5           #attUri:Ljava/lang/String;
    .end local v6           #attribute:Lorg/dom4j/Attribute;
    .end local v16           #value:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_2
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V
    .locals 2
    .parameter "domDocument"
    .parameter "domCurrent"
    .parameter "entity"

    .prologue
    .line 247
    .line 248
    invoke-interface {p3}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    .line 249
    .local v0, domEntity:Lorg/w3c/dom/EntityReference;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 250
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V
    .locals 3
    .parameter "domDoc"
    .parameter "domCurrent"
    .parameter "pi"

    .prologue
    .line 254
    .line 255
    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    .line 256
    .local v0, domPI:Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 257
    return-void
.end method

.method protected attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;
    .locals 4
    .parameter "namespace"

    .prologue
    .line 268
    const-string v1, "xmlns"

    .line 269
    .local v1, xmlns:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, prefix:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 272
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method protected createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 6
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 283
    .local v1, result:Lorg/w3c/dom/Document;
    iget-object v3, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 285
    :try_start_0
    iget-object v3, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lorg/w3c/dom/Document;
    check-cast v1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .restart local v1       #result:Lorg/w3c/dom/Document;
    :cond_0
    :goto_0
    return-object v1

    .line 286
    .end local v1           #result:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 287
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lorg/dom4j/DocumentException;

    .line 288
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Could not instantiate an instance of DOM Document with class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-direct {v3, v4, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:Lorg/w3c/dom/Document;
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->createDomDocumentViaJAXP()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 296
    if-nez v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->getDomDocumentClass()Ljava/lang/Class;

    move-result-object v2

    .line 300
    .local v2, theClass:Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lorg/w3c/dom/Document;
    check-cast v1, Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1       #result:Lorg/w3c/dom/Document;
    goto :goto_0

    .line 301
    .end local v1           #result:Lorg/w3c/dom/Document;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 302
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v3, Lorg/dom4j/DocumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Could not instantiate an instance of DOM Document with class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-direct {v3, v4, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .locals 4
    .parameter "document"
    .parameter "domImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, namespaceURI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 341
    .local v2, qualifiedName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 343
    .local v0, docType:Lorg/w3c/dom/DocumentType;
    invoke-interface {p2, v1, v2, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v3

    return-object v3
.end method

.method protected createDomDocumentViaJAXP()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 315
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Lorg/dom4j/io/JAXPHelper;->createDocument(ZZ)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 334
    :goto_0
    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/Throwable;
    sget-boolean v1, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    if-nez v1, :cond_0

    .line 318
    sput-boolean v3, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    .line 320
    invoke-static {}, Lorg/dom4j/io/SAXHelper;->isVerboseErrorReporting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Caught exception attempting to use JAXP to create a W3C DOM document"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Warning: Exception was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 328
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Error occurred using JAXP to create a DOM document."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDomDocumentClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v2, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 64
    .local v2, result:Ljava/lang/Class;
    if-nez v2, :cond_0

    .line 66
    sget-object v4, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    array-length v3, v4

    .line 68
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 84
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_0
    return-object v2

    .line 70
    .restart local v0       #i:I
    .restart local v3       #size:I
    :cond_1
    :try_start_0
    sget-object v4, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    aget-object v1, v4, v0

    .line 71
    .local v1, name:Ljava/lang/String;
    const/4 v4, 0x1

    .line 72
    sget-object v5, Lorg/dom4j/io/DOMWriter;->class$0:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_2

    :try_start_1
    const-string v5, "org.dom4j.io.DOMWriter"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :try_start_2
    sput-object v5, Lorg/dom4j/io/DOMWriter;->class$0:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 71
    invoke-static {v1, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 74
    if-nez v2, :cond_0

    .line 68
    .end local v1           #name:Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .restart local v1       #name:Ljava/lang/String;
    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    .end local v1           #name:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .locals 2
    .parameter "ns"

    .prologue
    .line 347
    if-eqz p1, :cond_0

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v1, :cond_0

    .line 348
    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v1, :cond_0

    .line 349
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 352
    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 358
    .end local v0           #uri:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resetNamespaceStack()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 363
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 364
    return-void
.end method

.method public setDomDocumentClass(Ljava/lang/Class;)V
    .locals 0
    .parameter "domDocumentClass"

    .prologue
    .line 96
    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 97
    return-void
.end method

.method public setDomDocumentClassName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v1, 0x1

    .line 113
    :try_start_0
    sget-object v2, Lorg/dom4j/io/DOMWriter;->class$0:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "org.dom4j.io.DOMWriter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    sput-object v2, Lorg/dom4j/io/DOMWriter;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 112
    iput-object v1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Could not load the DOM Document class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 2
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 122
    instance-of v1, p1, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    .line 123
    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1
    move-object v1, p1

    .line 132
    :goto_0
    return-object v1

    .line 126
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    .line 128
    invoke-virtual {p0, p1}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 129
    .local v0, domDocument:Lorg/w3c/dom/Document;
    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 130
    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    move-object v1, v0

    .line 132
    goto :goto_0
.end method

.method public write(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .locals 2
    .parameter "document"
    .parameter "domImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 137
    instance-of v1, p1, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    .line 138
    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1
    move-object v1, p1

    .line 147
    :goto_0
    return-object v1

    .line 141
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    .line 143
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 144
    .local v0, domDocument:Lorg/w3c/dom/Document;
    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 145
    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    move-object v1, v0

    .line 147
    goto :goto_0
.end method

.method protected writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V
    .locals 2
    .parameter "domElement"
    .parameter "namespace"

    .prologue
    .line 261
    invoke-virtual {p0, p2}, Lorg/dom4j/io/DOMWriter;->attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, attributeName:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method
