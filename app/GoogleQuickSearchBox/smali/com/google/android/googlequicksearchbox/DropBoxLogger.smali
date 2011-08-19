.class public Lcom/google/android/googlequicksearchbox/DropBoxLogger;
.super Ljava/lang/Object;
.source "DropBoxLogger.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/Logger;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mDropboxManager:Landroid/os/DropBoxManager;

.field private mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

.field private final mRandom:Ljava/util/Random;

.field private final mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mRandom:Ljava/util/Random;

    .line 64
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mVersionCode:I

    .line 66
    const-string v0, "dropbox"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mDropboxManager:Landroid/os/DropBoxManager;

    .line 67
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createEntrySet()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/DropBoxLogger;)Landroid/os/DropBoxManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mDropboxManager:Landroid/os/DropBoxManager;

    return-object v0
.end method

.method private addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->maybeFlushLogs(Z)V

    .line 298
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->addLogItem(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 299
    return-void
.end method

.method private static addSuggestions(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 6
    .parameter "entry"
    .parameter "list"

    .prologue
    .line 204
    if-eqz p1, :cond_2

    .line 205
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 206
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    new-instance v3, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    invoke-direct {v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;-><init>()V

    .line 208
    .local v3, suggestion:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v2

    .line 209
    .local v2, src:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v2, :cond_0

    .line 210
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->setSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 214
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 216
    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->setLogType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 220
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->setIsShortcut(Z)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 222
    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->addSuggestion(Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    goto :goto_0

    .line 225
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v2           #src:Lcom/google/android/googlequicksearchbox/Source;
    .end local v3           #suggestion:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    .end local v4           #type:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private createEntrySet()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;-><init>()V

    .line 264
    .local v0, entries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    iget v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mVersionCode:I

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->setVersion(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 266
    return-object v0
.end method

.method private createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 2
    .parameter "type"
    .parameter "latency"

    .prologue
    .line 191
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;-><init>()V

    .line 192
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setType(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setLatency(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 194
    return-object v0
.end method

.method private logLatency(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "query"
    .parameter "latency"
    .parameter "sourceName"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->shouldLogLatency()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 173
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v1

    .line 175
    .local v1, latencyEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 177
    if-eqz p3, :cond_2

    .line 178
    invoke-virtual {v1, p3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 181
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 182
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method private maybeFlushLogs(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 232
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 234
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 238
    .local v0, entries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getLogItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getLogItemCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    if-eqz p1, :cond_0

    .line 245
    :cond_2
    new-instance v1, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;-><init>(Lcom/google/android/googlequicksearchbox/DropBoxLogger;Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 258
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createEntrySet()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    goto :goto_0
.end method

.method private newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 7

    .prologue
    .line 274
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;-><init>()V

    .line 276
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setRelativeTimestampMs(J)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 278
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Config;->getExperimentIds()Ljava/util/Set;

    move-result-object v3

    .line 279
    .local v3, experimentIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;-><init>()V

    .line 281
    .local v1, experimentEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 282
    .local v2, experimentId:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;->addExperimentId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    goto :goto_0

    .line 284
    .end local v2           #experimentId:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setExperiment(Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 287
    .end local v1           #experimentEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method private shouldLogLatency()Z
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getLatencyLogFrequency()I

    move-result v0

    .line 199
    .local v0, freq:I
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mRandom:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public flushLogs()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->maybeFlushLogs(Z)V

    .line 188
    return-void
.end method

.method public logLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 164
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getLatency()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->logLatency(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    return-void
.end method

.method public logSearch(II)V
    .locals 3
    .parameter "startMethod"
    .parameter "numChars"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 141
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;-><init>()V

    .line 142
    .local v1, searchEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;
    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->setMethod(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 143
    invoke-virtual {v1, p2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 146
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method public logStart(IILjava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V
    .locals 5
    .parameter "onCreateLatency"
    .parameter "latency"
    .parameter "intentSource"
    .parameter
    .parameter "webSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p4, orderedSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 80
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v3, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    invoke-direct {v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;-><init>()V

    .line 81
    .local v3, startEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;
    if-eqz p5, :cond_1

    .line 82
    invoke-interface {p5}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->addEnabledSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    .line 84
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 85
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v2, :cond_2

    .line 86
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->addEnabledSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    goto :goto_1

    .line 89
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setStart(Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 90
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    .line 93
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 94
    const/4 v4, 0x0

    invoke-direct {p0, v4, p2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 95
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    .line 98
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 99
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 100
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method public logSuggestionClick(JLcom/google/android/googlequicksearchbox/SuggestionList;Ljava/util/Set;Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V
    .locals 5
    .parameter "id"
    .parameter "suggestionList"
    .parameter
    .parameter "queriedWebSource"
    .parameter "clickType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p4, queriedSources:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v1

    .line 112
    .local v1, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;-><init>()V

    .line 113
    .local v0, clickEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->setId(J)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 114
    invoke-virtual {v0, p6}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->setClickType(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 117
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 119
    invoke-static {v0, p3}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addSuggestions(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 121
    if-eqz p5, :cond_1

    .line 122
    invoke-interface {p5}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->addResultSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 124
    :cond_1
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, sourceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0, v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->addResultSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    goto :goto_1

    .line 129
    .end local v3           #sourceName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setSuggestion(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 130
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method public logVoiceSearch(Z)V
    .locals 3
    .parameter "voiceSearchInstalled"

    .prologue
    .line 151
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 156
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;-><init>()V

    .line 157
    .local v1, voiceSearchEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;
    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->setVoiceSearchInstalled(Z)Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setVoiceSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 159
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method
