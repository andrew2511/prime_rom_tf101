.class Lcom/amazon/kcp/ui/SyncMessageView$3;
.super Ljava/lang/Object;
.source "SyncMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/SyncMessageView;->syncFinished()V
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
    .line 331
    iput-object p1, p0, Lcom/amazon/kcp/ui/SyncMessageView$3;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    iput-wide p2, p0, Lcom/amazon/kcp/ui/SyncMessageView$3;->val$validSyncId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$3;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-static {v0}, Lcom/amazon/kcp/ui/SyncMessageView;->access$200(Lcom/amazon/kcp/ui/SyncMessageView;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/ui/SyncMessageView$3;->val$validSyncId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$3;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/ui/SyncMessageView;->access$302(Lcom/amazon/kcp/ui/SyncMessageView;Lcom/amazon/kcp/application/sync/internal/SyncType;)Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 339
    :cond_0
    return-void
.end method
