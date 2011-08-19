.class public Lcom/google/android/gm/ComposeActivityShim;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "ComposeActivityShim.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityShim;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivityShim;->startActivity(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivityShim;->finish()V

    .line 23
    return-void
.end method
