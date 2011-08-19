.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionListReceiver"
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
.field private mCountAtWhichToExecuteNextBatch:I

.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

.field private final mPendingResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private final mResultPublishDelayMillis:J

.field private final mResultPublishTask:Ljava/lang/Runnable;

.field private final mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Suggestions;IJ)V
    .locals 1
    .parameter
    .parameter "executor"
    .parameter "suggestions"
    .parameter "initialBatchSize"
    .parameter "publishResultDelayMillis"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$1;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    .line 259
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    .line 260
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 261
    iput p4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCountAtWhichToExecuteNextBatch:I

    .line 262
    iput-wide p5, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mResultPublishDelayMillis:J

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishPendingResults()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->handleNewResultAdded()V

    return-void
.end method

.method private executeNextBatchIfNeeded()V
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getResultCount()I

    move-result v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCountAtWhichToExecuteNextBatch:I

    if-ne v1, v2, :cond_0

    .line 345
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$600(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getNumPromotedSources()I

    move-result v0

    .line 346
    .local v0, nextBatchSize:I
    iget v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCountAtWhichToExecuteNextBatch:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCountAtWhichToExecuteNextBatch:I

    .line 347
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->executeNextBatch(I)V

    .line 349
    .end local v0           #nextBatchSize:I
    :cond_0
    return-void
.end method

.method private handleNewResultAdded()V
    .locals 4

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mResultPublishDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getResultCount()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->pendingResultCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCountAtWhichToExecuteNextBatch:I

    if-ge v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mResultPublishDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->executeNextBatchIfNeeded()V

    .line 317
    :cond_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishPendingResults()V

    goto :goto_0
.end method

.method private pendingResultCount()I
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private publishPendingResults()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->addSourceResults(Ljava/util/List;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 340
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 2
    .parameter "list"

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string v0, "QSB.SuggestionsProviderImpl"

    const-string v1, "Source returned a null list."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$200(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$300(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$300(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/Logger;->logLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->handleNewResultAdded()V

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    check-cast p1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method

.method public getWebResultConsumer()Lcom/google/android/googlequicksearchbox/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$2;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    return-object v0
.end method

.method public publishWebResults(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "results"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 273
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishPendingResults()V

    .line 274
    return-void
.end method
