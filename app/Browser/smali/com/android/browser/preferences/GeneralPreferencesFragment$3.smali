.class Lcom/android/browser/preferences/GeneralPreferencesFragment$3;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/GeneralPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 148
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    iget-object v3, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v3}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v3, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-static {v3}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->access$000(Lcom/android/browser/preferences/GeneralPreferencesFragment;)Landroid/accounts/AccountManagerCallback;

    move-result-object v6

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 150
    const/4 v1, 0x1

    return v1
.end method
