.class Lcom/android/emailcommon/service/EmailServiceProxy$8;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$8;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 217
    return-void
.end method
