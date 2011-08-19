.class public Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;
.super Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
.source "SuggestionListNoDuplicates.java"


# instance fields
.field private final mSuggestionKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceName"
    .parameter "userQuery"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 2
    .parameter "suggestion"

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v1

    .line 45
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/lang/Iterable;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, suggestions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    const/4 v0, 0x0

    .line 52
    .local v0, count:I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 53
    .local v2, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    return v0
.end method
