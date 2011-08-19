.class Lcom/android/email/Controller$5;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->sendPendingMessagesSmtp(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$sentboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$5;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/Controller$5;->val$sentboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$5;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/Controller$5;->val$sentboxId:J

    iget-object v4, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V

    .line 566
    return-void
.end method
