.class Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;
.super Landroid/os/CountDownTimer;
.source "UIAlertDialogTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/util/UIAlertDialogTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonEnableTimer"
.end annotation


# static fields
.field private static final COUNT_DOWN_INTERVAL:J = 0x3e8L


# instance fields
.field private isAlive:Z

.field private mBtnEnableCallback:Ljava/lang/Runnable;

.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

.field private mPositiveButtonText:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/cm/util/UIAlertDialogTimer;


# direct methods
.method public constructor <init>(Lcom/asus/cm/util/UIAlertDialogTimer;Lcom/asus/cm/mmi/dialog/DMDialog;J)V
    .locals 5
    .parameter
    .parameter "dlg"
    .parameter "millisInFuture"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 121
    iput-object p1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->this$0:Lcom/asus/cm/util/UIAlertDialogTimer;

    .line 122
    const-wide/16 v1, 0x3e8

    invoke-direct {p0, p3, p4, v1, v2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 123
    iput-object p2, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    .line 127
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-virtual {v1, v3}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPositiveButtonText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 129
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 130
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    .line 135
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0}, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->initBtnList()V

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 142
    invoke-static {p1}, Lcom/asus/cm/util/UIAlertDialogTimer;->access$200(Lcom/asus/cm/util/UIAlertDialogTimer;)I

    move-result v1

    if-lez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->isAlive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->isAlive:Z

    return p1
.end method

.method private initBtnList()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, -0x3

    .line 186
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-virtual {v0, v4}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-virtual {v1, v4}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-virtual {v0, v3}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-virtual {v1, v3}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-virtual {v0, v2}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    invoke-virtual {v1, v2}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 154
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->this$0:Lcom/asus/cm/util/UIAlertDialogTimer;

    const-string v2, "=========== ButtonEnableTimer is finish ==========="

    invoke-static {v1, v2, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 156
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( 0 )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnEnableCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 164
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnEnableCallback:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 168
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->isAlive:Z

    .line 170
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mDlg:Lcom/asus/cm/mmi/dialog/DMDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/asus/cm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->this$0:Lcom/asus/cm/util/UIAlertDialogTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== ButtonEnableTimer is alive =========== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public setOnFinishCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/asus/cm/util/UIAlertDialogTimer$ButtonEnableTimer;->mBtnEnableCallback:Ljava/lang/Runnable;

    .line 201
    return-void
.end method
