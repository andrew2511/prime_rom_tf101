.class Lcom/android/gallery3d/app/AlbumPage$7;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->showDetails()V
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
    .line 406
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$7;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$7;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)V

    .line 409
    return-void
.end method
