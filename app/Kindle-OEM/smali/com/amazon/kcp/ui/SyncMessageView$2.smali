.class Lcom/amazon/kcp/ui/SyncMessageView$2;
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
    .line 125
    iput-object p1, p0, Lcom/amazon/kcp/ui/SyncMessageView$2;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView$2;->this$0:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-static {v0}, Lcom/amazon/kcp/ui/SyncMessageView;->access$100(Lcom/amazon/kcp/ui/SyncMessageView;)V

    .line 129
    return-void
.end method
