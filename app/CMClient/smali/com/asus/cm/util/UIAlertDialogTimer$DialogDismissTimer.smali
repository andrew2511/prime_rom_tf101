.class Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;
.super Landroid/os/CountDownTimer;
.source "UIAlertDialogTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/util/UIAlertDialogTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogDismissTimer"
.end annotation


# static fields
.field private static final COUNT_DOWN_INTERVAL:J = 0x3e8L


# instance fields
.field private isAlive:Z

.field private mDlg:Lcom/android/internal/app/AlertActivity;

.field private mDlgDismissCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/asus/cm/util/UIAlertDialogTimer;


# direct methods
.method public constructor <init>(Lcom/asus/cm/util/UIAlertDialogTimer;Lcom/android/internal/app/AlertActivity;J)V
    .locals 2
    .parameter
    .parameter "dlg"
    .parameter "millisInFuture"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->this$0:Lcom/asus/cm/util/UIAlertDialogTimer;

    .line 211
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p3, p4, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 212
    iput-object p2, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->mDlg:Lcom/android/internal/app/AlertActivity;

    .line 220
    return-void
.end method

.method static synthetic access$100(Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->isAlive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->isAlive:Z

    return p1
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "========== DialogDismissTimer is finish =========="

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->this$0:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-static {v0}, Lcom/asus/cm/util/UIAlertDialogTimer;->access$300(Lcom/asus/cm/util/UIAlertDialogTimer;)I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->mDlg:Lcom/android/internal/app/AlertActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->mDlgDismissCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->mDlgDismissCallback:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->isAlive:Z

    .line 236
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========== DialogDismissTimer is alive ========== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setOnFinishCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$DialogDismissTimer;->mDlgDismissCallback:Ljava/lang/Runnable;

    .line 250
    return-void
.end method
