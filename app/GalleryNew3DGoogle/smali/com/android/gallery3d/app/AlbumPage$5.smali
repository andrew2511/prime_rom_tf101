.class Lcom/android/gallery3d/app/AlbumPage$5;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onLongTap(I)V

    .line 379
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    .line 375
    return-void
.end method
