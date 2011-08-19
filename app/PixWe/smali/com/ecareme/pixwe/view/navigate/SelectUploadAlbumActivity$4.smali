.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$4;
.super Ljava/lang/Object;
.source "SelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$4;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$4;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->finish()V

    .line 229
    return-void
.end method
