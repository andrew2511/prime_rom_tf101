.class Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

.field final synthetic val$messageIdToSave:J


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;JLjava/lang/String;Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    iput-wide p2, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$messageIdToSave:J

    iput-object p4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$account:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .locals 7

    .prologue
    .line 1598
    const/4 v6, 0x0

    .line 1599
    .local v6, newDraftId:Ljava/lang/Long;
    iget-wide v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$messageIdToSave:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->access$1100(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$account:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$messageIdToSave:J

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    iget-object v4, v4, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    iget-boolean v5, v5, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mSave:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail$MessageModification;->sendOrSaveExistingMessage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/content/ContentValues;Z)V

    .line 1612
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    iget-boolean v0, v0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mSave:Z

    if-nez v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->getRecipientsList(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->incrementRecipientsTimesContacted(Ljava/util/ArrayList;)V

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->access$1200(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->sendOrSaveFinished(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V

    .line 1616
    return-void

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->access$1100(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$account:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    iget-object v2, v2, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    iget-wide v3, v3, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mRefMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    iget-boolean v5, v5, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mSave:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail$MessageModification;->sendOrSaveNewMessage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1609
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->this$0:Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->access$1200(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;->val$message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->notifyMessageIdAllocated(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;J)V

    goto :goto_0
.end method
