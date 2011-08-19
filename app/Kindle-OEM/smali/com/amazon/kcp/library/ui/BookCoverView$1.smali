.class Lcom/amazon/kcp/library/ui/BookCoverView$1;
.super Ljava/lang/Object;
.source "BookCoverView.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/BookCoverView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/BookCoverView;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 234
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 235
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-static {v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->access$000(Lcom/amazon/kcp/library/ui/BookCoverView;)Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-static {v2}, Lcom/amazon/kcp/library/ui/BookCoverView;->access$000(Lcom/amazon/kcp/library/ui/BookCoverView;)Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/ui/Cover;->getBookLengthPercent()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/library/ui/Cover;->setCoverImage(Landroid/graphics/drawable/Drawable;F)V

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-static {v0, p2}, Lcom/amazon/kcp/library/ui/BookCoverView;->access$102(Lcom/amazon/kcp/library/ui/BookCoverView;Z)Z

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->access$200(Lcom/amazon/kcp/library/ui/BookCoverView;)V

    .line 238
    return-void
.end method
