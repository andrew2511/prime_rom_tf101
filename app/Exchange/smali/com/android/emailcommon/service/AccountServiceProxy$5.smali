.class Lcom/android/emailcommon/service/AccountServiceProxy$5;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->restoreAccountsIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$5;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$5;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-static {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/IAccountService;->restoreAccountsIfNeeded()V

    .line 88
    return-void
.end method
