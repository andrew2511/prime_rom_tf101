.class Lcom/amazon/kcp/ui/SyncMessageView$1;
.super Ljava/lang/Object;
.source "SyncMessageView.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/ui/SyncMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/SyncMessageView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/SyncMessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/ui/SyncMessageView$1;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$1;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/ui/SyncMessageView;->access$000(Lcom/amazon/kcp/ui/SyncMessageView;Z)V

    .line 122
    return-void
.end method
