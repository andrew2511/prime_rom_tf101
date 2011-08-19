.class public Lcom/android/vending/BaseActivity$SnippetInitializer;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SnippetInitializer"
.end annotation


# instance fields
.field private mAssetService:Lcom/android/vending/api/AssetService;

.field private mHeaderAdapter:Lcom/android/vending/AssetItemAdapter;

.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/AssetItemAdapter;Lcom/android/vending/api/AssetService;)V
    .locals 1
    .parameter
    .parameter "adapter"
    .parameter "service"

    .prologue
    .line 2174
    iput-object p1, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2175
    iput-object p2, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->mHeaderAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 2176
    iput-object p3, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 2178
    invoke-virtual {p2, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 2179
    sget-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {p2, v0}, Lcom/android/vending/AssetItemAdapter;->setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V

    .line 2180
    new-instance v0, Lcom/android/vending/BaseActivity$SnippetInitializer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/BaseActivity$SnippetInitializer$1;-><init>(Lcom/android/vending/BaseActivity$SnippetInitializer;Lcom/android/vending/BaseActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2189
    return-void
.end method


# virtual methods
.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 4
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 2199
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v2, :cond_0

    .line 2200
    iget-object v2, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->this$0:Lcom/android/vending/BaseActivity;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2201
    .local v1, thumbnailView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 2202
    iget-object v2, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->mHeaderAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 2203
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2204
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 2207
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #thumbnailView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public sendRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 2210
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 2211
    .local v0, assetReq:Lcom/android/vending/model/AssetRequest;
    invoke-virtual {v0, p1}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 2212
    iget-object v1, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->mHeaderAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 2213
    return-void
.end method

.method public updateSnippet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2192
    iget-object v2, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->this$0:Lcom/android/vending/BaseActivity;

    const v3, 0x7f08003b

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2193
    .local v0, appInfoView:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/vending/BaseActivity$SnippetInitializer;->mHeaderAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2194
    .local v1, snippetView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2195
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2196
    return-void
.end method
