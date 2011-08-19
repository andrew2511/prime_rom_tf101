.class Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
.super Ljava/lang/Object;
.source "SuggestSourceSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionRequest"
.end annotation


# instance fields
.field private mConsumedResult:Z

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

.field private final mQuery:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
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
    .line 193
    .local p3, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->mQuery:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->mConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    .line 196
    return-void
.end method

.method private maybeQuery(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->access$000(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1, p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->getSuggestions(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized gotSuggestions(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 2
    .parameter "from"
    .parameter "suggestions"

    .prologue
    .line 217
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 218
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getLatency()I

    move-result v0

    .line 219
    .local v0, latency:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->access$300(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;->handleSuggestLatency(Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->mConsumedResult:Z

    if-nez v1, :cond_1

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->mConsumedResult:Z

    .line 224
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-static {v1, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->access$400(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    .line 225
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->mConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-interface {v1, p2}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 228
    .end local v0           #latency:I
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->access$100(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->maybeQuery(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->access$200(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->maybeQuery(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)V

    .line 212
    return-void
.end method
