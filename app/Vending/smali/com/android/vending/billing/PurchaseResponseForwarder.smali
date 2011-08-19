.class public Lcom/android/vending/billing/PurchaseResponseForwarder;
.super Ljava/lang/Object;
.source "PurchaseResponseForwarder.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;
.implements Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;
.implements Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;
.implements Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;


# static fields
.field private static sClassToInstance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/billing/PurchaseResponseForwarder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field final mHandler:Landroid/os/Handler;

.field private mImagesLoadedListener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

.field private mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

.field private final mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

.field private mPurchaseOrderCarrierBillingListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

.field private mPurchaseOrderListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

.field private final mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

.field private mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/billing/PurchaseResponseForwarder;->sClassToInstance:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/android/vending/BaseActivity;Landroid/os/Handler;Lcom/android/vending/api/RequestManager;)V
    .locals 3
    .parameter "activity"
    .parameter "handler"
    .parameter "requestManager"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v1, Lcom/android/vending/billing/PurchasePostAction;

    invoke-direct {v1, p1, p3}, Lcom/android/vending/billing/PurchasePostAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    iput-object v1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    .line 81
    new-instance v1, Lcom/android/vending/billing/PurchaseOrderAction;

    invoke-direct {v1, p1, p3}, Lcom/android/vending/billing/PurchaseOrderAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    iput-object v1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

    .line 82
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/vending/VendingApplication;

    .line 83
    .local v0, app:Lcom/android/vending/VendingApplication;
    new-instance v1, Lcom/android/vending/AssetItemAdapter;

    iget-object v2, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 84
    iget-object v1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 85
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lcom/android/vending/BaseActivity;Landroid/os/Handler;Lcom/android/vending/api/RequestManager;)Lcom/android/vending/billing/PurchaseResponseForwarder;
    .locals 3
    .parameter "assetId"
    .parameter "activity"
    .parameter "handler"
    .parameter "requestManager"

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/vending/BaseActivity;>;"
    sget-object v2, Lcom/android/vending/billing/PurchaseResponseForwarder;->sClassToInstance:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/billing/PurchaseResponseForwarder;

    .line 96
    .local v1, forwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;
    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/android/vending/billing/PurchaseResponseForwarder;

    .end local v1           #forwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;
    invoke-direct {v1, p1, p2, p3}, Lcom/android/vending/billing/PurchaseResponseForwarder;-><init>(Lcom/android/vending/BaseActivity;Landroid/os/Handler;Lcom/android/vending/api/RequestManager;)V

    .line 99
    .restart local v1       #forwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;
    sget-object v2, Lcom/android/vending/billing/PurchaseResponseForwarder;->sClassToInstance:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return-object v1
.end method

.method public static removeInstance(Ljava/lang/String;)V
    .locals 1
    .parameter "assetId"

    .prologue
    .line 108
    sget-object v0, Lcom/android/vending/billing/PurchaseResponseForwarder;->sClassToInstance:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method public getAssetAdapter()Lcom/android/vending/AssetItemAdapter;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    return-object v0
.end method

.method public getPurchaseInfo()Lcom/android/vending/model/PurchaseInfo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    return-object v0
.end method

.method public getPurchaseOrderAction()Lcom/android/vending/billing/PurchaseOrderAction;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

    return-object v0
.end method

.method public getPurchasePostAction()Lcom/android/vending/billing/PurchasePostAction;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    return-object v0
.end method

.method public onAssetLoaded()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onAssetLoaded()V

    .line 206
    :cond_0
    return-void
.end method

.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 265
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 1
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mImagesLoadedListener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mImagesLoadedListener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;->onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 271
    :cond_0
    return-void
.end method

.method public onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V
    .locals 1
    .parameter "response"
    .parameter "usage"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;)V
    .locals 1
    .parameter "purchaseResponse"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    invoke-interface {v0, p1}, Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;->onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;Lcom/android/vending/model/CarrierCredentialsResponse;)V
    .locals 1
    .parameter "purchaseResponse"
    .parameter "carrierCredentialsResponse"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderCarrierBillingListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderCarrierBillingListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    invoke-interface {v0, p1, p2}, Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;->onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;Lcom/android/vending/model/CarrierCredentialsResponse;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0, p1}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    .line 220
    :cond_0
    return-void
.end method

.method public onPurchaseMetadataResponse(Lcom/android/vending/model/PurchaseMetadataResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0, p1}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchaseMetadataResponse(Lcom/android/vending/model/PurchaseMetadataResponse;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onPurchasePostError()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchasePostError()V

    .line 241
    :cond_0
    return-void
.end method

.method public onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0, p1}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V

    .line 227
    :cond_0
    return-void
.end method

.method public registerImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mImagesLoadedListener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

    .line 161
    return-void
.end method

.method public registerOrderCarrierBillingListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderCarrierBillingListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    .line 157
    return-void
.end method

.method public registerOrderListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    .line 147
    return-void
.end method

.method public registerPostListener(Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    .line 138
    return-void
.end method

.method public setPurchaseInfo(Lcom/android/vending/model/PurchaseInfo;)V
    .locals 0
    .parameter "purchaseInfo"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    .line 125
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchasePostListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    .line 168
    iput-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    .line 169
    iput-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mPurchaseOrderCarrierBillingListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    .line 170
    iput-object v0, p0, Lcom/android/vending/billing/PurchaseResponseForwarder;->mImagesLoadedListener:Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

    .line 171
    return-void
.end method
