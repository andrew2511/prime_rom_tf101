.class public Lcom/android/vending/ParentalControlChecker;
.super Ljava/lang/Object;
.source "ParentalControlChecker.java"

# interfaces
.implements Lcom/android/vending/ChainAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/ParentalControlChecker$PcResultHandler;,
        Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;,
        Lcom/android/vending/ParentalControlChecker$CheckerThread;
    }
.end annotation


# static fields
.field private static sAlreadyChecked:Z


# instance fields
.field private mBaseActivity:Lcom/android/vending/BaseActivity;

.field private mNextAction:Lcom/android/vending/ChainAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker;->mBaseActivity:Lcom/android/vending/BaseActivity;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-boolean p0, Lcom/android/vending/ParentalControlChecker;->sAlreadyChecked:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/vending/ParentalControlChecker;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/vending/ParentalControlChecker;->runNextAction(Lcom/android/vending/BaseActivity;)V

    return-void
.end method

.method private runNextAction(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker;->mNextAction:Lcom/android/vending/ChainAction;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker;->mNextAction:Lcom/android/vending/ChainAction;

    invoke-interface {v0, p1}, Lcom/android/vending/ChainAction;->runAction(Lcom/android/vending/BaseActivity;)V

    .line 65
    :cond_0
    return-void
.end method

.method private shouldWaitForCheck(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-static {p1}, Lcom/google/android/common/ParentalControl;->getLastCheckTimeMillis(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/common/ParentalControl;->getLastCheckState(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public runAction(Lcom/android/vending/BaseActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/vending/ParentalControlChecker;->sAlreadyChecked:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/vending/ParentalControlChecker;->runNextAction(Lcom/android/vending/BaseActivity;)V

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/android/vending/ParentalControlChecker;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/vending/ParentalControlChecker;->shouldWaitForCheck(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/android/vending/ParentalControlChecker$CheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vending/ParentalControlChecker$CheckerThread;-><init>(Lcom/android/vending/ParentalControlChecker;Z)V

    invoke-virtual {v0}, Lcom/android/vending/ParentalControlChecker$CheckerThread;->start()V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/vending/ParentalControlChecker;->runNextAction(Lcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->showIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V

    .line 54
    new-instance v0, Lcom/android/vending/ParentalControlChecker$CheckerThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/vending/ParentalControlChecker$CheckerThread;-><init>(Lcom/android/vending/ParentalControlChecker;Z)V

    invoke-virtual {v0}, Lcom/android/vending/ParentalControlChecker$CheckerThread;->start()V

    goto :goto_0
.end method

.method public setNext(Lcom/android/vending/ChainAction;)V
    .locals 0
    .parameter "nextAction"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/vending/ParentalControlChecker;->mNextAction:Lcom/android/vending/ChainAction;

    .line 59
    return-void
.end method
