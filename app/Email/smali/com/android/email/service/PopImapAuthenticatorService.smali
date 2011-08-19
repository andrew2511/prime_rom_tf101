.class public Lcom/android/email/service/PopImapAuthenticatorService;
.super Landroid/app/Service;
.source "PopImapAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 136
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;

    invoke-direct {v0, p0, p0}, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;-><init>(Lcom/android/email/service/PopImapAuthenticatorService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
