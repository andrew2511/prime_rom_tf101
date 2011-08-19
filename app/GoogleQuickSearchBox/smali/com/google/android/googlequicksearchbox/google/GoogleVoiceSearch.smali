.class public Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;
.super Lcom/google/android/googlequicksearchbox/VoiceSearch;
.source "GoogleVoiceSearch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/VoiceSearch;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 36
    return-void
.end method

.method private createInstallVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter "appData"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getVoiceSearchInstallUri()Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, voiceSearchInstallUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private getVoiceSearchInstallUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchInstallUri()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, uri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 45
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private getVoiceSearchPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setVoiceSearchPackage(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getVoiceSearchPackageName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method protected createVoiceSearchIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->setVoiceSearchPackage(Landroid/content/Intent;)V

    .line 52
    return-object v0
.end method

.method public createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "appData"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->isVoiceSearchAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->createInstallVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
