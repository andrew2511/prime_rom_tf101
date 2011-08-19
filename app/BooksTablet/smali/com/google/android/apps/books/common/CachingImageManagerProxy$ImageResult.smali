.class Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
.super Ljava/lang/Object;
.source "CachingImageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/common/CachingImageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageResult"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public exception:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;-><init>()V

    return-void
.end method
