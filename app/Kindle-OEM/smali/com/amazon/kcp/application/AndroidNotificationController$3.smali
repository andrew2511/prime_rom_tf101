.class Lcom/amazon/kcp/application/AndroidNotificationController$3;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AndroidNotificationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$3;->this$0:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$3;->this$0:Lcom/amazon/kcp/application/AndroidNotificationController;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$3;->this$0:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-static {v1}, Lcom/amazon/kcp/application/AndroidNotificationController;->access$000(Lcom/amazon/kcp/application/AndroidNotificationController;)Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController;->access$300(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 262
    return-void
.end method
