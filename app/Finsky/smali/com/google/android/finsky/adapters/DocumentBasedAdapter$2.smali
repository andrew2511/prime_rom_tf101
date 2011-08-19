.class Lcom/google/android/finsky/adapters/DocumentBasedAdapter$2;
.super Ljava/lang/Object;
.source "DocumentBasedAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/DocumentBasedAdapter;

.field final synthetic val$safeView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/DocumentBasedAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$2;->this$0:Lcom/google/android/finsky/adapters/DocumentBasedAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$2;->val$safeView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$2;->val$safeView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 139
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$2;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
