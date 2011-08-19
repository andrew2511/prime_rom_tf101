.class Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
.super Ljava/lang/Object;
.source "TOCView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/TOCView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderTask"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

.field private mParentView:Landroid/view/View;

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/TOCView;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;Lcom/newspaperdirect/pressreader/android/core/layout/Page;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "page"
    .parameter "imageView"
    .parameter "parentView"

    .prologue
    .line 561
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 559
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->mImageView:Landroid/widget/ImageView;

    .line 560
    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->mParentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-object v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->mParentView:Landroid/view/View;

    return-object v0
.end method
