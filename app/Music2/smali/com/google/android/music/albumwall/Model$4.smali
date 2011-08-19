.class Lcom/google/android/music/albumwall/Model$4;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$expanded:Z

.field final synthetic val$n:I

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$4;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$4;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput-object p3, p0, Lcom/google/android/music/albumwall/Model$4;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p4, p0, Lcom/google/android/music/albumwall/Model$4;->val$expanded:Z

    iput p5, p0, Lcom/google/android/music/albumwall/Model$4;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$4;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$4;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v1}, Lcom/google/android/music/albumwall/Model;->access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$4;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$4;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$4;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/Model$4;->val$expanded:Z

    iget v4, p0, Lcom/google/android/music/albumwall/Model$4;->val$n:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1197
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$4;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$4;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v2, p0, Lcom/google/android/music/albumwall/Model$4;->val$expanded:Z

    iget v3, p0, Lcom/google/android/music/albumwall/Model$4;->val$n:I

    new-instance v4, Lcom/google/android/music/albumwall/Model$4$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/albumwall/Model$4$1;-><init>(Lcom/google/android/music/albumwall/Model$4;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V

    goto :goto_0
.end method
