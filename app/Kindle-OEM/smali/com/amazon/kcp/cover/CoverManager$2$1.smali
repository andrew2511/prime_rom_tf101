.class Lcom/amazon/kcp/cover/CoverManager$2$1;
.super Ljava/lang/Object;
.source "CoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CoverManager$2;->onUpdate(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/cover/CoverManager$2;

.field final synthetic val$newImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CoverManager$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverManager$2$1;->this$1:Lcom/amazon/kcp/cover/CoverManager$2;

    iput-object p2, p0, Lcom/amazon/kcp/cover/CoverManager$2$1;->val$newImage:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager$2$1;->this$1:Lcom/amazon/kcp/cover/CoverManager$2;

    iget-object v0, v0, Lcom/amazon/kcp/cover/CoverManager$2;->this$0:Lcom/amazon/kcp/cover/CoverManager;

    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverManager$2$1;->this$1:Lcom/amazon/kcp/cover/CoverManager$2;

    iget-object v1, v1, Lcom/amazon/kcp/cover/CoverManager$2;->val$coverToUpdate:Lcom/amazon/kcp/cover/UpdatableCover;

    iget-object v2, p0, Lcom/amazon/kcp/cover/CoverManager$2$1;->val$newImage:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/cover/CoverManager;->access$000(Lcom/amazon/kcp/cover/CoverManager;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/Bitmap;)V

    .line 411
    return-void
.end method
