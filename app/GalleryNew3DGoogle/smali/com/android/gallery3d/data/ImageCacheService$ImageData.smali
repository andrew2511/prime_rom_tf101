.class public Lcom/android/gallery3d/data/ImageCacheService$ImageData;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ImageCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageData"
.end annotation


# instance fields
.field public mData:[B

.field public mOffset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mData:[B

    .line 48
    iput p2, p0, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mOffset:I

    .line 49
    return-void
.end method
