.class public Lorg/dom4j/rule/RuleSet;
.super Ljava/lang/Object;
.source "RuleSet.java"


# instance fields
.field private ruleArray:[Lorg/dom4j/rule/Rule;

.field private rules:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public addAll(Lorg/dom4j/rule/RuleSet;)V
    .locals 2
    .parameter "that"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/rule/RuleSet;->ruleArray:[Lorg/dom4j/rule/Rule;

    .line 82
    return-void
.end method

.method public addRule(Lorg/dom4j/rule/Rule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/rule/RuleSet;->ruleArray:[Lorg/dom4j/rule/Rule;

    .line 66
    return-void
.end method

.method public getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;
    .locals 5
    .parameter "node"

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/dom4j/rule/RuleSet;->getRuleArray()[Lorg/dom4j/rule/Rule;

    move-result-object v1

    .line 52
    .local v1, matches:[Lorg/dom4j/rule/Rule;
    array-length v3, v1

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 60
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 53
    :cond_0
    aget-object v2, v1, v0

    .line 55
    .local v2, rule:Lorg/dom4j/rule/Rule;
    invoke-virtual {v2, p1}, Lorg/dom4j/rule/Rule;->matches(Lorg/dom4j/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 56
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected getRuleArray()[Lorg/dom4j/rule/Rule;
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lorg/dom4j/rule/RuleSet;->ruleArray:[Lorg/dom4j/rule/Rule;

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    iget-object v1, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 95
    .local v0, size:I
    new-array v1, v0, [Lorg/dom4j/rule/Rule;

    iput-object v1, p0, Lorg/dom4j/rule/RuleSet;->ruleArray:[Lorg/dom4j/rule/Rule;

    .line 96
    iget-object v1, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/rule/RuleSet;->ruleArray:[Lorg/dom4j/rule/Rule;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .end local v0           #size:I
    :cond_0
    iget-object v1, p0, Lorg/dom4j/rule/RuleSet;->ruleArray:[Lorg/dom4j/rule/Rule;

    return-object v1
.end method

.method public removeRule(Lorg/dom4j/rule/Rule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/rule/RuleSet;->ruleArray:[Lorg/dom4j/rule/Rule;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " [RuleSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/rule/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
