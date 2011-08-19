.class Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$isForward:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-boolean p3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$isForward:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 3
    .parameter "messageIds"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 689
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 9
    .parameter "attachments"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 697
    if-nez p1, :cond_1

    .line 718
    :cond_0
    return-void

    .line 700
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    move v5, v8

    .line 703
    .local v5, supportsSmartForward:Z
    :goto_0
    move-object v1, p1

    .local v1, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 704
    .local v2, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$isForward:Z

    if-eqz v6, :cond_2

    .line 705
    iget v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 714
    :cond_2
    iget v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v6, v6, 0x100

    if-nez v6, :cond_4

    move v0, v8

    .line 716
    .local v0, allowDelete:Z
    :goto_2
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v2, v0}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #allowDelete:Z
    .end local v1           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #supportsSmartForward:Z
    :cond_3
    move v5, v7

    .line 700
    goto :goto_0

    .restart local v1       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #supportsSmartForward:Z
    :cond_4
    move v0, v7

    .line 714
    goto :goto_2
.end method
