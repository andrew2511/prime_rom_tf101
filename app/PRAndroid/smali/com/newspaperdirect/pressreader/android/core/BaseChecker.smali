.class public abstract Lcom/newspaperdirect/pressreader/android/core/BaseChecker;
.super Ljava/lang/Object;
.source "BaseChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;,
        Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mNegativeResultMessage:Ljava/lang/String;

.field protected mOnNegativeResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;

.field protected mOnPositiveResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mActivity:Landroid/app/Activity;

    .line 20
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mOnNegativeResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mOnNegativeResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;->onNegativeResult()V

    .line 37
    :cond_0
    return-void
.end method

.method public abstract check()V
.end method

.method protected ok()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mOnPositiveResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mOnPositiveResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;->onPositiveResult()V

    .line 41
    :cond_0
    return-void
.end method

.method public setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;
    .locals 0
    .parameter "listener"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mOnNegativeResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;

    .line 27
    return-object p0
.end method

.method public setNegativeResultMessage(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;
    .locals 0
    .parameter "message"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mNegativeResultMessage:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;
    .locals 0
    .parameter "listener"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->mOnPositiveResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;

    .line 23
    return-object p0
.end method
