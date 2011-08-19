.class public Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestSource;
.super Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;
.source "PsychicSuggestSource.java"


# instance fields
.field private final mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "adapter"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 41
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestSource;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    .line 42
    return-void
.end method


# virtual methods
.method public canQueryNow()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public doQueryInternal(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestSource;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setQuery(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestSource;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->addListenerFor(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 66
    :cond_0
    return-void
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "psychic"

    return-object v0
.end method

.method public isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isPsychicSource()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "extraData"
    .parameter "query"

    .prologue
    .line 77
    return-void
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
