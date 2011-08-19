.class Lcom/google/android/music/albumwall/Model$6;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$expanded:Z

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$6;->this$0:Lcom/google/android/music/albumwall/Model;

    iput p2, p0, Lcom/google/android/music/albumwall/Model$6;->val$type:I

    iput-object p3, p0, Lcom/google/android/music/albumwall/Model$6;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p4, p0, Lcom/google/android/music/albumwall/Model$6;->val$expanded:Z

    iput-object p5, p0, Lcom/google/android/music/albumwall/Model$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$6;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$6;->val$type:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$6;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/Model$6;->val$expanded:Z

    iget-object v4, p0, Lcom/google/android/music/albumwall/Model$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRecyclePileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    .line 1345
    return-void
.end method
