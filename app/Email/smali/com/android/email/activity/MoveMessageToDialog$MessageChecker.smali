.class Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;
.super Landroid/content/AsyncTaskLoader;
.source "MoveMessageToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMessageIds:[J


# direct methods
.method public constructor <init>(Landroid/app/Activity;[J)V
    .locals 0
    .parameter "activity"
    .parameter "messageIds"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    .line 224
    iput-object p2, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mMessageIds:[J

    .line 225
    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Long;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    .line 229
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 231
    .local v3, c:Landroid/content/Context;
    const-wide/16 v0, -0x1

    .line 233
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mMessageIds:[J

    .local v2, arr$:[J
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-wide v7, v2, v4

    .line 235
    .local v7, messageId:J
    invoke-static {v3, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 236
    .local v6, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_1

    .line 233
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    :cond_1
    cmp-long v9, v0, v11

    if-nez v9, :cond_2

    .line 243
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 244
    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->supportsMoveMessages(Landroid/content/Context;J)Z

    move-result v9

    if-nez v9, :cond_3

    .line 245
    iget-object v9, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v10, 0x7f080048

    invoke-static {v9, v10}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 247
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 265
    .end local v6           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #messageId:J
    :goto_1
    return-object v9

    .line 251
    .restart local v6       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v7       #messageId:J
    :cond_2
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    cmp-long v9, v9, v0

    if-eqz v9, :cond_3

    .line 252
    iget-object v9, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v10, 0x7f080049

    invoke-static {v9, v10}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 253
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1

    .line 257
    :cond_3
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v3, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 258
    iget-object v9, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v10, 0x7f08004a

    invoke-static {v9, v10}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 259
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1

    .line 265
    .end local v6           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #messageId:J
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->loadInBackground()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->stopLoading()V

    .line 282
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->cancelLoad()Z

    .line 271
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->forceLoad()V

    .line 272
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->cancelLoad()Z

    .line 277
    return-void
.end method
