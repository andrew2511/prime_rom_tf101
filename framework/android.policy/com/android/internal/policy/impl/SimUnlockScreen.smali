.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$3;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SimUnlockScreen"

.field private static sNewPinCode:Ljava/lang/String;

.field private static sOrienChange:Z

.field private static sPUKCode:Ljava/lang/String;

.field private static sTempPinText:Ljava/lang/String;

.field private static sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardHidden:I

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPinText:Landroid/widget/EditText;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

.field private mStatusView:Lcom/android/internal/policy/impl/StatusView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sOrienChange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 12
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 94
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 95
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 98
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 99
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v1, v4, :cond_b5

    .line 104
    :cond_25
    const v1, 0x1090028

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    :goto_2b
    new-instance v1, Lcom/android/internal/policy/impl/StatusView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/StatusView;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mStatusView:Lcom/android/internal/policy/impl/StatusView;

    .line 110
    const v1, 0x1020226

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 112
    const v1, 0x1020228

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 116
    const v1, 0x1020227

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 122
    const v1, 0x10201d8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 124
    new-instance v1, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v1, p1, v2, p0, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :cond_9e
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10402a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateState()V

    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateView()V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetStatusInfo()V

    .line 142
    return-void

    .line 106
    :cond_b5
    const v1, 0x1090029

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2b
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    sput-object p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    sput-object p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    return-object v0
.end method

.method private checkPin()V
    .registers 3

    .prologue
    .line 279
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_28

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 283
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 312
    :goto_27
    return-void

    .line 288
    :cond_28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 290
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->start()V

    goto :goto_27
.end method

.method private checkPuk()V
    .registers 4

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 318
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->sPUKCode:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->sNewPinCode:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->start()V

    .line 345
    return-void
.end method

.method private checkSimState()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 560
    :goto_13
    return-void

    .line 499
    :cond_14
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->$SwitchMap$com$android$internal$policy$impl$SimUnlockScreen$SimLockState:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f8

    goto :goto_13

    .line 501
    :pswitch_22
    const-string v0, "SimUnlockScreen"

    const-string v1, "unlock attempt: PIN code entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_13

    .line 506
    :pswitch_2d
    const-string v0, "SimUnlockScreen"

    const-string v1, "puk code entered, request for new pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lt v0, v4, :cond_3e

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_59

    .line 510
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040424

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 512
    sput-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 513
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 514
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_13

    .line 517
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sPUKCode:Ljava/lang/String;

    .line 518
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)V

    .line 519
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateView()V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 521
    sput-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 522
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_13

    .line 526
    :pswitch_7b
    const-string v0, "SimUnlockScreen"

    const-string v1, "new pin code entered, verify pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sNewPinCode:Ljava/lang/String;

    .line 529
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-ge v0, v4, :cond_ae

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 533
    sput-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 534
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_13

    .line 538
    :cond_ae
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)V

    .line 539
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateView()V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 541
    sput-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 542
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto/16 :goto_13

    .line 546
    :pswitch_c5
    const-string v0, "SimUnlockScreen"

    const-string v1, "new pin code re-entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 549
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPuk()V

    goto/16 :goto_13

    .line 551
    :cond_e1
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)V

    .line 552
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateView()V

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 554
    sput-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 555
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto/16 :goto_13

    .line 499
    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2d
        :pswitch_7b
        :pswitch_c5
    .end packed-switch
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 260
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10402bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 274
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private resetStatusInfo()V
    .registers 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mStatusView:Lcom/android/internal/policy/impl/StatusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/StatusView;->updateStatusLines(Z)V

    .line 583
    return-void
.end method

.method private setState(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 442
    return-void
.end method

.method private updateState()V
    .registers 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_f

    .line 476
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 484
    :cond_e
    :goto_e
    return-void

    .line 477
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_e

    .line 478
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 479
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    if-ne v0, v1, :cond_e

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 481
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    goto :goto_e
.end method

.method private updateView()V
    .registers 3

    .prologue
    .line 446
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->$SwitchMap$com$android$internal$policy$impl$SimUnlockScreen$SimLockState:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 470
    :goto_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 472
    return-void

    .line 448
    :pswitch_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10402a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d

    .line 452
    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040422

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d

    .line 457
    :pswitch_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040425

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d

    .line 461
    :pswitch_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040426

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d

    .line 465
    :pswitch_39
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040427

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 466
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)V

    goto :goto_d

    .line 446
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_39
    .end packed-switch
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin2"

    .prologue
    .line 487
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 488
    const/4 v0, 0x1

    .line 491
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 184
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 408
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 410
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 348
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 417
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 565
    if-nez p2, :cond_24

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    .line 566
    const-string v0, "SimUnlockScreen"

    const-string v1, "User enter PIN code to start unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 568
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkSimState()V

    .line 569
    const/4 v0, 0x1

    .line 571
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 351
    const/4 v2, 0x4

    if-ne p1, v2, :cond_b

    .line 352
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v2, v4

    .line 378
    :goto_a
    return v2

    .line 356
    :cond_b
    const/16 v2, 0x43

    if-ne p1, v2, :cond_27

    .line 358
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 359
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 360
    .local v1, len:I
    if-lez v1, :cond_25

    .line 361
    sub-int v2, v1, v4

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 362
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    :cond_25
    move v2, v4

    .line 364
    goto :goto_a

    .line 367
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_27
    const/16 v2, 0x42

    if-ne p1, v2, :cond_37

    .line 368
    const-string v2, "SimUnlockScreen"

    const-string v3, "SimUnlockScreen receive KEYCODE_ENTER to start unlock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkSimState()V

    move v2, v4

    .line 370
    goto :goto_a

    .line 374
    :cond_37
    const/16 v2, 0x3d

    if-ne p1, v2, :cond_3d

    move v2, v4

    .line 375
    goto :goto_a

    .line 378
    :cond_3d
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    if-eqz v0, :cond_10

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 155
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    if-eqz v0, :cond_18

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 159
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 161
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 421
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 424
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 428
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 167
    sget-boolean v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sOrienChange:Z

    if-nez v0, :cond_13

    .line 168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateState()V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateView()V

    .line 174
    :goto_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetStatusInfo()V

    .line 175
    return-void

    .line 171
    :cond_13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sOrienChange:Z

    goto :goto_f
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 432
    return-void
.end method

.method public onTimeChanged()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mStatusView:Lcom/android/internal/policy/impl/StatusView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/StatusView;->onTimeChanged()V

    .line 436
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 383
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_38

    .line 384
    const-string v1, "SimUnlockScreen"

    const-string v2, "SimUnlockScreen update orientation configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sput-boolean v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->sOrienChange:Z

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 396
    :cond_1d
    :goto_1d
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/EditText;

    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 398
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempPinText:Ljava/lang/String;

    .line 400
    :cond_2b
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    if-eqz v1, :cond_37

    .line 401
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->sTempState:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;)V

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateView()V

    .line 404
    :cond_37
    return-void

    .line 387
    :cond_38
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_1d

    .line 388
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 389
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimUnlockScreen update hardkeyboard configuration is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v1, v4, :cond_1d

    goto :goto_1d
.end method
