.class abstract Lcom/amazon/topaz/styles/AbstractStyle;
.super Ljava/lang/Object;
.source "AbstractStyle.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 80
    instance-of v2, p1, Lcom/amazon/topaz/styles/AbstractStyle;

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 87
    :goto_0
    return v2

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/styles/AbstractStyle;

    move-object v1, v0

    .line 87
    .local v1, otherStyle:Lcom/amazon/topaz/styles/AbstractStyle;
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 39
    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    .line 41
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected abstract getAttribs()Ljava/util/Map;
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 3
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v0, v2

    .line 71
    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "attr"
    .parameter "value"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 107
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 110
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    const-string v4, "\t\t<rule attr=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v4, "\" value=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v0, "\"/>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
