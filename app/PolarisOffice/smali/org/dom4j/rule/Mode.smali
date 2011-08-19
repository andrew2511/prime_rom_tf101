.class public Lorg/dom4j/rule/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# instance fields
.field private attributeNameRuleSets:Ljava/util/Map;

.field private elementNameRuleSets:Ljava/util/Map;

.field private ruleSets:[Lorg/dom4j/rule/RuleSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0xe

    new-array v0, v0, [Lorg/dom4j/rule/RuleSet;

    iput-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    .line 39
    return-void
.end method


# virtual methods
.method public addRule(Lorg/dom4j/rule/Rule;)V
    .locals 6
    .parameter "rule"

    .prologue
    .line 84
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchType()S

    move-result v1

    .line 85
    .local v1, matchType:I
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 88
    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 89
    iget-object v5, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    .line 90
    invoke-virtual {p0, v5, v2, p1}, Lorg/dom4j/rule/Mode;->addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;

    move-result-object v5

    .line 89
    iput-object v5, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    .line 97
    :cond_0
    :goto_0
    const/16 v5, 0xe

    if-lt v1, v5, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 101
    :cond_1
    if-nez v1, :cond_2

    .line 103
    const/4 v0, 0x1

    .local v0, i:I
    iget-object v5, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    array-length v4, v5

    .local v4, size:I
    :goto_1
    if-lt v0, v4, :cond_4

    .line 112
    .end local v0           #i:I
    .end local v4           #size:I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/dom4j/rule/Mode;->getRuleSet(I)Lorg/dom4j/rule/RuleSet;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 113
    return-void

    .line 91
    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 92
    iget-object v5, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    .line 93
    invoke-virtual {p0, v5, v2, p1}, Lorg/dom4j/rule/Mode;->addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;

    move-result-object v5

    .line 92
    iput-object v5, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    goto :goto_0

    .line 104
    .restart local v0       #i:I
    .restart local v4       #size:I
    :cond_4
    iget-object v5, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aget-object v3, v5, v0

    .line 106
    .local v3, ruleSet:Lorg/dom4j/rule/RuleSet;
    if-eqz v3, :cond_5

    .line 107
    invoke-virtual {v3, p1}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 103
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "name"
    .parameter "rule"

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance p1, Ljava/util/HashMap;

    .end local p1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 248
    .restart local p1
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 250
    .local v0, ruleSet:Lorg/dom4j/rule/RuleSet;
    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lorg/dom4j/rule/RuleSet;

    .end local v0           #ruleSet:Lorg/dom4j/rule/RuleSet;
    invoke-direct {v0}, Lorg/dom4j/rule/RuleSet;-><init>()V

    .line 252
    .restart local v0       #ruleSet:Lorg/dom4j/rule/RuleSet;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 257
    return-object p1
.end method

.method public applyTemplates(Lorg/dom4j/Document;)V
    .locals 3
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 81
    return-void

    .line 78
    :cond_0
    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 79
    .local v1, node:Lorg/dom4j/Node;
    invoke-virtual {p0, v1}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public applyTemplates(Lorg/dom4j/Element;)V
    .locals 4
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v3

    .local v3, size:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v3

    :goto_1
    if-lt v1, v3, :cond_1

    .line 74
    return-void

    .line 66
    :cond_0
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 67
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-virtual {p0, v0}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0           #attribute:Lorg/dom4j/Attribute;
    :cond_1
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 72
    .local v2, node:Lorg/dom4j/Node;
    invoke-virtual {p0, v2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public fireRule(Lorg/dom4j/Node;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Mode;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v1

    .line 54
    .local v1, rule:Lorg/dom4j/rule/Rule;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lorg/dom4j/rule/Rule;->getAction()Lorg/dom4j/rule/Action;

    move-result-object v0

    .line 57
    .local v0, action:Lorg/dom4j/rule/Action;
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p1}, Lorg/dom4j/rule/Action;->run(Lorg/dom4j/Node;)V

    .line 62
    .end local v0           #action:Lorg/dom4j/rule/Action;
    .end local v1           #rule:Lorg/dom4j/rule/Rule;
    :cond_0
    return-void
.end method

.method public getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;
    .locals 6
    .parameter "node"

    .prologue
    .line 148
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    .line 150
    .local v1, matchType:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 151
    iget-object v4, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 152
    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/rule/RuleSet;

    .line 155
    .local v3, ruleSet:Lorg/dom4j/rule/RuleSet;
    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v3, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    .line 158
    .local v0, answer:Lorg/dom4j/rule/Rule;
    if-eqz v0, :cond_2

    .line 199
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 163
    .end local v0           #answer:Lorg/dom4j/rule/Rule;
    .end local v3           #ruleSet:Lorg/dom4j/rule/RuleSet;
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 164
    iget-object v4, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 165
    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .restart local v2       #name:Ljava/lang/String;
    iget-object v4, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/rule/RuleSet;

    .line 168
    .restart local v3       #ruleSet:Lorg/dom4j/rule/RuleSet;
    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v3, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    .line 171
    .restart local v0       #answer:Lorg/dom4j/rule/Rule;
    if-nez v0, :cond_0

    .line 178
    .end local v0           #answer:Lorg/dom4j/rule/Rule;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #ruleSet:Lorg/dom4j/rule/RuleSet;
    :cond_2
    if-ltz v1, :cond_3

    iget-object v4, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    array-length v4, v4

    if-lt v1, v4, :cond_4

    .line 179
    :cond_3
    const/4 v1, 0x0

    .line 182
    :cond_4
    const/4 v0, 0x0

    .line 183
    .restart local v0       #answer:Lorg/dom4j/rule/Rule;
    iget-object v4, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aget-object v3, v4, v1

    .line 185
    .restart local v3       #ruleSet:Lorg/dom4j/rule/RuleSet;
    if-eqz v3, :cond_5

    .line 187
    invoke-virtual {v3, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    .line 190
    :cond_5
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 192
    iget-object v4, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 194
    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v3, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRuleSet(I)Lorg/dom4j/rule/RuleSet;
    .locals 4
    .parameter "matchType"

    .prologue
    .line 212
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aget-object v1, v2, p1

    .line 214
    .local v1, ruleSet:Lorg/dom4j/rule/RuleSet;
    if-nez v1, :cond_0

    .line 215
    new-instance v1, Lorg/dom4j/rule/RuleSet;

    .end local v1           #ruleSet:Lorg/dom4j/rule/RuleSet;
    invoke-direct {v1}, Lorg/dom4j/rule/RuleSet;-><init>()V

    .line 216
    .restart local v1       #ruleSet:Lorg/dom4j/rule/RuleSet;
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aput-object v1, v2, p1

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 222
    .local v0, allRules:Lorg/dom4j/rule/RuleSet;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v1, v0}, Lorg/dom4j/rule/RuleSet;->addAll(Lorg/dom4j/rule/RuleSet;)V

    .line 228
    .end local v0           #allRules:Lorg/dom4j/rule/RuleSet;
    :cond_0
    return-object v1
.end method

.method protected removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V
    .locals 1
    .parameter "map"
    .parameter "name"
    .parameter "rule"

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 264
    .local v0, ruleSet:Lorg/dom4j/rule/RuleSet;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 268
    .end local v0           #ruleSet:Lorg/dom4j/rule/RuleSet;
    :cond_0
    return-void
.end method

.method public removeRule(Lorg/dom4j/rule/Rule;)V
    .locals 3
    .parameter "rule"

    .prologue
    .line 116
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchType()S

    move-result v0

    .line 117
    .local v0, matchType:I
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 120
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 121
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v2, v1, p1}, Lorg/dom4j/rule/Mode;->removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V

    .line 127
    :cond_0
    :goto_0
    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 131
    :cond_1
    invoke-virtual {p0, v0}, Lorg/dom4j/rule/Mode;->getRuleSet(I)Lorg/dom4j/rule/RuleSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 133
    if-eqz v0, :cond_2

    .line 134
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/Mode;->getRuleSet(I)Lorg/dom4j/rule/RuleSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 136
    :cond_2
    return-void

    .line 122
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v2, v1, p1}, Lorg/dom4j/rule/Mode;->removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V

    goto :goto_0
.end method
