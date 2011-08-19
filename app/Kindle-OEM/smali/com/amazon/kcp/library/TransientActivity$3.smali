.class Lcom/amazon/kcp/library/TransientActivity$3;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/TransientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 4
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$200(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/TransientActivity;->access$300(Lcom/amazon/kcp/library/TransientActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v3}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/TransientActivity;->access$202(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$200(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$500(Lcom/amazon/kcp/library/TransientActivity;)V

    .line 129
    :cond_0
    return-void
.end method
