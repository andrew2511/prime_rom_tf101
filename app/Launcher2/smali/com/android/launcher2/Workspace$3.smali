.class Lcom/android/launcher2/Workspace$3;
.super Ljava/lang/Thread;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->setWallpaperDimension()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    iget v1, v1, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    iget-object v2, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    iget v2, v2, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 744
    return-void
.end method
