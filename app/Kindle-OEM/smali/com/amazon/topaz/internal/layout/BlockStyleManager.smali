.class final Lcom/amazon/topaz/internal/layout/BlockStyleManager;
.super Ljava/lang/Object;
.source "BlockStyleManager.java"


# static fields
.field private static _AFTER_:Ljava/lang/String;

.field private static _AFTER_SAME_:Ljava/lang/String;

.field private static _PARENT_:Ljava/lang/String;

.field private static _PARENT_SAME_:Ljava/lang/String;


# instance fields
.field private final afterMap_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/topaz/styles/MatchRule;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleKeysUsed_:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "_after_"

    sput-object v0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_:Ljava/lang/String;

    .line 190
    const-string v0, "_after_same_"

    sput-object v0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_SAME_:Ljava/lang/String;

    .line 192
    const-string v0, "_parent_"

    sput-object v0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_:Ljava/lang/String;

    .line 194
    const-string v0, "_parent_same_"

    sput-object v0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_SAME_:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/styles/StyleSheet;)V
    .locals 1
    .parameter "ss"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->afterMap_:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

    .line 35
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->buildUsedKeys(Lcom/amazon/topaz/styles/StyleSheet;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->ruleKeysUsed_:Ljava/util/Set;

    .line 36
    return-void
.end method

.method private buildUsedKeys(Lcom/amazon/topaz/styles/StyleSheet;)Ljava/util/Set;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/topaz/styles/StyleSheet;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/amazon/topaz/styles/StyleSheet;->getRuleKeys()Ljava/util/Set;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    .line 56
    :cond_1
    :goto_0
    sget-object v3, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    .line 61
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_SAME_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_SAME_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    :goto_1
    sget-object v3, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 84
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_2
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 69
    :cond_3
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_SAME_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_SAME_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 73
    :cond_4
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    sget-object v3, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 79
    :cond_5
    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildMatchRule(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/styles/MatchRule;
    .locals 14
    .parameter "what"
    .parameter "parentStyleRule"

    .prologue
    .line 101
    new-instance v10, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->getStyleRule()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V

    .line 104
    .local v10, ruleBuilder:Lcom/amazon/topaz/styles/MatchRule$Builder;
    iget-object v12, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->afterMap_:Ljava/util/Map;

    sget-object v13, Lcom/amazon/topaz/internal/TopazStrings;->MATCHRULEKEY_TAG:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/amazon/topaz/styles/MatchRule$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/topaz/styles/MatchRule;

    .line 105
    .local v3, afterMapRule:Lcom/amazon/topaz/styles/MatchRule;
    if-eqz v3, :cond_2

    move-object v0, v3

    .line 110
    .local v0, after:Lcom/amazon/topaz/styles/MatchRule;
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/topaz/styles/MatchRule;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 111
    .local v2, afterKeySetIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/amazon/topaz/styles/MatchRule;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, value:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5f

    if-eq v12, v13, :cond_0

    .line 117
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, afterKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->ruleKeysUsed_:Ljava/util/Set;

    invoke-interface {v12, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 120
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_AFTER_SAME_:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, afterSameKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->ruleKeysUsed_:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 126
    invoke-virtual {v10, v5}, Lcom/amazon/topaz/styles/MatchRule$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 127
    sget-object v12, Lcom/amazon/topaz/internal/TopazStrings;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v4, v12}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    .end local v0           #after:Lcom/amazon/topaz/styles/MatchRule;
    .end local v1           #afterKey:Ljava/lang/String;
    .end local v2           #afterKeySetIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #afterSameKey:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/amazon/topaz/styles/MatchRule;->EMPTY:Lcom/amazon/topaz/styles/MatchRule;

    move-object v0, v12

    goto :goto_0

    .line 129
    .restart local v0       #after:Lcom/amazon/topaz/styles/MatchRule;
    .restart local v1       #afterKey:Ljava/lang/String;
    .restart local v2       #afterKeySetIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v4       #afterSameKey:Ljava/lang/String;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v11       #value:Ljava/lang/String;
    :cond_3
    sget-object v12, Lcom/amazon/topaz/internal/TopazStrings;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v4, v12}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .end local v1           #afterKey:Ljava/lang/String;
    .end local v4           #afterSameKey:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_4
    move-object/from16 v8, p2

    .line 138
    .local v8, prule:Lcom/amazon/topaz/styles/MatchRule;
    invoke-virtual {v8}, Lcom/amazon/topaz/styles/MatchRule;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 139
    .local v9, pruleKeySetIt:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 141
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 142
    .restart local v5       #key:Ljava/lang/String;
    invoke-virtual {v8, v5}, Lcom/amazon/topaz/styles/MatchRule;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 144
    .restart local v11       #value:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, parentKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->ruleKeysUsed_:Ljava/util/Set;

    invoke-interface {v12, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 147
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->_PARENT_SAME_:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, parentSameKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->ruleKeysUsed_:Ljava/util/Set;

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 153
    invoke-virtual {v10, v5}, Lcom/amazon/topaz/styles/MatchRule$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 154
    sget-object v12, Lcom/amazon/topaz/internal/TopazStrings;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v7, v12}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    :cond_7
    sget-object v12, Lcom/amazon/topaz/internal/TopazStrings;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v7, v12}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #parentKey:Ljava/lang/String;
    .end local v7           #parentSameKey:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_8
    invoke-virtual {v10}, Lcom/amazon/topaz/styles/MatchRule$Builder;->build()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v12

    return-object v12
.end method

.method public getBaseStyle(Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/styles/Style;
    .locals 1
    .parameter "styleRule"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/styles/StyleSheet;->getStyle(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/Style;

    move-result-object v0

    return-object v0
.end method

.method public recordMatchRule(Lcom/amazon/topaz/styles/MatchRule;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->MATCHRULEKEY_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/styles/MatchRule;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->afterMap_:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    return-void
.end method
