.class public Lcom/google/android/voicesearch/TestPlatformLog;
.super Ljava/lang/Object;
.source "TestPlatformLog.java"


# static fields
.field private static final EVENT_ERROR_PREFIX:Ljava/lang/String; = "ERROR: "

.field private static final EVENT_LOGGING_AUDIO_PREFIX:Ljava/lang/String; = "LOGGING_AUDIO: "

.field private static final EVENT_PREFIX:Ljava/lang/String; = "TEST_PLATFORM: "

.field private static final EVENT_RESULTS_PREFIX:Ljava/lang/String; = "RESULTS: "

.field public static final EVENT_SPEAK_NOW:Ljava/lang/String; = "SPEAK_NOW"

.field public static final EVENT_VOICE_SEARCH_COMPLETE:Ljava/lang/String; = "VOICE_SEARCH_COMPLETE"

.field public static final EVENT_WORKING:Ljava/lang/String; = "WORKING"

.field private static final NON_WEB_SEARCH_RESULT:Ljava/lang/String; = "result:NON_WEB_SEARCH_RESULT,"

.field private static final RESULT_ITEM_FORMAT:Ljava/lang/String; = "result:\"%s\","

.field private static final TAG:Ljava/lang/String; = "TestPlatformLog"

.field private static sEnableTestPlatformLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    sget-boolean v0, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "TestPlatformLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEST_PLATFORM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static logAudioPath(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGGING_AUDIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static logResults(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    sget-boolean v0, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RESULTS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 115
    const-string v2, "result:\"%s\","

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_0
    const-string v2, "result:NON_WEB_SEARCH_RESULT,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 122
    :cond_2
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 69
    sput-boolean p0, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    .line 70
    return-void
.end method
