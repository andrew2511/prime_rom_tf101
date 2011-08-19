.class Lcom/amazon/kcp/library/ui/DeleteBookRowView$1;
.super Ljava/lang/Object;
.source "DeleteBookRowView.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/DeleteBookRowView;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/DeleteBookRowView;

.field final synthetic val$bookLengthPercent:F


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/DeleteBookRowView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView$1;->this$0:Lcom/amazon/kcp/library/ui/DeleteBookRowView;

    iput p2, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView$1;->val$bookLengthPercent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "newImage"
    .parameter "isDefaultCover"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView$1;->this$0:Lcom/amazon/kcp/library/ui/DeleteBookRowView;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView$1;->val$bookLengthPercent:F

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverImage(Landroid/graphics/Bitmap;ZF)V

    .line 118
    return-void
.end method
