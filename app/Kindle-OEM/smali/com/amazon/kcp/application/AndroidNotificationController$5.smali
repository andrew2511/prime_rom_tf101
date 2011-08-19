.class Lcom/amazon/kcp/application/AndroidNotificationController$5;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDownloadBookItemCallback;


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
    .line 275
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$5;->this$0:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter

    .prologue
    .line 279
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 280
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 282
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$5;->this$0:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-static {v1, p1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->access$400(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V

    .line 286
    return-void
.end method
