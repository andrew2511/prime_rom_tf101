.class Lcom/google/android/music/medialist/MediaList$QueryParams;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryParams"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mFilter:Ljava/lang/String;

.field mProjection:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "projection"
    .parameter "filter"

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/google/android/music/medialist/MediaList$QueryParams;->mContext:Landroid/content/Context;

    .line 355
    iput-object p2, p0, Lcom/google/android/music/medialist/MediaList$QueryParams;->mProjection:[Ljava/lang/String;

    .line 356
    iput-object p3, p0, Lcom/google/android/music/medialist/MediaList$QueryParams;->mFilter:Ljava/lang/String;

    .line 357
    return-void
.end method
