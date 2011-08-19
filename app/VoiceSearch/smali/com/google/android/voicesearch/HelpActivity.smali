.class public Lcom/google/android/voicesearch/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# static fields
.field private static final HELP_DIALOG:I = 0x1

.field public static final SHOW_HINTS_CHECKBOX_KEY:Ljava/lang/String; = "show_hints_checkbox_key"


# instance fields
.field private mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

.field private mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mSoundManager:Lcom/google/android/voicesearch/SoundManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/HelpActivity;)Lcom/google/android/voicesearch/SoundManager;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->updateLayout()V

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    .line 48
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 49
    new-instance v0, Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/HelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setShouldShowFirstRunMessage(Landroid/content/Context;Z)V

    .line 54
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    new-instance v1, Lcom/google/android/voicesearch/HelpActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpActivity$1;-><init>(Lcom/google/android/voicesearch/HelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/HelpDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    new-instance v1, Lcom/google/android/voicesearch/HelpActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpActivity$2;-><init>(Lcom/google/android/voicesearch/HelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/HelpDialog;->setHelpDialogListener(Lcom/google/android/voicesearch/HelpDialog$Listener;)V

    .line 75
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "show_hints_checkbox_key"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/HelpDialog;->setShowCheckBox(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/HelpActivity;->showDialog(I)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->flush()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->stopAutoScroll()V

    .line 104
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpDialog:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->dismiss()V

    .line 105
    return-void
.end method
