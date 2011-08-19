.class Lcom/amazon/kcp/cover/CoverManager$2;
.super Ljava/lang/Object;
.source "CoverManager.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CoverManager;->enqueueForDownload(Lcom/amazon/kcp/cover/UpdatableCover;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/CoverManager;

.field final synthetic val$coverToUpdate:Lcom/amazon/kcp/cover/UpdatableCover;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CoverManager;Lcom/amazon/kcp/cover/UpdatableCover;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverManager$2;->this$0:Lcom/amazon/kcp/cover/CoverManager;

    iput-object p2, p0, Lcom/amazon/kcp/cover/CoverManager$2;->val$coverToUpdate:Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "newImage"
    .parameter "isDefaultCover"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager$2;->this$0:Lcom/amazon/kcp/cover/CoverManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverManager;->access$100(Lcom/amazon/kcp/cover/CoverManager;)Lcom/amazon/system/Utilities;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/cover/CoverManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/cover/CoverManager$2$1;-><init>(Lcom/amazon/kcp/cover/CoverManager$2;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/amazon/system/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method
