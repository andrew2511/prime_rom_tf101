.class public Lcom/google/android/voicesearch/speechservice/ClientReportSender;
.super Ljava/lang/Object;
.source "ClientReportSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;,
        Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final MAX_PERSISTED_REPORTS:I = 0xa

.field public static final MAX_REPORTS_COUNT:I = 0xa

.field public static final PERSISTENT_PREF_NAME:Ljava/lang/String; = "persisted_client_reports"

.field public static final PREF_KEY_PERSISTED_REPORTS:Ljava/lang/String; = "key_persisted_client_reports_market_one"

.field private static final TAG:Ljava/lang/String; = "ClientReportSender"


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private final mContext:Landroid/content/Context;

.field private mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private mPendingReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

.field private final mTaskExecutor:Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/voicesearch/speechservice/ClientReportSender$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender$1;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 74
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    .line 75
    iput-object p4, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mTaskExecutor:Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;

    .line 76
    const-string v0, "persisted_client_reports"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    .line 77
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 78
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/speechservice/ClientReportSender;)Lcom/google/android/voicesearch/util/AccountHelper;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/speechservice/ClientReportSender;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->addFailedReports(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addFailedReports(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->persistReports(Ljava/util/List;)V

    goto :goto_0
.end method

.method private clearPersistedReports()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_persisted_client_reports_market_one"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 153
    return-void
.end method

.method private getPersistedReports()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_persisted_client_reports_market_one"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_0

    .line 137
    :try_start_0
    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->opaqueStringToReportBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    const-string v3, "ClientReportSender"

    const-string v4, "Failed to read persisted report"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 144
    :cond_1
    return-object v0
.end method

.method public static opaqueStringToReportBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 246
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private persistReports(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_persisted_client_reports_market_one"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_persisted_client_reports_market_one"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->reportBytesToOpaqueString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_2
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static reportBytesToOpaqueString([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 235
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addReport(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public sendReports(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 3
    .parameter

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->getPersistedReports()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 170
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->clearPersistedReports()V

    .line 171
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->mTaskExecutor:Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;

    new-instance v2, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;-><init>(Lcom/google/android/voicesearch/speechservice/ClientReportSender;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportSender$TaskExecutor;->execute(Lcom/google/android/voicesearch/speechservice/ClientReportSender$SendReportTask;)V

    .line 172
    return-void
.end method
