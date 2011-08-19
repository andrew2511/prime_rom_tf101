.class abstract Lcom/amazon/topaz/styles/AbstractStyleSheet;
.super Ljava/lang/Object;
.source "AbstractStyleSheet.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private addChildRuleKeys(Ljava/util/Set;Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/topaz/styles/AbstractStyleSheet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p2}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getChildren()Ljava/util/Map;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 135
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/styles/AddSpec;

    .line 138
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/styles/AbstractStyleSheet;

    .line 140
    invoke-virtual {v0}, Lcom/amazon/topaz/styles/AddSpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0, p1, v1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->addChildRuleKeys(Ljava/util/Set;Lcom/amazon/topaz/styles/AbstractStyleSheet;)V

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method protected findChild(Lcom/amazon/topaz/styles/AddSpec;)Lcom/amazon/topaz/styles/AbstractStyleSheet;
    .locals 1
    .parameter "spec"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getChildren()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/styles/AbstractStyleSheet;

    return-object p0
.end method

.method protected findInternal(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/AbstractStyleSheet;
    .locals 5
    .parameter "test"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 77
    :goto_0
    return-object v4

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getKey(Lcom/amazon/topaz/styles/AbstractMatchRule;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, value:Ljava/lang/String;
    new-instance v2, Lcom/amazon/topaz/styles/AddSpec;

    invoke-direct {v2, v1, v3}, Lcom/amazon/topaz/styles/AddSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v2, spec:Lcom/amazon/topaz/styles/AddSpec;
    invoke-virtual {p0, v2}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->findChild(Lcom/amazon/topaz/styles/AddSpec;)Lcom/amazon/topaz/styles/AbstractStyleSheet;

    move-result-object v0

    .line 71
    .local v0, child:Lcom/amazon/topaz/styles/AbstractStyleSheet;
    if-nez v0, :cond_1

    .line 73
    const/4 v4, 0x0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->findInternal(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/AbstractStyleSheet;

    move-result-object v4

    goto :goto_0
.end method

.method protected abstract getChildren()Ljava/util/Map;
.end method

.method protected abstract getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;
.end method

.method public getRuleKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-direct {p0, v0, p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->addChildRuleKeys(Ljava/util/Set;Lcom/amazon/topaz/styles/AbstractStyleSheet;)V

    .line 121
    return-object v0
.end method

.method protected abstract getStyle()Lcom/amazon/topaz/styles/AbstractStyle;
.end method

.method public getStyle(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/Style;
    .locals 4
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/amazon/topaz/styles/Style$Builder;

    invoke-direct {v0}, Lcom/amazon/topaz/styles/Style$Builder;-><init>()V

    .line 91
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 92
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/styles/AbstractStyleSheet;

    .line 95
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getStyle()Lcom/amazon/topaz/styles/AbstractStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/styles/Style$Builder;->apply(Lcom/amazon/topaz/styles/AbstractStyle;)V

    .line 96
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getChildren()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/styles/AbstractStyleSheet;

    .line 99
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->match(Lcom/amazon/topaz/styles/AbstractMatchRule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/topaz/styles/Style$Builder;->build()Lcom/amazon/topaz/styles/Style;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getStyle()Lcom/amazon/topaz/styles/AbstractStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/styles/AbstractStyle;->getAttribs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    const-string v1, "\t<style "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getStyle()Lcom/amazon/topaz/styles/AbstractStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/styles/AbstractStyle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v1, "\t</style>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getChildren()Ljava/util/Map;

    move-result-object v1

    .line 163
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/styles/AddSpec;

    .line 167
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/styles/AbstractStyleSheet;

    .line 168
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
