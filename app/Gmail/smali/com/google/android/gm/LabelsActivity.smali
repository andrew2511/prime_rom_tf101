.class public Lcom/google/android/gm/LabelsActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "LabelsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mListFragment:Lcom/google/android/gm/LabelListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    return-void
.end method

.method private accountName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account-shortcut"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, shortcutAccount:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    .line 49
    .local v0, account:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 42
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    move-object v0, v1

    .line 44
    .restart local v0       #account:Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/LabelsActivity;->mCreateShortcut:Z

    goto :goto_0

    .line 46
    .end local v0           #account:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/google/android/gm/WaitActivity;->waitIfNeededAndGetAccount(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_0
.end method

.method private startShortcutNameActivity(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/google/android/gm/Utils;->createViewLabelIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 130
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f030001

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/google/android/gm/provider/LabelManager;->getFreshLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gm/ShortcutNameActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const/high16 v3, 0x4200

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    const-string v3, "extra_label_click_intent"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const-string v0, "extra_shortcut_name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v2}, Lcom/google/android/gm/LabelsActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsActivity;->finish()V

    .line 152
    return-void
.end method

.method private switchLabelAndFinish(Ljava/lang/String;)V
    .locals 3
    .parameter "label"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/gm/Utils;->createViewLabelIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, clickIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelsActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 87
    instance-of v0, p1, Lcom/google/android/gm/LabelListFragment;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/google/android/gm/LabelListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gm/LabelsActivity;->mListFragment:Lcom/google/android/gm/LabelListFragment;

    .line 90
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gm/LabelsActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelsActivity;->setResult(I)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsActivity;->finish()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f0e0068
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelsActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/google/android/gm/LabelsActivity;->accountName()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, account:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object v6, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 67
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mListFragment:Lcom/google/android/gm/LabelListFragment;

    iget-object v1, p0, Lcom/google/android/gm/LabelsActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/gm/LabelsActivity;->mCreateShortcut:Z

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/LabelListFragment;->bindActivityInfo(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/LabelListFragment$LabelSelectionHandler;Lcom/google/android/gm/LabelItemView$DropHandler;Z)V

    .line 70
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 71
    .local v7, cancelButton:Landroid/widget/Button;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onLabelSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/gm/LabelsActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelsActivity;->startShortcutNameActivity(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelsActivity;->switchLabelAndFinish(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 81
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/LabelsActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method
