.class Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;
.super Ljava/lang/Object;
.source "CoverGalleryLayout.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->makeCoverGalleryBookView(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

.field final synthetic val$addCloud:Z

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;ZLandroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;->val$addCloud:Z

    iput-object p3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "newImage"
    .parameter "isDefaultCover"

    .prologue
    .line 90
    iget-boolean v2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;->val$addCloud:Z

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-static {v2, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->access$000(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 95
    :cond_0
    const/high16 v2, 0x3e80

    invoke-static {p1, v2}, Lcom/amazon/android/util/UIUtils;->createReflectedImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    .local v1, finalBitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 101
    return-void
.end method
