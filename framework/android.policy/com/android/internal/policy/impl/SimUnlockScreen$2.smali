.class Lcom/android/internal/policy/impl/SimUnlockScreen$2;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPuk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .registers 6
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 323
    :cond_13
    if-eqz p1, :cond_42

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 325
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->READY:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 326
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$702(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 343
    :goto_41
    return-void

    .line 331
    :cond_42
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040420

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 333
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$702(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->updateState()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    if-ne v0, v1, :cond_85

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 341
    :goto_7b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_41

    .line 339
    :cond_85
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    goto :goto_7b
.end method
