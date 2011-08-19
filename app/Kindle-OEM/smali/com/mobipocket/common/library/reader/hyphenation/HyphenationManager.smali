.class public Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;
.super Ljava/lang/Object;
.source "HyphenationManager.java"


# instance fields
.field defaultEngine:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

.field table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->table:Ljava/util/Hashtable;

    .line 17
    new-instance v0, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->defaultEngine:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    .line 21
    return-void
.end method


# virtual methods
.method public getHyphenationEngine(I)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for an hyphenationEngine for the following language ID :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->table:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    .line 120
    const/4 v1, 0x0

    .line 121
    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->table:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    .line 124
    if-nez v0, :cond_5

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No User Hyphenation engine found for language ID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v2, v1

    move v1, v4

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->defaultEngine:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;->getSupportedLanguageIds()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 132
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->defaultEngine:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;->getSupportedLanguageIds()[I

    move-result-object v3

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->defaultEngine:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK core default hyphenation engine found for language ID :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v1, v0

    move-object v0, v2

    .line 147
    :goto_1
    if-nez v1, :cond_3

    .line 163
    :goto_2
    return-object v0

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->defaultEngine:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;->getSupportedLanguageIds()[I

    move-result-object v3

    aget v3, v3, v1

    if-nez v3, :cond_1

    .line 141
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->defaultEngine:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    .line 127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Hyphenation engine found for language ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 104
    return-void
.end method

.method public removeHyphenationEngine(I)V
    .locals 2
    .parameter

    .prologue
    .line 87
    if-ltz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->table:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    return-void
.end method

.method public setHyphenationEngine(ILcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 51
    invoke-interface {p2}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;->getSupportedLanguageIds()[I

    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    move v2, v1

    .line 54
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 56
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding user defined engine for the following language "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->table:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    aget v4, v0, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v2, 0x1

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 66
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
