.class Lcom/android/email/MessagingController$4;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 797
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    .line 793
    return-void
.end method
