.class public Lcom/google/android/voicesearch/GservicesBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GservicesBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    .line 45
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v2

    .line 46
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 51
    const-string v4, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {v1, p1}, Lcom/google/android/voicesearch/GservicesHelper;->handleGservicesChange(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v2, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->handleGservicesChange(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->handleGservicesChange(Landroid/content/Context;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->handleDeviceLanguageChange()V

    goto :goto_0
.end method
