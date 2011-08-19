.class Lcom/google/android/music/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AccountSettings;->authenticationSuccess(Lcom/google/android/music/AccountPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;

.field final synthetic val$accountPref:Lcom/google/android/music/AccountPreference;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    iput-object p2, p0, Lcom/google/android/music/AccountSettings$2;->val$accountPref:Lcom/google/android/music/AccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/music/AccountSettings$2;->val$accountPref:Lcom/google/android/music/AccountPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/AccountPreference;->setChecked(Z)V

    .line 163
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()Lcom/google/android/music/AccountPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()Lcom/google/android/music/AccountPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/AccountPreference;->setChecked(Z)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 168
    .local v0, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    iget-object v1, p0, Lcom/google/android/music/AccountSettings$2;->val$accountPref:Lcom/google/android/music/AccountPreference;

    invoke-virtual {v1}, Lcom/google/android/music/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/music/AccountSettings$2;->val$accountPref:Lcom/google/android/music/AccountPreference;

    invoke-static {v1}, Lcom/google/android/music/AccountSettings;->access$002(Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;

    .line 171
    iget-object v1, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-virtual {v1}, Lcom/google/android/music/AccountSettings;->finish()V

    .line 172
    return-void
.end method
