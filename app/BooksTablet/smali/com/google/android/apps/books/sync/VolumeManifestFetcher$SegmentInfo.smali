.class Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
.super Ljava/lang/Object;
.source "VolumeManifestFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/VolumeManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentInfo"
.end annotation


# instance fields
.field public builder:Landroid/content/ContentProviderOperation$Builder;

.field public isForbidden:Z

.field public segmentId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;-><init>()V

    return-void
.end method
