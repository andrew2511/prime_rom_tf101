.class public Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private synthetic b:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;->b:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 834
    iput-object p2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;->a:Landroid/app/Activity;

    .line 835
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 840
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 842
    const-string v1, "TimeOutException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;->b:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->l:Z

    if-nez v0, :cond_0

    .line 844
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->f()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    .line 846
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;->a:Landroid/app/Activity;

    check-cast v0, Lcom/zinio/mobile/android/view/cf;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 847
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;->b:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->l:Z

    .line 852
    :cond_0
    return-void
.end method
