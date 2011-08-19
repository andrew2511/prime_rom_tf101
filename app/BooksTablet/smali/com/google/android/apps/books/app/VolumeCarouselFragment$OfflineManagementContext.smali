.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfflineManagementContext"
.end annotation


# instance fields
.field mTotalBytes:Ljava/lang/Long;

.field mUpdatedPinnedStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mUsedBytes:Ljava/lang/Long;

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    return-void
.end method
