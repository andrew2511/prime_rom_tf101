.class Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionErrorCallback"
.end annotation


# instance fields
.field private mError:Lcom/google/android/gtalkservice/ConnectionError;

.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/gtalkservice/ConnectionError;)V
    .locals 0
    .parameter
    .parameter "error"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->mError:Lcom/google/android/gtalkservice/ConnectionError;

    .line 612
    return-void
.end method

.method private promptForCredentials()V
    .locals 7

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prompt for passwd for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v2}, Lcom/google/android/talk/AccountSelectionActivity;->access$400(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 671
    new-instance v1, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->access$400(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v1, account:Landroid/accounts/Account;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 676
    .local v3, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "ac2dm"

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    new-instance v5, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;

    invoke-direct {v5, p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;-><init>(Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 704
    return-void
.end method

.method private showConnectionOrServerErrors()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AccountSelectionActivity;->showDialog(I)V

    .line 665
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 615
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v5}, Lcom/google/android/talk/AccountSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 616
    .local v3, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->mError:Lcom/google/android/gtalkservice/ConnectionError;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->mError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v5}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v5

    move v0, v5

    .line 617
    .local v0, errorCode:I
    :goto_0
    const/4 v1, 0x1

    .line 619
    .local v1, hideNetworkError:Z
    if-nez v0, :cond_2

    .line 656
    :goto_1
    if-eqz v1, :cond_0

    .line 657
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v5}, Lcom/google/android/talk/AccountSelectionActivity;->access$1200(Lcom/google/android/talk/AccountSelectionActivity;)V

    .line 659
    :cond_0
    return-void

    .line 616
    .end local v0           #errorCode:I
    .end local v1           #hideNetworkError:Z
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 620
    .restart local v0       #errorCode:I
    .restart local v1       #hideNetworkError:Z
    :cond_2
    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->isNetworkError(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 622
    const/4 v2, 0x0

    .line 624
    .local v2, noNetwork:Z
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 625
    const v4, 0x7f0c007c

    .line 626
    .local v4, stringRes:I
    const/4 v2, 0x1

    .line 631
    :goto_2
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v5, v4}, Lcom/google/android/talk/AccountSelectionActivity;->access$900(Lcom/google/android/talk/AccountSelectionActivity;I)V

    .line 632
    const/4 v1, 0x0

    .line 635
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v5, v2}, Lcom/google/android/talk/AccountSelectionActivity;->access$1000(Lcom/google/android/talk/AccountSelectionActivity;Z)V

    goto :goto_1

    .line 628
    .end local v4           #stringRes:I
    :cond_3
    const v4, 0x7f0c007b

    .restart local v4       #stringRes:I
    goto :goto_2

    .line 637
    .end local v2           #noNetwork:Z
    .end local v4           #stringRes:I
    :cond_4
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/talk/AccountSelectionActivity;->access$1102(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 641
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->promptForCredentials()V

    goto :goto_1

    .line 645
    :pswitch_2
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const v6, 0x7f0c007f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/talk/AccountSelectionActivity;->access$1102(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 646
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->showConnectionOrServerErrors()V

    goto :goto_1

    .line 650
    :pswitch_3
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const v6, 0x7f0c0080

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/talk/AccountSelectionActivity;->access$1102(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->showConnectionOrServerErrors()V

    goto :goto_1

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
