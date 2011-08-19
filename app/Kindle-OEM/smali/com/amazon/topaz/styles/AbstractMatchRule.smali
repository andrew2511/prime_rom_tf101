.class abstract Lcom/amazon/topaz/styles/AbstractMatchRule;
.super Ljava/lang/Object;
.source "AbstractMatchRule.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 142
    instance-of v2, p1, Lcom/amazon/topaz/styles/AbstractMatchRule;

    if-nez v2, :cond_0

    .line 144
    const/4 v2, 0x0

    .line 149
    :goto_0
    return v2

    .line 147
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/styles/AbstractMatchRule;

    move-object v1, v0

    .line 149
    .local v1, other:Lcom/amazon/topaz/styles/AbstractMatchRule;
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getEntries()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getKey(Lcom/amazon/topaz/styles/AbstractMatchRule;)Ljava/lang/String;
    .locals 4
    .parameter "rule"

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    .local v2, keySetIt:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, found:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v3, v1

    .line 133
    .end local v0           #found:Ljava/lang/String;
    .end local v1           #key:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    sget-object v3, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
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
    .line 51
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public match(Lcom/amazon/topaz/styles/AbstractMatchRule;)Z
    .locals 7
    .parameter "rule"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 84
    .local v0, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v4

    .line 85
    .local v4, otherEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    .local v3, keySetIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 89
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, found:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    :cond_1
    const/4 v6, 0x0

    .line 96
    .end local v1           #found:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v2

    .line 169
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 170
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 173
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v4, "=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
