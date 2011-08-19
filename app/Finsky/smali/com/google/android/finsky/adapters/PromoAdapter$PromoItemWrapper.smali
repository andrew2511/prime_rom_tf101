.class Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
.super Ljava/lang/Object;
.source "PromoAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/PromoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromoItemWrapper"
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mLogoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

.field private mPromoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

.field final synthetic this$0:Lcom/google/android/finsky/adapters/PromoAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/adapters/PromoAdapter;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6
    .parameter
    .parameter "document"

    .prologue
    const/4 v2, 0x0

    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->this$0:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 47
    invoke-static {p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->access$200(Lcom/google/android/finsky/adapters/PromoAdapter;)Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->access$000(Lcom/google/android/finsky/adapters/PromoAdapter;)I

    move-result v4

    invoke-static {p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->access$100(Lcom/google/android/finsky/adapters/PromoAdapter;)I

    move-result v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mLogoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 50
    invoke-static {p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->access$200(Lcom/google/android/finsky/adapters/PromoAdapter;)Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->access$300(Lcom/google/android/finsky/adapters/PromoAdapter;)I

    move-result v4

    invoke-static {p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->access$400(Lcom/google/android/finsky/adapters/PromoAdapter;)I

    move-result v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mPromoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 53
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mLogoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mPromoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 58
    iput-object v1, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mLogoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 59
    iput-object v1, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mPromoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 60
    return-void
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getLogoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mLogoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPromoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mPromoContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->this$0:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-static {v0}, Lcom/google/android/finsky/adapters/PromoAdapter;->access$500(Lcom/google/android/finsky/adapters/PromoAdapter;)Lcom/google/android/finsky/adapters/ArrayObserver;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mCurrentPosition:I

    invoke-interface {v0, v1}, Lcom/google/android/finsky/adapters/ArrayObserver;->onItemChanged(I)V

    .line 81
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .parameter "newPosition"

    .prologue
    .line 75
    iput p1, p0, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->mCurrentPosition:I

    .line 76
    return-void
.end method
