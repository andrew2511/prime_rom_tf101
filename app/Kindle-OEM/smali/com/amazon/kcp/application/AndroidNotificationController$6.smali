.class Lcom/amazon/kcp/application/AndroidNotificationController$6;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;


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
    .line 290
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$6;->this$0:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "index"
    .parameter "book"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$6;->this$0:Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-static {v0, p2}, Lcom/amazon/kcp/application/AndroidNotificationController;->access$500(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 295
    return-void
.end method
