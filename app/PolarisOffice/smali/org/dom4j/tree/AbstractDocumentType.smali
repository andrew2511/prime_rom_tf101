.class public abstract Lorg/dom4j/tree/AbstractDocumentType;
.super Lorg/dom4j/tree/AbstractNode;
.source "AbstractDocumentType.java"

# interfaces
.implements Lorg/dom4j/DocumentType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 164
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/DocumentType;)V

    .line 165
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "<!DOCTYPE "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, hasPublicID:Z
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, publicID:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 97
    const-string v4, " PUBLIC \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const/4 v1, 0x1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, systemID:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 106
    if-nez v1, :cond_1

    .line 107
    const-string v4, " SYSTEM"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_1
    const-string v4, " \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_2
    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xa

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, list:Ljava/util/List;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    .local v2, iter:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, decl:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 79
    .end local v1           #decl:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #iter:Ljava/util/Iterator;
    :goto_1
    return-object v4

    .line 73
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #decl:Ljava/lang/Object;
    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 82
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #decl:Ljava/lang/Object;
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const-string v0, ""

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocumentType;->setElementName(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " [DocumentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->asXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 7
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v6, "<!DOCTYPE "

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, hasPublicID:Z
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, publicID:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 128
    const-string v6, " PUBLIC \""

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, systemID:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 137
    if-nez v1, :cond_1

    .line 138
    const-string v6, " SYSTEM"

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    :cond_1
    const-string v6, " \""

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v3

    .line 148
    .local v3, list:Ljava/util/List;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 149
    const-string v6, " ["

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 157
    const-string v6, "\n]"

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 160
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_3
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 161
    return-void

    .line 152
    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, decl:Ljava/lang/Object;
    const-string v6, "\n  "

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
