.class Lcom/android/browser/preferences/GeneralPreferencesFragment$1;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    .line 111
    iput-object p1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 115
    const-string v0, "acct_name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "acct_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->refreshUi()V

    .line 118
    iget-object v0, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;Z)V

    .line 120
    :cond_1
    return-void
.end method
