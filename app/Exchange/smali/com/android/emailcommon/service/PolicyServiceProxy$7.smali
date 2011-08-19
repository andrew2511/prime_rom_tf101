.class Lcom/android/emailcommon/service/PolicyServiceProxy$7;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:J

.field final synthetic val$arg1:Z


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;->val$arg0:J

    iput-boolean p4, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;->val$arg1:Z

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
    .line 148
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;->val$arg0:J

    iget-boolean v3, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;->val$arg1:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IPolicyService;->setAccountHoldFlag(JZ)V

    .line 149
    return-void
.end method
