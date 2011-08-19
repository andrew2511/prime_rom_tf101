.class public Lcom/google/android/gm/GmailApplication;
.super Landroid/app/Application;
.source "GmailApplication.java"


# instance fields
.field private mConfigurationVersion:J

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gm/GmailApplication;->mConfigurationVersion:J

    .line 29
    return-void
.end method


# virtual methods
.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gm/GmailApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/gm/GmailApplication;->mConfigurationVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gm/GmailApplication;->mConfigurationVersion:J

    .line 56
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v0, "Gmail"

    const v1, 0x7f070001

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 40
    const-string v0, "Gmail"

    const v1, 0x7f070002

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 42
    const-string v0, "Gmail"

    const/high16 v1, 0x7f07

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 45
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.google.android.gmail.SuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gm/GmailApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 47
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
