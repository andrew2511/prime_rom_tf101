.class Lcom/google/android/music/albumwall/AlbumWallView$3;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-boolean p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$3;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$3;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setLabelsVisible(Z)V

    .line 168
    return-void
.end method
