.class Lcom/google/android/music/albumwall/AlbumWallView$8;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$expanded:Z

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$n:I

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$expanded:Z

    iput p5, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$n:I

    iput-object p6, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$expanded:Z

    iget v4, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$n:I

    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 288
    return-void
.end method
