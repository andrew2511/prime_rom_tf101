.class public Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
.super Ljava/lang/Object;
.source "PKIXPolicyNode.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected children:Ljava/util/List;

.field protected critical:Z

.field protected depth:I

.field protected expectedPolicies:Ljava/util/Set;

.field protected parent:Ljava/security/cert/PolicyNode;

.field protected policyQualifiers:Ljava/util/Set;

.field protected validPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .registers 8
    .parameter "_children"
    .parameter "_depth"
    .parameter "_expectedPolicies"
    .parameter "_parent"
    .parameter "_policyQualifiers"
    .parameter "_validPolicy"
    .parameter "_critical"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    .line 37
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    .line 38
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 39
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 40
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    .line 41
    iput-object p6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    .line 42
    iput-boolean p7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    .line 43
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 3
    .parameter "_child"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 50
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 11

    .prologue
    .line 136
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v3, _expectedPolicies:Ljava/util/Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 138
    .local v9, _iter:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 140
    new-instance v2, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 143
    :cond_20
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v5, _policyQualifiers:Ljava/util/Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 145
    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 147
    new-instance v2, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 150
    :cond_40
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 158
    .local v0, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 159
    .end local p0
    :goto_5c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 161
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v8

    .line 162
    .local v8, _child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 163
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_5c

    .line 166
    .end local v8           #_child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_73
    return-object v0
.end method

.method public getChildren()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isCritical()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    return v0
.end method

.method public removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 3
    .parameter "_child"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setCritical(Z)V
    .registers 2
    .parameter "_critical"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    .line 100
    return-void
.end method

.method public setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 2
    .parameter "_parent"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "_indent"

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, _buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v2, " {\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 121
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 124
    :cond_40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
