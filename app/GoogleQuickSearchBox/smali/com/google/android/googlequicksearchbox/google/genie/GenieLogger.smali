.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
.super Ljava/lang/Object;
.source "GenieLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

.field private final mSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

.field private final mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 3
    .parameter "context"
    .parameter "suggestionFactory"
    .parameter "source"
    .parameter "httpHelper"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    .line 57
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GenieLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p4, v2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;-><init>(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mHandler:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;)Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    return-object v0
.end method


# virtual methods
.method public log(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V
    .locals 1
    .parameter "logData"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mHandler:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger$LoggingHandler;->sendLogMessage(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V

    goto :goto_0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "extraData"
    .parameter "query"

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->fromExtraData(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    move-result-object v0

    .line 86
    .local v0, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->log(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V

    goto :goto_0
.end method
