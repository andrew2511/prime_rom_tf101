.class final Lcom/android/phone/PhoneUtils$4;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1505
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v1, v0

    .line 1510
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1527
    :cond_0
    iget v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v3, :cond_1

    .line 1528
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1537
    :cond_1
    :goto_0
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1538
    return-void

    .line 1531
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1532
    .local v2, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_1

    .line 1533
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1534
    move-object p3, v2

    goto :goto_0
.end method
