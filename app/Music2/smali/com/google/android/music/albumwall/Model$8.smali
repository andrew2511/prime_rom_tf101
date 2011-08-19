.class Lcom/google/android/music/albumwall/Model$8;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$8;->this$0:Lcom/google/android/music/albumwall/Model;

    iput p2, p0, Lcom/google/android/music/albumwall/Model$8;->val$type:I

    iput-object p3, p0, Lcom/google/android/music/albumwall/Model$8;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object p4, p0, Lcom/google/android/music/albumwall/Model$8;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$8;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$8;->val$type:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$8;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$8;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRecycleItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    .line 1507
    return-void
.end method
