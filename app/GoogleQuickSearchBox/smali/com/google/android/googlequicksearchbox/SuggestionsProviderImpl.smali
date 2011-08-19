.class public Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    }
.end annotation


# static fields
.field private static final NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mLogger:Lcom/google/android/googlequicksearchbox/Logger;

.field private final mPublishThread:Landroid/os/Handler;

.field private final mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Logger;)V
    .locals 1
    .parameter "sources"
    .parameter "config"
    .parameter "queryExecutor"
    .parameter "publishThread"
    .parameter "logger"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 68
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 69
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    .line 70
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    .line 71
    new-instance v0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;-><init>(Lcom/google/android/googlequicksearchbox/Sources;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->updateShouldQueryStrategy(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method private countDefaultSources(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, sources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    const/4 v0, 0x0

    .line 222
    .local v0, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 223
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    return v0
.end method

.method private createGoogleSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
    .locals 1
    .parameter "query"
    .parameter "googleSource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)",
            "Lcom/google/android/googlequicksearchbox/util/NamedTask;"
        }
    .end annotation

    .prologue
    .line 209
    .local p3, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    return-object v0
.end method

.method private createSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;ILcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
    .locals 6
    .parameter "query"
    .parameter "source"
    .parameter "queryLimit"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            "I",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)",
            "Lcom/google/android/googlequicksearchbox/util/NamedTask;"
        }
    .end annotation

    .prologue
    .line 194
    .local p4, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V

    return-object v0
.end method

.method private fetchWebResults(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 4
    .parameter "query"
    .parameter "webSource"
    .parameter "listReceiver"

    .prologue
    .line 172
    invoke-interface {p2, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    .line 173
    .local v0, cachedResults:Lcom/google/android/googlequicksearchbox/SuggestionList;
    sget-object v1, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;

    .line 174
    .local v1, webReceiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    if-eqz v0, :cond_1

    .line 178
    if-eqz p3, :cond_0

    .line 179
    invoke-virtual {p3, v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishWebResults(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 189
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createGoogleSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 190
    return-void

    .line 184
    :cond_1
    if-eqz p3, :cond_0

    .line 185
    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->getWebResultConsumer()Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v1

    goto :goto_0
.end method

.method private filterSource(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, sources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    move-object v3, p2

    .line 105
    :goto_0
    return-object v3

    .line 95
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v2, sourcesToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Source;

    .line 97
    .local v1, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-virtual {p0, v1, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_2
    move-object v3, v2

    .line 105
    goto :goto_0
.end method

.method private shouldDisplayResults(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->showSuggestionsForZeroQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateShouldQueryStrategy(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 3
    .parameter "list"

    .prologue
    .line 113
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->onZeroResults(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelOngoingQuery()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->cancelPendingTasks()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->cancelPendingTasks()V

    .line 87
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->cancelOngoingQuery()V

    .line 76
    return-void
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 11
    .parameter "query"
    .parameter
    .parameter "webSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            ")",
            "Lcom/google/android/googlequicksearchbox/Suggestions;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, sourcesToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->filterSource(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 124
    new-instance v3, Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-direct {v3, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/Suggestions;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    .line 129
    .local v3, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 130
    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Suggestions;->done()V

    .line 167
    :goto_0
    return-object v3

    .line 134
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->countDefaultSources(Ljava/util/List;)I

    move-result v4

    .line 135
    .local v4, initialBatchSize:I
    if-nez v4, :cond_1

    .line 136
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getNumPromotedSources()I

    move-result v4

    .line 139
    :cond_1
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;-><init>(Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    .line 141
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getPublishResultDelayMillis()J

    move-result-wide v5

    .line 144
    .local v5, publishResultDelayMillis:J
    const/4 v0, 0x0

    .line 145
    .local v0, listReceiver:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->shouldDisplayResults(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    .end local v0           #listReceiver:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Suggestions;IJ)V

    .line 149
    .restart local v0       #listReceiver:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    move-object v9, v0

    .line 156
    .local v9, receiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    :goto_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v8

    .line 158
    .local v8, maxResultsPerSource:I
    if-eqz p3, :cond_2

    .line 159
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->fetchWebResults(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    .line 161
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/googlequicksearchbox/Source;

    .line 162
    .local v10, source:Lcom/google/android/googlequicksearchbox/Source;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-direct {p0, p1, v10, v8, v9}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;ILcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    goto :goto_2

    .line 152
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #maxResultsPerSource:I
    .end local v9           #receiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    .end local v10           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_3
    sget-object v9, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;

    .line 153
    .restart local v9       #receiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Suggestions;->done()V

    goto :goto_1

    .line 165
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #maxResultsPerSource:I
    :cond_4
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v1, v4}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->executeNextBatch(I)V

    goto :goto_0
.end method

.method protected shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
    .locals 1
    .parameter "source"
    .parameter "query"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
