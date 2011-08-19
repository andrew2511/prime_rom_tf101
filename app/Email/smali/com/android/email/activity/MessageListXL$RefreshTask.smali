.class Lcom/android/email/activity/MessageListXL$RefreshTask;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field mInboxId:J

.field private final mMailboxId:J

.field private final mRefreshManager:Lcom/android/email/RefreshManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 807
    sget-object v6, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-static {p1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/MessageListXL$RefreshTask;-><init>(Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;)V

    .line 809
    return-void
.end method

.method constructor <init>(Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "clock"
    .parameter "refreshManager"

    .prologue
    .line 812
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 813
    iput-object p6, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mClock:Lcom/android/email/Clock;

    .line 814
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    .line 815
    iput-object p7, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 816
    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    .line 817
    iput-wide p4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    .line 818
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    .line 826
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isRefreshable(Landroid/content/Context;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 798
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "isCurrentMailboxRefreshable"

    .prologue
    const/4 v5, 0x0

    .line 834
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 841
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 842
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshTask;->shouldRefreshMailboxList()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    .line 847
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshTask;->shouldAutoRefreshInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 798
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method shouldAutoRefreshInbox()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 873
    iget-wide v2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v2, v6

    .line 884
    :goto_0
    return v2

    .line 876
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    .line 877
    goto :goto_0

    .line 879
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/RefreshManager;->getLastMessageListRefreshTime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v0, v2, v4

    .line 881
    .local v0, nextRefreshTime:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v2}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    move v2, v6

    .line 882
    goto :goto_0

    .line 884
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method shouldRefreshMailboxList()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 857
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/RefreshManager;->isMailboxListRefreshing(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    .line 865
    :goto_0
    return v2

    .line 860
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/RefreshManager;->getLastMailboxListRefreshTime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 862
    .local v0, nextRefreshTime:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v2}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    move v2, v6

    .line 863
    goto :goto_0

    .line 865
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
