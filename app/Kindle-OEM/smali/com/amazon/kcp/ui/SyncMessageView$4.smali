.class Lcom/amazon/kcp/ui/SyncMessageView$4;
.super Ljava/lang/Object;
.source "SyncMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/SyncMessageView;->hideMessageAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/SyncMessageView;

.field final synthetic val$validSyncId:J


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/SyncMessageView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    iput-wide p2, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->val$validSyncId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-static {v0}, Lcom/amazon/kcp/ui/SyncMessageView;->access$400(Lcom/amazon/kcp/ui/SyncMessageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-static {v0}, Lcom/amazon/kcp/ui/SyncMessageView;->access$500(Lcom/amazon/kcp/ui/SyncMessageView;)Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-static {v0}, Lcom/amazon/kcp/ui/SyncMessageView;->access$200(Lcom/amazon/kcp/ui/SyncMessageView;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->val$validSyncId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-static {v0}, Lcom/amazon/kcp/ui/SyncMessageView;->access$500(Lcom/amazon/kcp/ui/SyncMessageView;)Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;->onHideSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;)V

    .line 375
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$4;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/ui/SyncMessageView;->access$402(Lcom/amazon/kcp/ui/SyncMessageView;Z)Z

    .line 377
    :cond_0
    return-void
.end method
