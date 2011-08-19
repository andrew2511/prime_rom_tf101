.class Lcom/amazon/kcp/library/TransientActivity$1;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDownloadBookItemCallback;


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
    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$1;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "book"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$1;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$000(Lcom/amazon/kcp/library/TransientActivity;)V

    .line 101
    return-void
.end method
