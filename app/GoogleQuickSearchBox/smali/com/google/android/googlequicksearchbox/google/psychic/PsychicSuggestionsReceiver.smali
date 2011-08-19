.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;
.super Ljava/lang/Object;
.source "PsychicSuggestionsReceiver.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;


# instance fields
.field private final mConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field

.field private final mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter "adapter"
    .parameter "googleSource"
    .parameter "userQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    .line 48
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    .line 49
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mQuery:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public onSuggestError()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    new-instance v1, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mQuery:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public declared-synchronized setSuggestions(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "originalQuery"
    .parameter "suggestions"

    .prologue
    .line 55
    monitor-enter p0

    const/4 v4, 0x0

    .line 56
    .local v4, suggestionsDisplayed:Z
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v5, webSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    .line 59
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 60
    .local v3, suggestion:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/googlequicksearchbox/WebSuggestions;->createWebSuggestion(Ljava/lang/CharSequence;Z)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v3           #suggestion:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    .line 68
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    new-instance v7, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;->mGoogleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    invoke-interface {v8}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v5}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v7}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return v4

    .line 55
    .end local v5           #webSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
