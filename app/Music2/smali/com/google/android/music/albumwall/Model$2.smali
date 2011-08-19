.class Lcom/google/android/music/albumwall/Model$2;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$pileIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$2;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$2;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput p3, p0, Lcom/google/android/music/albumwall/Model$2;->val$pileIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$2;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$2;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v1}, Lcom/google/android/music/albumwall/Model;->access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$2;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$2;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget v2, p0, Lcom/google/android/music/albumwall/Model$2;->val$pileIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallView;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 1027
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$2;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$2;->val$pileIndex:I

    new-instance v2, Lcom/google/android/music/albumwall/Model$2$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/albumwall/Model$2$1;-><init>(Lcom/google/android/music/albumwall/Model$2;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V

    goto :goto_0
.end method
