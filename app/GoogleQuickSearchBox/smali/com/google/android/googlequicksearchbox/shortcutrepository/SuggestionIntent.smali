.class Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;
.super Ljava/lang/Object;
.source "SuggestionIntent.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final STRING_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHashcode:I

.field private final mSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 3
    .parameter "suggestion"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    .line 21
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mHashcode:I

    .line 27
    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;)I
    .locals 6
    .parameter "another"

    .prologue
    .line 35
    if-ne p1, p0, :cond_0

    const/4 v2, 0x0

    .line 40
    :goto_0
    return v2

    .line 36
    :cond_0
    if-nez p1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 39
    .local v1, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    .line 40
    .local v0, other:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->compareTo(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 63
    .end local p1
    :goto_0
    return v0

    .line 59
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    if-nez v0, :cond_1

    move v0, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    iget v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mHashcode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 63
    :cond_2
    check-cast p1, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->compareTo(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;->mHashcode:I

    return v0
.end method
