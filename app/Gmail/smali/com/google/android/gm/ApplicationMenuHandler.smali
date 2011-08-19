.class public Lcom/google/android/gm/ApplicationMenuHandler;
.super Ljava/lang/Object;
.source "ApplicationMenuHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleApplicationMenu(ILandroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    .line 25
    sparse-switch p0, :sswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 27
    :sswitch_0
    invoke-virtual {v0, p1}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gm/ComposeActivity;->compose(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    .line 28
    goto :goto_0

    .line 31
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 32
    goto :goto_0

    .line 35
    :sswitch_2
    invoke-static {p1}, Lcom/google/android/gm/Utils;->showSettings(Landroid/content/Context;)V

    move v0, v2

    .line 36
    goto :goto_0

    .line 39
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ConversationListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 40
    goto :goto_0

    .line 44
    :sswitch_4
    invoke-static {p1, p2}, Lcom/google/android/gm/Utils;->showHelp(Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)V

    move v0, v2

    .line 45
    goto :goto_0

    .line 48
    :sswitch_5
    invoke-static {p1}, Lcom/google/android/gm/Utils;->showFeedback(Landroid/content/Context;)V

    move v0, v2

    .line 49
    goto :goto_0

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x7f0e0061 -> :sswitch_1
        0x7f0e00a1 -> :sswitch_4
        0x7f0e00a2 -> :sswitch_5
        0x7f0e00a3 -> :sswitch_2
        0x7f0e00ac -> :sswitch_0
        0x7f0e00ae -> :sswitch_3
    .end sparse-switch
.end method

.method public static handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z
    .locals 1
    .parameter "item"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 19
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(ILandroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    return v0
.end method
