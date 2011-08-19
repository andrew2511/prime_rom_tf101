.class public Lcom/asus/dm/util/UIAlertDialogTimer;
.super Ljava/lang/Object;
.source "UIAlertDialogTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;,
        Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mBtnTimer:Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

.field private mDlgTimer:Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

.field private mMaxTimeMillis:I

.field private mMinTimeMillis:I


# direct methods
.method public constructor <init>(Lcom/asus/dm/mmi/dialog/DMDialog;II)V
    .locals 3
    .parameter "pUIAlertDialog"
    .parameter "maxTimeMillis"
    .parameter "minTimeMillis"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMaxTimeMillis:I

    .line 19
    iput v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMinTimeMillis:I

    .line 24
    iput p2, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMaxTimeMillis:I

    .line 25
    iput p3, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMinTimeMillis:I

    .line 27
    new-instance v0, Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

    iget v1, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMaxTimeMillis:I

    int-to-long v1, v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;-><init>(Lcom/asus/dm/util/UIAlertDialogTimer;Lcom/android/internal/app/AlertActivity;J)V

    iput-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mDlgTimer:Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

    .line 28
    new-instance v0, Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

    iget v1, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMinTimeMillis:I

    int-to-long v1, v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;-><init>(Lcom/asus/dm/util/UIAlertDialogTimer;Lcom/asus/dm/mmi/dialog/DMDialog;J)V

    iput-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mBtnTimer:Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

    .line 29
    return-void
.end method

.method static synthetic access$200(Lcom/asus/dm/util/UIAlertDialogTimer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMinTimeMillis:I

    return v0
.end method

.method static synthetic access$300(Lcom/asus/dm/util/UIAlertDialogTimer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMaxTimeMillis:I

    return v0
.end method

.method private isBtnEnableTimerAlive()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mBtnTimer:Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

    invoke-static {v0}, Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;->access$000(Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;)Z

    move-result v0

    return v0
.end method

.method private isDlgDismissTimerAlive()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mDlgTimer:Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

    invoke-static {v0}, Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;->access$100(Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/asus/dm/util/UIAlertDialogTimer;->isDlgDismissTimerAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mDlgTimer:Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

    invoke-virtual {v0}, Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;->cancel()V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/asus/dm/util/UIAlertDialogTimer;->isBtnEnableTimerAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mBtnTimer:Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

    invoke-virtual {v0}, Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;->cancel()V

    .line 95
    :cond_1
    return-void
.end method

.method public setButtonEnableCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mBtnTimer:Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

    invoke-virtual {v0, p1}, Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;->setOnFinishCallback(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public setDialogDismissCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 99
    iget v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMaxTimeMillis:I

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mDlgTimer:Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

    invoke-virtual {v0, p1}, Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;->setOnFinishCallback(Ljava/lang/Runnable;)V

    .line 102
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    iget v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMaxTimeMillis:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/asus/dm/util/UIAlertDialogTimer;->isDlgDismissTimerAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mDlgTimer:Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

    invoke-virtual {v0}, Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;->start()Landroid/os/CountDownTimer;

    .line 59
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mDlgTimer:Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;

    invoke-static {v0, v1}, Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;->access$102(Lcom/asus/dm/util/UIAlertDialogTimer$DialogDismissTimer;Z)Z

    .line 62
    :cond_0
    iget v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mMinTimeMillis:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/asus/dm/util/UIAlertDialogTimer;->isBtnEnableTimerAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mBtnTimer:Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

    invoke-virtual {v0}, Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;->start()Landroid/os/CountDownTimer;

    .line 64
    iget-object v0, p0, Lcom/asus/dm/util/UIAlertDialogTimer;->mBtnTimer:Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;

    invoke-static {v0, v1}, Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;->access$002(Lcom/asus/dm/util/UIAlertDialogTimer$ButtonEnableTimer;Z)Z

    .line 77
    :cond_1
    return-void
.end method
