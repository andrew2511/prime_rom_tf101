.class public final Lcom/google/android/youtube/core/model/Subtitle$Builder;
.super Ljava/lang/Object;
.source "Subtitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Subtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private subtitle:Lcom/google/android/youtube/core/model/Subtitle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/google/android/youtube/core/model/Subtitle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/Subtitle;-><init>(Lcom/google/android/youtube/core/model/Subtitle$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    .line 63
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/String;II)Lcom/google/android/youtube/core/model/Subtitle$Builder;
    .locals 2
    .parameter "text"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Subtitle;->access$100(Lcom/google/android/youtube/core/model/Subtitle;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/model/Subtitle$Line;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/youtube/core/model/Subtitle$Line;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Subtitle;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    .line 78
    .local v0, value:Lcom/google/android/youtube/core/model/Subtitle;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Subtitle$Builder;->subtitle:Lcom/google/android/youtube/core/model/Subtitle;

    .line 79
    return-object v0
.end method
