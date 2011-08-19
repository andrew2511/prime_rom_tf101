.class Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 0
    .parameter "indexHint"

    .prologue
    .line 579
    return p1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
