.class Lcom/android/email/ControllerResultUiThreadWrapper$1;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$messageId:J

.field final synthetic val$progress:I

.field final synthetic val$result:Lcom/android/emailcommon/mail/MessagingException;


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$1;,"Lcom/android/email/ControllerResultUiThreadWrapper.1;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$result:Lcom/android/emailcommon/mail/MessagingException;

    iput-wide p3, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$accountId:J

    iput-wide p5, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$messageId:J

    iput-wide p7, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$attachmentId:J

    iput p9, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 67
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$1;,"Lcom/android/email/ControllerResultUiThreadWrapper.1;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$result:Lcom/android/emailcommon/mail/MessagingException;

    iget-wide v2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$accountId:J

    iget-wide v4, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$messageId:J

    iget-wide v6, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$attachmentId:J

    iget v8, p0, Lcom/android/email/ControllerResultUiThreadWrapper$1;->val$progress:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0
.end method
