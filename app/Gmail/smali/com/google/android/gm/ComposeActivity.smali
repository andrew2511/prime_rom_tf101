.class public Lcom/google/android/gm/ComposeActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/google/android/gm/ComposeController;
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;,
        Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;,
        Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ACCOUNT_ADDRESS:I

.field private static ACCOUNT_DISPLAY:I

.field private static final HEADER_SEPARATOR_LENGTH:I

.field public static IS_CUSTOMFROM:I

.field private static REAL_ACCOUNT:I

.field private static sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;


# instance fields
.field protected mAccount:Ljava/lang/String;

.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mAccountSpinnerReady:Z

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActiveTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttachmentAddedOrRemoved:Z

.field private mComposeArea:Lcom/google/android/gm/ComposeAreaController;

.field private mCurrentMode:I

.field private mCurrentReplyFromAccount:[Ljava/lang/String;

.field private mDraftId:J

.field private mDraftIdLock:Ljava/lang/Object;

.field private mDraftSender:Ljava/lang/String;

.field private mForward:Z

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mIsDraft:Z

.field private mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

.field private mMessageIsForwardOrReply:Z

.field private mPrefs:Lcom/google/android/gm/Persistence;

.field private mRecipient:Ljava/lang/String;

.field private mRefMessageId:J

.field private mReplyFromAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyFromChanged:Z

.field private mRequestId:I

.field private mRestoredCustomFrom:Ljava/lang/String;

.field private mRestoredRequestId:I

.field private mSendSaveTaskHandler:Landroid/os/Handler;

.field private mTextChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/ComposeActivity;->$assertionsDisabled:Z

    .line 118
    const-string v0, "<br type=\'attribution\'>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/gm/ComposeActivity;->HEADER_SEPARATOR_LENGTH:I

    .line 129
    sget v0, Lcom/google/android/gm/utils/CustomFromUtils;->REAL_ACCOUNT:I

    sput v0, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    .line 130
    sget v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_DISPLAY:I

    sput v0, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_DISPLAY:I

    .line 131
    sget v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_ADDRESS:I

    sput v0, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    .line 132
    const/4 v0, 0x3

    sput v0, Lcom/google/android/gm/ComposeActivity;->IS_CUSTOMFROM:I

    .line 182
    sput-object v1, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    .line 198
    sput-object v1, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 128
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    .line 133
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    .line 139
    iput-wide v2, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 140
    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    .line 141
    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I

    .line 142
    iput-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    .line 143
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    .line 156
    iput-wide v2, p0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    .line 165
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    .line 166
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    .line 167
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 175
    iput-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    .line 180
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    .line 1541
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ComposeActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/ComposeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gm/ComposeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->createReplyFromCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gm/ComposeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->discardChanges()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/gm/ComposeActivity;)Lcom/google/android/gm/ComposeAreaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gm/ComposeActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeActivity;->updateReplyFromAccount([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/gm/ComposeActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/gm/ComposeActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/gm/ComposeActivity;Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity;->getCurrentAccountIndex(Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/ComposeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initFromSpinner()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/ComposeActivity;Landroid/text/Spanned;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity;->sendOrSave(Landroid/text/Spanned;ZZ)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/ComposeActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/ComposeActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/gm/ComposeActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    return-wide p1
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/ComposeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveRequestMap()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gm/ComposeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I

    return v0
.end method

.method private asyncInitFromSpinner()V
    .locals 1

    .prologue
    .line 974
    new-instance v0, Lcom/google/android/gm/ComposeActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ComposeActivity$1;-><init>(Lcom/google/android/gm/ComposeActivity;)V

    .line 995
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0, v0}, Lcom/google/android/gm/AccountHelper;->getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 996
    return-void
.end method

.method private checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p2, wrongEmailsOut:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeAreaController;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1218
    return-void
.end method

.method public static compose(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v1, "fromgmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    const-string v1, "action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method private createReplyFromCache()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 941
    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    .line 944
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 949
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 950
    invoke-static {v0}, Lcom/google/android/gm/utils/CustomFromUtils;->getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 954
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    new-array v4, v11, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v0, v4, v8

    aput-object v0, v4, v9

    const-string v5, "false"

    aput-object v5, v4, v10

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    if-eqz v1, :cond_0

    .line 958
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 959
    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_DISPLAY:I

    aget-object v4, v1, v4

    if-eqz v4, :cond_1

    .line 960
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    new-array v5, v11, [Ljava/lang/String;

    sget v6, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_DISPLAY:I

    aget-object v6, v1, v6

    aput-object v6, v5, v7

    sget v6, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v1, v1, v6

    aput-object v1, v5, v8

    aput-object v0, v5, v9

    const-string v1, "true"

    aput-object v1, v5, v10

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    goto :goto_0

    .line 967
    :cond_3
    return-void
.end method

.method private discardChanges()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 747
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    .line 748
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    .line 749
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    .line 750
    return-void
.end method

.method private doDiscard()V
    .locals 3

    .prologue
    .line 654
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 661
    return-void
.end method

.method private doDiscardWithoutConfirmation(Z)V
    .locals 5
    .parameter "showToast"

    .prologue
    const-wide/16 v3, 0x0

    .line 690
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 697
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 699
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    if-eqz p1, :cond_1

    .line 703
    const v0, 0x7f0d006e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 707
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->discardChanges()V

    .line 708
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    .line 709
    return-void

    .line 699
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static draft(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string v1, "fromgmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string v1, "action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "draftId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method private finishOnCreateAfterAccountSelected(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 1121
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    const-string v1, ""

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    .line 1123
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1124
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    invoke-direct {p0, v7}, Lcom/google/android/gm/ComposeActivity;->showFromSpinner(Z)V

    .line 1133
    new-instance v1, Landroid/util/TimingLogger;

    const-string v0, "Gmail"

    const-string v2, "ComposeActivity.initDraftIdAndUi"

    invoke-direct {v1, v0, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1139
    if-eqz p1, :cond_2

    .line 1140
    const-string v0, "draftId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 1141
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const-string v3, "showCcBcc"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3, v8}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    .line 1143
    const-string v0, "customFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    .line 1145
    iget-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1149
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1150
    if-eqz v0, :cond_1

    .line 1151
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 1160
    :cond_0
    :goto_0
    const-string v0, "get values"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1164
    invoke-direct {p0, v7}, Lcom/google/android/gm/ComposeActivity;->setQuotedSectionVisibility(Z)V

    .line 1169
    if-eqz v2, :cond_9

    .line 1170
    const-string v0, "action"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1171
    const-string v0, "action"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1175
    :goto_1
    iget-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 1176
    if-eqz v2, :cond_3

    .line 1177
    const-string v3, "in-reference-to"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1178
    const-string v3, "in-reference-to"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1179
    sget-boolean v4, Lcom/google/android/gm/ComposeActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-ne v0, v9, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1154
    :cond_1
    iput v3, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I

    goto :goto_0

    .line 1157
    :cond_2
    if-eqz v2, :cond_0

    const-string v0, "draftId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "draftId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    goto :goto_0

    :cond_3
    move-wide v2, v5

    .line 1182
    :cond_4
    const-string v4, "more values"

    invoke-virtual {v1, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1184
    cmp-long v4, v2, v5

    if-eqz v4, :cond_6

    .line 1185
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gm/ComposeActivity;->initFromRefMessage(JI)V

    .line 1186
    const-string v0, "initFromRefMessage"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1196
    :goto_2
    const-string v0, "fill ui"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1198
    cmp-long v0, v2, v5

    if-eqz v0, :cond_8

    move v0, v8

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    .line 1201
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initSpinnerFromCache()V

    .line 1203
    if-nez p1, :cond_5

    .line 1204
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->requestFocus()V

    .line 1206
    :cond_5
    const-string v0, "finish"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1208
    return-void

    .line 1190
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->initFromExtras(Landroid/content/Intent;)V

    .line 1191
    const-string v0, "initFromExtras"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_2

    .line 1194
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initFromDraftCursor()J

    move-result-wide v2

    goto :goto_2

    :cond_8
    move v0, v7

    .line 1198
    goto :goto_3

    :cond_9
    move v0, v9

    goto :goto_1
.end method

.method public static forward(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    const-string v1, "fromgmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "in-reference-to"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    return-void
.end method

.method private getCurrentAccountIndex(Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I
    .locals 6
    .parameter "adapter"
    .parameter "checkRealAccount"
    .parameter "replyFromAccount"

    .prologue
    .line 1038
    const/4 v2, 0x0

    .line 1039
    .local v2, currentIndex:I
    const/4 v1, 0x0

    .line 1041
    .local v1, currentAccountIndex:I
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1046
    .local v0, account:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->add(Ljava/lang/Object;)V

    .line 1049
    if-eqz p2, :cond_1

    .line 1054
    sget v4, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v4, v0, v4

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v4, v0, v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1056
    move v1, v2

    .line 1065
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v4, v0, v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1061
    move v1, v2

    goto :goto_1

    .line 1067
    .end local v0           #account:[Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private getSelectedAccountInfo(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 1496
    const/4 v0, 0x0

    .line 1497
    .local v0, selectedAccountInfo:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    aget-object v0, p0, p1

    .line 1501
    :cond_0
    return-object v0
.end method

.method private hideOrShowFromSpinner()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1075
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-le v1, v2, :cond_0

    move v0, v2

    .line 1080
    .local v0, showSpinner:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->showFromSpinner(Z)V

    .line 1081
    return-void

    .line 1075
    .end local v0           #showSpinner:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private initFromDraftCursor()J
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 844
    const-wide/16 v2, 0x0

    .line 846
    .local v2, refMessageId:J
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v6, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v1

    .line 847
    .local v1, draftCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    iput-boolean v9, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    .line 848
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v5}, Lcom/google/android/gm/ComposeLayout;->setSaved()V

    .line 851
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 853
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getRefMessageId()J

    move-result-wide v2

    .line 854
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getForward()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 855
    const/4 v0, -0x1

    .line 857
    .local v0, action:I
    iget-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    if-eqz v5, :cond_1

    .line 858
    const/4 v0, 0x2

    .line 872
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 873
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v4, :cond_4

    array-length v5, v4

    if-lez v5, :cond_4

    .line 875
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mDraftSender:Ljava/lang/String;

    .line 879
    :goto_1
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v5, v1}, Lcom/google/android/gm/ComposeAreaController;->initFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 880
    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 881
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    .end local v0           #action:I
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 887
    return-wide v2

    .line 859
    .restart local v0       #action:I
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_3

    .line 860
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    if-le v5, v9, :cond_2

    .line 863
    const/4 v0, 0x1

    goto :goto_0

    .line 865
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 868
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 877
    .restart local v4       #tokens:[Landroid/text/util/Rfc822Token;
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mDraftSender:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 884
    .end local v0           #action:I
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v5
.end method

.method private initFromRefMessage(JI)V
    .locals 6
    .parameter "refMessageid"
    .parameter "action"

    .prologue
    .line 780
    new-instance v2, Landroid/util/TimingLogger;

    const-string v3, "Gmail"

    const-string v4, "ComposeActivity.initFromRefMessage"

    invoke-direct {v2, v3, v4}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .local v2, timings:Landroid/util/TimingLogger;
    iput-wide p1, p0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    .line 783
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, p2}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v1

    .line 785
    .local v1, refCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    const-string v3, "get ref message"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 787
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 789
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 790
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 793
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 795
    .local v0, allRecipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 796
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gm/ComposeActivity;->getMatchingRecipient(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    .line 797
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    invoke-virtual {v3, v1, v4, p3, v5}, Lcom/google/android/gm/ComposeAreaController;->initFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;Ljava/lang/String;IZ)V

    .line 798
    const-string v3, "initComposeAreaFromRefMessage"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 800
    const-string v3, "add attachments"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .end local v0           #allRecipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 806
    const-string v3, "finish"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v2}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 808
    return-void

    .line 804
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v3
.end method

.method private initFromSpinner()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1002
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1005
    :cond_0
    new-instance v1, Lcom/google/android/gm/FromAddressSpinnerAdapter;

    invoke-direct {v1, p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;-><init>(Landroid/content/Context;)V

    .line 1009
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    .line 1021
    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    move v2, v5

    .line 1023
    :goto_2
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gm/ComposeActivity;->getCurrentAccountIndex(Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I

    move-result v2

    .line 1025
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    .line 1026
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1027
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 1028
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1029
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    .line 1031
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->hideOrShowFromSpinner()V

    .line 1032
    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    .line 1033
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->setSpinner(Landroid/widget/Spinner;)V

    goto :goto_0

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v2, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v0, v0, v2

    goto :goto_1

    .line 1013
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    if-eqz v0, :cond_4

    .line 1014
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftSender:Ljava/lang/String;

    goto :goto_1

    .line 1015
    :cond_4
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1016
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/utils/CustomFromUtils;->getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1018
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/utils/CustomFromUtils;->getReplyFromAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move v2, v4

    .line 1021
    goto :goto_2
.end method

.method private initSpinnerFromCache()V
    .locals 3

    .prologue
    .line 926
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gm/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 928
    .local v0, cachedSyncedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 929
    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    .line 931
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->createReplyFromCache()V

    .line 932
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initFromSpinner()V

    .line 934
    :cond_0
    return-void
.end method

.method private isBlank()Z
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->isBlank()Z

    move-result v0

    return v0
.end method

.method private needRequestMessageIdMap(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "icicle"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAppUpPressed()V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromgmail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->onBackPressed()V

    .line 519
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ConversationListActivityGmail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->startActivity(Landroid/content/Intent;)V

    .line 517
    const v0, 0x10a0002

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ComposeActivity;->overridePendingTransition(II)V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    goto :goto_0
.end method

.method private onSwitchState()V
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V

    .line 571
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->updateMessage(I)V

    .line 572
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->requestFocus()V

    .line 573
    return-void
.end method

.method static registerTestSendOrSaveCallback(Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;)V
    .locals 2
    .parameter "testCallback"

    .prologue
    .line 258
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to register more than one test callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    sput-object p0, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    .line 262
    return-void
.end method

.method public static reply(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    const-string v1, "fromgmail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    const-string v1, "action"

    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v1, "in-reference-to"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void

    .line 225
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restoreRequestMap()V
    .locals 9

    .prologue
    .line 373
    invoke-static {p0}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 374
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v7, "cache-message-request-ids"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 376
    .local v5, retrievedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 377
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    .local v0, entry:Ljava/lang/String;
    const-string v7, " "

    invoke-static {v0, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, keyValue:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 380
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 381
    .local v2, key:Ljava/lang/Integer;
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 382
    .local v6, value:Ljava/lang/Long;
    sget-object v7, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 386
    .end local v0           #entry:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #keyValue:[Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method private saveIfNeeded()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->doSave(Z)V

    goto :goto_0
.end method

.method private saveRequestMap()V
    .locals 10

    .prologue
    .line 353
    sget-object v8, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 355
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 356
    .local v7, setForStorage:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 357
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 358
    .local v6, requestId:Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 359
    .local v5, messageId:Ljava/lang/Long;
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, entryString:Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v3           #entryString:Ljava/lang/String;
    .end local v5           #messageId:Ljava/lang/Long;
    .end local v6           #requestId:Ljava/lang/Integer;
    :cond_1
    invoke-static {p0}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "cache-message-request-ids"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    return-void
.end method

.method private sendOrSave(Landroid/text/Spanned;ZZ)V
    .locals 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    if-nez p2, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->getToAddresses()[Ljava/lang/String;

    move-result-object v8

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->getCcAddresses()[Ljava/lang/String;

    move-result-object v9

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->getBccAddresses()[Ljava/lang/String;

    move-result-object v10

    .line 1373
    new-instance v16, Lcom/google/android/gm/ComposeActivity$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeActivity$3;-><init>(Lcom/google/android/gm/ComposeActivity;)V

    .line 1442
    sget v3, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 1443
    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 1444
    if-eqz v3, :cond_2

    if-nez v4, :cond_8

    .line 1447
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    move-object v3, v0

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    move-object v4, v0

    move-object v6, v4

    move-object v5, v3

    .line 1451
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    move-object v3, v0

    if-nez v3, :cond_3

    .line 1452
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "Send Message Task Thread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1455
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    .line 1458
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->getSubject()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->getAttachments()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    move-wide v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    move/from16 v19, v0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move/from16 v18, p2

    invoke-static/range {v3 .. v19}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;JLcom/google/android/gm/ComposeActivity$SendOrSaveCallback;Landroid/os/Handler;ZZ)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1464
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    .line 1466
    :cond_4
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 1471
    if-eqz p3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->getChangingConfigurations()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_5

    .line 1472
    if-eqz p2, :cond_7

    const v3, 0x7f0d006c

    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1475
    :cond_5
    if-eqz p2, :cond_6

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeLayout;->setSaved()V

    .line 1482
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->discardChanges()V

    .line 1483
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1486
    if-nez p2, :cond_0

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    goto/16 :goto_0

    .line 1472
    :cond_7
    const v3, 0x7f0d006d

    goto :goto_2

    :cond_8
    move-object v6, v4

    move-object v5, v3

    goto/16 :goto_1
.end method

.method static sendOrSaveInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;JLcom/google/android/gm/ComposeActivity$SendOrSaveCallback;Landroid/os/Handler;ZZ)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/text/Spanned;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;J",
            "Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;",
            "Landroid/os/Handler;",
            "ZZ)I"
        }
    .end annotation

    .prologue
    .line 1311
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1313
    move-object v0, v7

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putToAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1314
    move-object v0, v7

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putCcAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1315
    move-object v0, v7

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putBccAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1317
    move-object v0, v7

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putSubject(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1318
    invoke-static {p4}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p4

    .line 1319
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    const/16 p5, 0x1

    .line 1320
    :goto_0
    new-instance p6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    move-object v1, p4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1321
    if-eqz p5, :cond_0

    .line 1322
    if-eqz p16, :cond_2

    .line 1324
    move-object/from16 v0, p6

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1344
    :cond_0
    :goto_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v7, p4}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putBody(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1346
    invoke-static {v7, p3}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putCustomFromAddress(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1348
    move-object v0, v7

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putAttachments(Landroid/content/ContentValues;Ljava/util/List;)V

    .line 1350
    new-instance v4, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    move-object v5, p1

    move-object v6, p2

    move-wide/from16 v8, p11

    move/from16 v10, p15

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;JZ)V

    .line 1352
    new-instance p1, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    move-object v0, p1

    move-object v1, p0

    move-object v2, v4

    move-object/from16 v3, p13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;-><init>(Landroid/content/Context;Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;)V

    .line 1354
    move-object/from16 v0, p13

    move-object v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->initializeSendOrSave(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V

    .line 1357
    move-object/from16 v0, p14

    move-object v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1359
    invoke-virtual {v4}, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->requestId()I

    move-result p0

    return p0

    .line 1319
    :cond_1
    const/16 p5, 0x0

    goto :goto_0

    .line 1327
    :cond_2
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1328
    const-string p7, "<br type=\'attribution\'>"

    move-object v0, p4

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p7

    .line 1329
    if-ltz p7, :cond_3

    .line 1330
    sget p8, Lcom/google/android/gm/ComposeActivity;->HEADER_SEPARATOR_LENGTH:I

    add-int p7, p7, p8

    .line 1331
    const/16 p8, 0x0

    move-object v0, p4

    move/from16 v1, p8

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p6

    move-object v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    .line 1333
    move-object v0, v7

    move/from16 v1, p16

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putForward(Landroid/content/ContentValues;Z)V

    .line 1334
    move-object v0, v7

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putIncludeQuotedText(Landroid/content/ContentValues;Z)V

    .line 1335
    int-to-long p4, p4

    move-object v0, v7

    move-wide v1, p4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putQuoteStartPos(Landroid/content/ContentValues;J)V

    goto :goto_1

    .line 1337
    :cond_3
    const-string p5, "Gmail"

    const-string p7, "Couldn\'t find quoted text"

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    move-object/from16 v0, p6

    move-object v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private setQuotedSectionVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 325
    return-void
.end method

.method private setupRequestMap(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 328
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 332
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->restoreRequestMap()V

    .line 335
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeActivity;->needRequestMessageIdMap(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 341
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveRequestMap()V

    .line 344
    :cond_1
    return-void
.end method

.method private shouldSave()Z
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showDiscardAttachmentsDialog([Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1769
    new-instance v0, Lcom/google/android/gm/ComposeActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/ComposeActivity$4;-><init>(Lcom/google/android/gm/ComposeActivity;[Ljava/lang/String;)V

    .line 1786
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0048

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0047

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0023

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0025

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1793
    return-void
.end method

.method private showFromSpinner(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1089
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    return-void

    :cond_0
    move v1, v2

    .line 1089
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1093
    goto :goto_1
.end method

.method private showRecipientErrorDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->showRecipientErrorDialog(Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method private showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0144

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1228
    return-void
.end method

.method private switchToForward()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 554
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    if-eq v0, v1, :cond_0

    .line 555
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 557
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onSwitchState()V

    .line 559
    :cond_0
    return-void
.end method

.method private switchToReply()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 546
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    if-eqz v0, :cond_0

    .line 547
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 548
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 549
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onSwitchState()V

    .line 551
    :cond_0
    return-void
.end method

.method private switchToReplyAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 562
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    if-eq v0, v1, :cond_0

    .line 563
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 565
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onSwitchState()V

    .line 567
    :cond_0
    return-void
.end method

.method private updateFromDraftCursor()J
    .locals 8

    .prologue
    .line 895
    const-wide/16 v2, 0x0

    .line 897
    .local v2, refMessageId:J
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v0

    .line 898
    .local v0, draftCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    const/4 v1, 0x0

    .line 901
    .local v1, refMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 903
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getRefMessageId()J

    move-result-wide v2

    .line 904
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 906
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/provider/Gmail;->getLocalMessageCursorForQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v1

    .line 909
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    iget v5, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/gm/ComposeAreaController;->updateFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 910
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 914
    if-eqz v1, :cond_2

    .line 915
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 919
    :cond_2
    return-wide v2

    .line 913
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 914
    if-eqz v1, :cond_3

    .line 915
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    :cond_3
    throw v4
.end method

.method private updateMessage(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateFromDraftCursor()J

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    iget v2, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gm/ComposeActivity;->initFromRefMessage(JI)V

    goto :goto_0
.end method

.method private updateReplyFromAccount([Ljava/lang/String;)V
    .locals 5
    .parameter "selectedAccountInfo"

    .prologue
    const/4 v4, 0x1

    .line 1753
    sget v1, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v3, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1757
    .local v0, equalAccounts:Z
    if-eqz v0, :cond_0

    sget v1, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v3, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1760
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v1, v4}, Lcom/google/android/gm/ComposeLayout;->enableSave(Z)V

    .line 1761
    iput-boolean v4, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    .line 1763
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    sget v2, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/Persistence;->setPersistenceActiveAccount(Ljava/lang/String;)V

    .line 1764
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    sget v2, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ComposeAreaController;->updateReplyFromAccount(Ljava/lang/String;)V

    .line 1765
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    .line 1766
    return-void
.end method

.method private updateSendOptions()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    iget v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->updateComposeMode(I)V

    .line 586
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    .line 1726
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1727
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1731
    return-void
.end method

.method public doAttach()V
    .locals 4

    .prologue
    .line 638
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.google.android.gm.allowAddAnyAttachment"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    :goto_0
    const v1, 0x7f0d006b

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 648
    return-void

    .line 644
    :cond_0
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public doDiscard(Z)V
    .locals 4
    .parameter "showToast"

    .prologue
    .line 670
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 671
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 672
    .local v0, draftId:J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->doDiscard()V

    .line 680
    :goto_0
    return-void

    .line 672
    .end local v0           #draftId:J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 678
    .restart local v0       #draftId:J
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeActivity;->doDiscardWithoutConfirmation(Z)V

    goto :goto_0
.end method

.method public doSave(Z)V
    .locals 2
    .parameter "showToast"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getBodyText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z

    .line 719
    :cond_0
    return-void
.end method

.method public doSend(Z)V
    .locals 2
    .parameter "showToast"

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->enableSend(Z)V

    .line 773
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 774
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getBodyText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->enableSend(Z)V

    .line 777
    :cond_0
    return-void
.end method

.method public getBodyText()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getBodyText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1832
    const-string v0, "gm_compose"

    return-object v0
.end method

.method protected getInitialAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    invoke-static {p0}, Lcom/google/android/gm/WaitActivity;->waitIfNeededAndGetAccount(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMatchingRecipient(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 814
    .local p2, sentTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 815
    .local v7, recipientsMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v8

    .line 817
    .local v8, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_0

    .line 818
    aget-object v9, v8, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 822
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #i:I
    .end local v8           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v6, 0x0

    .line 823
    .local v6, matchingAddressCount:I
    move-object v5, p1

    .line 824
    .local v5, matchingAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gm/utils/CustomFromUtils;->getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 825
    .local v1, customFroms:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 826
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 827
    .local v2, entry:[Ljava/lang/String;
    sget v9, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v9, v2, v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 828
    sget v9, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v5, v2, v9

    .line 829
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 833
    .end local v2           #entry:[Ljava/lang/String;
    :cond_3
    const/4 v9, 0x1

    if-le v6, v9, :cond_4

    .line 835
    invoke-static {p1}, Lcom/google/android/gm/utils/CustomFromUtils;->getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 837
    :cond_4
    return-object v5
.end method

.method protected initFromExtras(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->initFromExtras(Landroid/content/Intent;)V

    .line 1711
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    .line 590
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p3}, Lcom/google/android/gm/ComposeAreaController;->addAttachmentAndUpdateView(Landroid/content/Intent;)V

    goto :goto_0

    .line 596
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeActivity;->finishOnCreateAfterAccountSelected(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachmentsChanged()V
    .locals 1

    .prologue
    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    .line 1802
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1803
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1816
    packed-switch p2, :pswitch_data_0

    .line 1828
    :goto_0
    return-void

    .line 1818
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gm/ComposeActivity;->doDiscardWithoutConfirmation(Z)V

    goto :goto_0

    .line 1823
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->enableSend(Z)V

    goto :goto_0

    .line 1816
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1529
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1531
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeLayout;->onOrientationChanged(Landroid/content/res/Configuration;)V

    .line 1532
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 269
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 271
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/ComposeActivity;->setDefaultKeyMode(I)V

    .line 274
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeActivity;->setupRequestMap(Landroid/os/Bundle;)V

    .line 275
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 276
    if-eqz p1, :cond_0

    const-string v2, "selectedAccount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string v2, "selectedAccount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getInitialAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 318
    :goto_0
    return-void

    .line 284
    :cond_2
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    .line 286
    new-instance v2, Lcom/google/android/gm/ComposeAreaController;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    invoke-direct {v2, p0, p0, v3}, Lcom/google/android/gm/ComposeAreaController;-><init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;Lcom/google/android/gm/Persistence;)V

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    .line 287
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    new-instance v3, Lcom/google/android/gm/ComposeArea;

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gm/ComposeArea;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/ComposeAreaController;->renderComposeArea(Lcom/google/android/gm/ComposeArea;Ljava/lang/String;)V

    .line 288
    invoke-static {p0, p0}, Lcom/google/android/gm/ComposeLayout;->newInstance(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)Lcom/google/android/gm/ComposeLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    .line 289
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/ComposeLayout;->setComposeArea(Lcom/google/android/gm/ComposeAreaController;)V

    .line 290
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeLayout;->setupLayout()V

    .line 291
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    .line 293
    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 296
    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 298
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 300
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 301
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 307
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/ComposeActivity;->finishOnCreateAfterAccountSelected(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 312
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 313
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 317
    :cond_4
    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 460
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/ComposeLayout;->onCreateOptionsMenu(Landroid/view/Menu;Z)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 415
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onDestroy()V

    .line 416
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1738
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 1739
    .local v3, selectedAccountInfo:[Ljava/lang/String;
    sget v4, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v4, v3, v4

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v6, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1741
    .local v2, equalAccounts:Z
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v4}, Lcom/google/android/gm/ComposeAreaController;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 1742
    .local v1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v4}, Lcom/google/android/gm/ComposeAreaController;->areAttachmentsSynced()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1746
    invoke-direct {p0, v3}, Lcom/google/android/gm/ComposeActivity;->showDiscardAttachmentsDialog([Ljava/lang/String;)V

    .line 1750
    :goto_0
    return-void

    .line 1749
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gm/ComposeActivity;->updateReplyFromAccount([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 1688
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1689
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1693
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1694
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    .line 1702
    :goto_0
    monitor-exit v0

    move v0, v5

    .line 1705
    :goto_1
    return v0

    .line 1695
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1697
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeActivity;->doDiscard(Z)V

    goto :goto_0

    .line 1702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1700
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/android/gm/ComposeActivity;->doDiscardWithoutConfirmation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1705
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/GmailBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1797
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 466
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 498
    invoke-static {p1, p0, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    :goto_0
    return v0

    .line 468
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onAppUpPressed()V

    move v0, v2

    .line 469
    goto :goto_0

    .line 472
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->shouldShowToast(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->doSend(Z)V

    move v0, v2

    .line 473
    goto :goto_0

    .line 476
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->shouldShowToast(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->doSave(Z)V

    move v0, v2

    .line 477
    goto :goto_0

    .line 481
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    move v0, v2

    .line 482
    goto :goto_0

    .line 486
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    move v0, v2

    .line 487
    goto :goto_0

    .line 490
    :sswitch_5
    invoke-virtual {p0, v2}, Lcom/google/android/gm/ComposeActivity;->doDiscard(Z)V

    move v0, v2

    .line 491
    goto :goto_0

    .line 494
    :sswitch_6
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->doAttach()V

    move v0, v2

    .line 495
    goto :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e002a -> :sswitch_4
        0x7f0e002c -> :sswitch_6
        0x7f0e0032 -> :sswitch_1
        0x7f0e0033 -> :sswitch_2
        0x7f0e009f -> :sswitch_3
        0x7f0e00a0 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 408
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onPause()V

    .line 409
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveIfNeeded()V

    .line 410
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->dismissAllDialogs()V

    .line 411
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 577
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 579
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/ComposeLayout;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 580
    .local v0, success:Z
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V

    .line 581
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 1099
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1100
    if-eqz p1, :cond_1

    .line 1101
    const-string v4, "focusSelectionStart"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1102
    const-string v4, "focusSelectionStart"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1103
    .local v3, selectionStart:I
    const-string v4, "focusSelectionEnd"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1106
    .local v2, selectionEnd:I
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1107
    .local v0, focusEditText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1108
    .local v1, length:I
    if-ge v3, v1, :cond_0

    if-ge v2, v1, :cond_0

    .line 1109
    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1114
    .end local v0           #focusEditText:Landroid/widget/EditText;
    .end local v1           #length:I
    .end local v2           #selectionEnd:I
    .end local v3           #selectionStart:I
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v4, p1}, Lcom/google/android/gm/ComposeAreaController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1116
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 402
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->asyncInitFromSpinner()V

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 404
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "state"

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveIfNeeded()V

    .line 427
    const-string v5, "draftId"

    iget-wide v6, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 429
    sget v5, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    invoke-direct {p0, v5}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, selectedAccount:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 431
    const-string v5, "selectedAccount"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    sget v5, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    invoke-direct {p0, v5}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, fromAddress:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 435
    const-string v5, "customFrom"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_1
    iget-wide v5, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget v5, p0, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    if-eqz v5, :cond_2

    .line 441
    const-string v5, "requestId"

    iget v6, p0, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    :cond_2
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v5, p1}, Lcom/google/android/gm/ComposeAreaController;->onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 449
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 450
    .local v1, focus:Landroid/view/View;
    if-eqz v1, :cond_3

    instance-of v5, v1, Landroid/widget/EditText;

    if-eqz v5, :cond_3

    .line 451
    move-object v0, v1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    .line 452
    .local v2, focusEditText:Landroid/widget/EditText;
    const-string v5, "focusSelectionStart"

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v5, "focusSelectionEnd"

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    .end local v2           #focusEditText:Landroid/widget/EditText;
    :cond_3
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1735
    return-void
.end method

.method public onUiChanged()V
    .locals 0

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1808
    return-void
.end method

.method protected sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1243
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getToAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 1244
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getCcAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 1245
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->getBccAddresses()[Ljava/lang/String;

    move-result-object v2

    .line 1248
    if-nez p2, :cond_0

    array-length v3, v0

    if-nez v3, :cond_0

    array-length v3, v1

    if-nez v3, :cond_0

    array-length v3, v2

    if-nez v3, :cond_0

    .line 1249
    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->showRecipientErrorDialog(Ljava/lang/String;)V

    move v0, v5

    .line 1301
    :goto_0
    return v0

    .line 1253
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1255
    invoke-direct {p0, v1, v3}, Lcom/google/android/gm/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1256
    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1259
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1260
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->showRecipientErrorDialog(Ljava/lang/String;)V

    move v0, v5

    .line 1263
    goto :goto_0

    .line 1266
    :cond_1
    new-instance v0, Lcom/google/android/gm/ComposeActivity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity$2;-><init>(Lcom/google/android/gm/ComposeActivity;Landroid/text/Spanned;ZZ)V

    .line 1272
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->showEmptyTextWarnings()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1273
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->isSubjectEmpty()Z

    move-result v1

    .line 1274
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 1278
    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->isBodyEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v2, v4

    .line 1283
    :goto_2
    if-eqz v1, :cond_5

    .line 1284
    const v1, 0x7f0d0141

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    move v0, v4

    .line 1285
    goto :goto_0

    :cond_3
    move v2, v5

    .line 1274
    goto :goto_1

    :cond_4
    move v2, v5

    .line 1278
    goto :goto_2

    .line 1288
    :cond_5
    if-eqz v2, :cond_6

    .line 1289
    const v1, 0x7f0d0142

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    move v0, v4

    .line 1290
    goto :goto_0

    .line 1294
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmation()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1295
    const v1, 0x7f0d0143

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    move v0, v4

    .line 1296
    goto :goto_0

    .line 1300
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity;->sendOrSave(Landroid/text/Spanned;ZZ)V

    move v0, v4

    .line 1301
    goto :goto_0
.end method

.method public setComposeMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 524
    packed-switch p1, :pswitch_data_0

    .line 535
    :goto_0
    return-void

    .line 526
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->switchToReply()V

    goto :goto_0

    .line 529
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->switchToReplyAll()V

    goto :goto_0

    .line 532
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->switchToForward()V

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected showEmptyTextWarnings()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method protected showSendConfirmation()Z
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/Persistence;->getConfirmSend(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updateHideOrShowCcBcc(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    .line 1839
    return-void
.end method

.method public updateUi()V
    .locals 2

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->isBlank()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->enableSave(Z)V

    .line 1719
    return-void

    .line 1718
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
