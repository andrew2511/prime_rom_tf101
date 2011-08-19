.class Lcom/google/android/music/albumwall/AlbumWallView$6;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$pileIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$pileIndex:I

    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$pileIndex:I

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 273
    return-void
.end method
