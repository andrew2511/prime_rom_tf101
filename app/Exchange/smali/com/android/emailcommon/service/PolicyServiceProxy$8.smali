.class Lcom/android/emailcommon/service/PolicyServiceProxy$8;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->updatePolicies(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$8;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$8;->val$arg0:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$8;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$8;->val$arg0:J

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/service/IPolicyService;->updatePolicies(J)V

    .line 158
    return-void
.end method
