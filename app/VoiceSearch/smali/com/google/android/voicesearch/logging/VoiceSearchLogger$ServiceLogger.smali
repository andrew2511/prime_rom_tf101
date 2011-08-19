.class Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;
.super Ljava/lang/Object;
.source "VoiceSearchLogger.java"

# interfaces
.implements Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceLogger"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    .line 370
    return-void
.end method

.method private logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V
    .locals 1
    .parameter

    .prologue
    .line 373
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 374
    return-void
.end method

.method private logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V
    .locals 3
    .parameter

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "app_name"

    const-string v2, "voice_search_native_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_protobuf_bytes"

    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 382
    return-void
.end method


# virtual methods
.method public actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter

    .prologue
    .line 443
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ACTION_ACCEPTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 446
    return-void
.end method

.method public actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter

    .prologue
    .line 431
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ACTION_PRESENTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 434
    return-void
.end method

.method public actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ACTION_REJECTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 440
    return-void
.end method

.method public contactMissingAddress(I)V
    .locals 2
    .parameter

    .prologue
    .line 474
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CONTACT_MISSING_ADDRESS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 476
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 477
    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 481
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 482
    return-void

    .line 478
    :cond_1
    if-nez p1, :cond_0

    .line 479
    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    goto :goto_0
.end method

.method public disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter

    .prologue
    .line 468
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_RECOGNITION_DISAMBIG_ACCEPTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 471
    return-void
.end method

.method public disambigPresented()V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_RECOGNITION_DISAMBIG_PRESENTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 465
    return-void
.end method

.method public errorCancel()V
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ERROR_CANCEL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 408
    return-void
.end method

.method public errorRetry()V
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ERROR_RETRY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 404
    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "app_name"

    const-string v2, "voice_search_native_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_event"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 390
    return-void
.end method

.method public helpButtonUsed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 423
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_HELP_BUTTON:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 425
    if-eqz p1, :cond_0

    .line 426
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_HELP_BUBBLE_VISIBLE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 428
    :cond_0
    return-void
.end method

.method public listeningCancel()V
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CANCEL_DURING_LISTENING:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 412
    return-void
.end method

.method public personalizationAuthTokenFailure()V
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_AUTH_ISSUE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 487
    return-void
.end method

.method public personalizationDashboardLink()V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_DASHBOARD:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 492
    return-void
.end method

.method public personalizationMoreLink()V
    .locals 2

    .prologue
    .line 495
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_MORE_INFO_LINK:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 497
    return-void
.end method

.method public personalizationPopup(Z)V
    .locals 2
    .parameter

    .prologue
    .line 500
    if-eqz p1, :cond_0

    .line 501
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_POP_UP_ACCEPTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_POP_UP_REJECTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    goto :goto_0
.end method

.method public personalizationSetting(Z)V
    .locals 2
    .parameter

    .prologue
    .line 510
    if-eqz p1, :cond_0

    .line 511
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_SETTING_ENABLED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_SETTING_DISABLED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    goto :goto_0
.end method

.method public retry()V
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getRetry()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 400
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 393
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_START_BUTTON:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setText(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 396
    return-void
.end method

.method public textModified(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;Lcom/google/protos/MobileappsExtensions$TextModification;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_TEXT_MODIFIED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchActionSlot(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setTextModification(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    .line 456
    if-eqz p3, :cond_0

    .line 457
    invoke-virtual {v0, p3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setText(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 459
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 460
    return-void
.end method

.method public videoLaunched()V
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->LAUNCH_VIDEO:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 420
    return-void
.end method

.method public workingCancel()V
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CANCEL_DURING_WORKING:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 416
    return-void
.end method
