.class Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;
.super Ljava/lang/Object;
.source "DetailsWindow.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DetailsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field mLatlng:[D

.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsWindow;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/ui/DetailsWindow;[D)V
    .locals 0
    .parameter
    .parameter "latlng"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;->mLatlng:[D

    .line 230
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v5, 0x1

    .line 233
    new-instance v0, Lcom/android/gallery3d/util/ReverseGeocoder;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$300(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;->mLatlng:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;->mLatlng:[D

    aget-wide v3, v3, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
