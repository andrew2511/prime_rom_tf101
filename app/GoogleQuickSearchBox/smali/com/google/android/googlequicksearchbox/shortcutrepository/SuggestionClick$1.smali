.class final Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick$1;
.super Ljava/lang/Object;
.source "SuggestionClick.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;)I
    .locals 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 74
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 75
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    if-nez p2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getClickTime()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getClickTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(JJ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getSuggestionIntent()Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getSuggestionIntent()Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p1, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;

    .end local p1
    check-cast p2, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick$1;->compare(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;)I

    move-result v0

    return v0
.end method
