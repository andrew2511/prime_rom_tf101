.class Lcom/android/email/RefreshManager$SendPendingMessagesForAllAccountsImpl;
.super Lcom/android/emailcommon/utility/Utility$ForEachAccount;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendPendingMessagesForAllAccountsImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/RefreshManager;


# direct methods
.method public constructor <init>(Lcom/android/email/RefreshManager;)V
    .locals 1
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/email/RefreshManager$SendPendingMessagesForAllAccountsImpl;->this$0:Lcom/android/email/RefreshManager;

    .line 292
    invoke-static {p1}, Lcom/android/email/RefreshManager;->access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/Utility$ForEachAccount;-><init>(Landroid/content/Context;)V

    .line 293
    return-void
.end method


# virtual methods
.method protected performAction(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/email/RefreshManager$SendPendingMessagesForAllAccountsImpl;->this$0:Lcom/android/email/RefreshManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/RefreshManager;->sendPendingMessages(J)Z

    .line 298
    return-void
.end method
