.class Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentsTask"
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
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1115
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 3
    .parameter "messageIds"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v0

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
    .line 1115
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 12
    .parameter "attachments"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1124
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    if-nez p1, :cond_1

    .line 1151
    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v8, v11, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2100(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    .line 1153
    :goto_0
    return-void

    .line 1127
    :cond_1
    const/4 v3, 0x0

    .line 1128
    .local v3, htmlChanged:Z
    const/4 v6, 0x0

    .line 1129
    .local v6, numDisplayedAttachments:I
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_1
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 1130
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\E\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1136
    .local v2, contentIdRe:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " src=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1137
    .local v7, srcContentUri:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1602(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 1138
    const/4 v3, 0x1

    .line 1129
    .end local v2           #contentIdRe:Ljava/lang/String;
    .end local v7           #srcContentUri:Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1140
    :cond_2
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v8, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1141
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1144
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v8, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;I)V

    .line 1145
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1902(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1602(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    if-eqz v3, :cond_4

    .line 1148
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1900(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2000(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    :cond_4
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v8, v11, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2100(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    goto/16 :goto_0

    .end local v0           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #htmlChanged:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #numDisplayedAttachments:I
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v9, v11, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2100(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    throw v8
.end method
