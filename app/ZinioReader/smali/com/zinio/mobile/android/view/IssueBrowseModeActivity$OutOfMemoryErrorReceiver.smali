.class public Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;
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
    .line 873
    iput-object p1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;->b:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 874
    iput-object p2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;->a:Landroid/app/Activity;

    .line 875
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 879
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 881
    const-string v1, "OutOfMemoryError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;->b:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->l:Z

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->c(Landroid/app/Activity;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    .line 885
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;->a:Landroid/app/Activity;

    check-cast v0, Lcom/zinio/mobile/android/view/cf;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 886
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;->b:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->l:Z

    .line 889
    :cond_0
    return-void
.end method
