.class public final Lcom/google/android/youtube/core/model/Stream$Builder;
.super Ljava/lang/Object;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field private sizeInBytes:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Stream;
    .locals 5

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-wide v3, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;J)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    goto :goto_0
.end method

.method public quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0
    .parameter "quality"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 96
    return-object p0
.end method

.method public sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0
    .parameter "sizeInBytes"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    .line 101
    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    .line 91
    return-object p0
.end method
