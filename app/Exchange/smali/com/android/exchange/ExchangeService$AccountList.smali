.class Lcom/android/exchange/ExchangeService$AccountList;
.super Ljava/util/ArrayList;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(J)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 507
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 508
    const/4 v2, 0x1

    .line 511
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getById(J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 4
    .parameter "id"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 516
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    move-object v2, v0

    .line 520
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
