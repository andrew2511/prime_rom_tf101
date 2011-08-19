.class final Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;
.super Ljava/lang/Object;
.source "WebSuggestSourceWithLocalHistory.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombinedConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Lcom/google/android/googlequicksearchbox/SuggestionList;",
        ">;"
    }
.end annotation


# instance fields
.field mHistorySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private mRemainingLists:I

.field private final mWebSourceName:Ljava/lang/String;

.field mWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "sourceName"

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mRemainingLists:I

    .line 221
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mHistorySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 222
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 226
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mWebSourceName:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public declared-synchronized await()Z
    .locals 2

    .prologue
    .line 254
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mRemainingLists:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 256
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .line 261
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 231
    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, "local_history_source"

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mHistorySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received history suggestions twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mHistorySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 245
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mRemainingLists:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mRemainingLists:I

    .line 246
    iget v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mRemainingLists:I

    if-nez v0, :cond_2

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_2
    monitor-exit p0

    return v2

    .line 237
    :cond_3
    if-eqz p1, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mWebSourceName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_4

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received web suggestions twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_4
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    check-cast p1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method
