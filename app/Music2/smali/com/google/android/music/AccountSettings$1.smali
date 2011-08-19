.class Lcom/google/android/music/AccountSettings$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "pref"

    .prologue
    .line 103
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/AccountPreference;

    move-object v1, v0

    .line 104
    .local v1, accountPref:Lcom/google/android/music/AccountPreference;
    invoke-virtual {v1}, Lcom/google/android/music/AccountPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()Lcom/google/android/music/AccountPreference;

    move-result-object v4

    if-eq v1, v4, :cond_0

    .line 108
    new-instance v2, Lcom/google/android/music/sync/google/MusicAuthInfo;

    iget-object v4, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {v2, v4}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-virtual {v1}, Lcom/google/android/music/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    new-instance v6, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;

    iget-object v7, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {v6, v7, v1}, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;-><init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthTokenForeground(Landroid/app/Activity;Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2           #authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 114
    .restart local v2       #authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 115
    .local v3, e:Landroid/accounts/AuthenticatorException;
    iget-object v4, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    const v5, 0x7f0c0003

    const v6, 0x7f0c0004

    invoke-static {v4, v5, v6}, Lcom/google/android/music/AccountSettings;->access$100(Lcom/google/android/music/AccountSettings;II)V

    goto :goto_0
.end method
