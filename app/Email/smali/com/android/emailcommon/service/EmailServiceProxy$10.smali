.class Lcom/android/emailcommon/service/EmailServiceProxy$10;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->sendMeetingResponse(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$messageId:J

.field final synthetic val$response:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->val$messageId:J

    iput p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->val$response:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->val$messageId:J

    iget v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$10;->val$response:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V

    .line 235
    return-void
.end method
