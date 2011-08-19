.class public Lcom/google/android/gm/ConversationListActivityShim;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "ConversationListActivityShim.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v0

    .line 22
    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gm/TwoPaneActivity;

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListActivityShim;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 25
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    const/high16 v0, 0x1200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/android/gm/Persistence;->getHasShownWhatsNew(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, "show-whats-new"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gm/ConversationListActivityShim;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListActivityShim;->finish()V

    .line 41
    return-void

    .line 22
    :cond_1
    const-class v0, Lcom/google/android/gm/ConversationListActivity;

    goto :goto_0
.end method
