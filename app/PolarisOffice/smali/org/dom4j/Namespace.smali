.class public Lorg/dom4j/Namespace;
.super Lorg/dom4j/tree/AbstractNode;
.source "Namespace.java"


# static fields
.field protected static final CACHE:Lorg/dom4j/tree/NamespaceCache;

.field public static final NO_NAMESPACE:Lorg/dom4j/Namespace;

.field public static final XML_NAMESPACE:Lorg/dom4j/Namespace;


# instance fields
.field private hashCode:I

.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lorg/dom4j/tree/NamespaceCache;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceCache;-><init>()V

    sput-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    .line 28
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    const-string v1, "xml"

    .line 29
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    .line 32
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    .line 53
    if-eqz p2, :cond_1

    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static get(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "uri"

    .prologue
    .line 81
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 68
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 229
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Namespace;)V

    .line 230
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 212
    .local v0, asxml:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, pref:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 215
    const-string v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :goto_0
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 219
    :cond_0
    const-string v2, "xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected createHashCode()I
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int v0, v1, v2

    .line 111
    .local v0, result:I
    if-nez v0, :cond_0

    .line 112
    const v0, 0xbabe

    .line 115
    :cond_0
    return v0
.end method

.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 3
    .parameter "parent"

    .prologue
    .line 233
    new-instance v0, Lorg/dom4j/tree/DefaultNamespace;

    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/dom4j/tree/DefaultNamespace;-><init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 140
    :goto_0
    return v2

    .line 130
    :cond_0
    instance-of v2, p1, Lorg/dom4j/Namespace;

    if-eqz v2, :cond_2

    .line 131
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    .line 134
    .local v1, that:Lorg/dom4j/Namespace;
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->hashCode()I

    move-result v2

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 135
    iget-object v2, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 135
    goto :goto_0

    .end local v1           #that:Lorg/dom4j/Namespace;
    :cond_2
    move v2, v4

    .line 140
    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xd

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 179
    .local v1, path:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 181
    .local v0, parent:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getXPathNameStep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 193
    .local v1, path:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 195
    .local v0, parent:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 196
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getXPathNameStep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getXPathNameStep()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "namespace::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "namespace::*[name()=\'\']"

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/dom4j/Namespace;->hashCode:I

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->createHashCode()I

    move-result v0

    iput v0, p0, Lorg/dom4j/Namespace;->hashCode:I

    .line 99
    :cond_0
    iget v0, p0, Lorg/dom4j/Namespace;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " [Namespace: prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 207
    const-string v1, " mapped to URI \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
