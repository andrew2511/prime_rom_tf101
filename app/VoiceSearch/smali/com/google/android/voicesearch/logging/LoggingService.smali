.class public Lcom/google/android/voicesearch/logging/LoggingService;
.super Landroid/app/Service;
.source "LoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;
    }
.end annotation


# static fields
.field private static final AUTO_FLUSH_TIMEOUT_MILLIS:J = 0x2710L

.field private static final DBG:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field private static final EXTRA_AFTER_N_BEST_CHOOSE:Ljava/lang/String; = "after"

.field private static final EXTRA_BEFORE_N_BEST_CHOOSE:Ljava/lang/String; = "before"

.field private static final EXTRA_TEXT_REPLACED_LENGTH:Ljava/lang/String; = "rlength"

.field public static final FLUSH_EVENTS:I = -0x1

.field private static final MSG_AUTO_FLUSH_VOICE_SEARCH:I = 0x1

.field private static final SERVICE_URL_LOG_EVENT:Ljava/lang/String; = "g:log:ev"

.field private static final TAG:Ljava/lang/String; = "LoggingService"


# instance fields
.field private final mAutoFlushHandler:Landroid/os/Handler;

.field private mLastVoiceInputTimestamp:J

.field private mVoiceImeClientString:Ljava/lang/String;

.field private mVoiceImeRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceSearchClientString:Ljava/lang/String;

.field private mVoiceSearchQueryModified:Z

.field private mVoiceSearchRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeClientString:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    .line 79
    new-instance v0, Lcom/google/android/voicesearch/logging/LoggingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/logging/LoggingService$1;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    .line 548
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/logging/LoggingService;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->stopServiceIfNeeded()V

    return-void
.end method

.method private static createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter

    .prologue
    .line 539
    const-string v0, "g:log:ev"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    return-object v0
.end method

.method private static createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter

    .prologue
    .line 544
    const-string v0, "g:log:ev"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    return-object v0
.end method

.method private flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 518
    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;

    move-result-object v0

    .line 519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 520
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 521
    new-instance v2, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;

    invoke-direct {v2, p2, v0, p3}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;-><init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/CookieStore;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V

    .line 523
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/voicesearch/masf/LiteRequest;

    .line 524
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 525
    return-void
.end method

.method private flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 507
    const-string v0, "flush"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const-string v0, "LoggingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received logging broadcast with no event specified for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V

    goto :goto_0
.end method

.method private handleLocalVoiceSearchEvent(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 131
    const-string v0, "extra_event"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    packed-switch v0, :pswitch_data_0

    .line 146
    const-string v1, "LoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event received:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    new-instance v2, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;

    iget-object v3, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "extra_protobuf_bytes"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    const-string v1, "g:log:ev"

    invoke-static {v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleVoiceImeEvent(Landroid/content/Intent;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, -0x1

    .line 241
    const-string v0, "extra_event"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 245
    packed-switch v0, :pswitch_data_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeClientString:Ljava/lang/String;

    new-instance v2, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;

    iget-object v3, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogShown()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogDismissed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogOk()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogCancel()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogShown()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogDismissed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogOk()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogCancel()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->swipeHintDisplayed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 337
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->punctuationHintDisplayed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 346
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->cancelDuringListening()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 355
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->cancelDuringWorking()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 364
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->cancelDuringError()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 369
    :pswitch_e
    const-string v0, "code"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 370
    if-ne v0, v4, :cond_1

    .line 371
    const-string v0, "LoggingService"

    const-string v1, "requested to log ERROR event with no error code"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->error(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 383
    :pswitch_f
    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    const-string v1, "method"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 386
    if-ne v1, v4, :cond_2

    .line 388
    const-string v1, "swipe"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    const/4 v1, 0x2

    .line 394
    :cond_2
    :goto_1
    const-string v2, "timestamp"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 398
    iput-wide v2, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    .line 399
    iget-object v2, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->start(Ljava/lang/String;I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 391
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 405
    :pswitch_10
    const-string v0, "length"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 407
    if-ne v0, v4, :cond_4

    .line 408
    const-string v0, "LoggingService"

    const-string v1, "requested to log VOICE_INPUT_DELIVERED event with no length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->voiceInputDelivered(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 421
    :pswitch_11
    const-string v0, "index"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 423
    if-ne v0, v4, :cond_5

    .line 424
    const-string v0, "LoggingService"

    const-string v1, "requested to log n-best choose with no error code"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 431
    :cond_5
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->nBestChoose(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 437
    :pswitch_12
    const-string v0, "length"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 438
    const-string v1, "type"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 439
    if-ne v1, v4, :cond_6

    .line 440
    const-string v0, "LoggingService"

    const-string v1, "requested to log TEXT_MODIFIED event with no modification type"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 445
    :cond_6
    const-string v2, "rlength"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 446
    const-string v3, "index"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 448
    const-string v4, "before"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    const-string v5, "after"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 456
    iget-object v6, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->textModified(IIIILjava/lang/String;Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 467
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->inputEnded()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 475
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->voiceInputSettingEnabled()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 484
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->voiceInputSettingDisabled()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 490
    :pswitch_16
    const-string v0, "timestamp"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 491
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    iget-wide v3, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->imeTextAccepted(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iput-wide v5, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private handleVoiceSearchEvent(Landroid/content/Intent;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 151
    const-string v0, "extra_event"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    if-eq v0, v4, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 236
    const-string v1, "LoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown event received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 166
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    .line 169
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    new-instance v2, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;

    iget-object v3, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    const-string v1, "g:log:ev"

    invoke-static {v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getRetry()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getNBestReveal()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :pswitch_3
    const-string v0, "index"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 193
    if-ne v0, v4, :cond_2

    .line 194
    const-string v0, "LoggingService"

    const-string v1, "requested to log N_BEST_CHOOSE event with no index"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getNBestChoose(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :pswitch_4
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const/4 v1, 0x0

    .line 215
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 216
    :cond_3
    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getQueryCleared()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    .line 221
    :goto_1
    if-eqz v0, :cond_1

    .line 222
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    if-nez v0, :cond_5

    .line 218
    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getQueryCorrection()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    .line 219
    iput-boolean v5, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    goto :goto_1

    .line 231
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getResultClicked()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private stopServiceIfNeeded()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 534
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->stopSelf()V

    .line 536
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "voiceime"

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/logging/Utils;->getMasfClientString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeClientString:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "googlemobile"

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/logging/Utils;->getMasfClientString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    const-string v0, "googlemobile"

    .line 114
    :cond_0
    const-string v1, "voiceime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-direct {p0, p1, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->handleVoiceImeEvent(Landroid/content/Intent;I)V

    .line 127
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 117
    :cond_1
    const-string v1, "googlemobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-direct {p0, p1, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->handleVoiceSearchEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 120
    :cond_2
    const-string v1, "voice_search_native_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-direct {p0, p1, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->handleLocalVoiceSearchEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 124
    :cond_3
    const-string v0, "LoggingService"

    const-string v1, "unknown app name provided for logging event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
