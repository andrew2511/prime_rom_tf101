.class Lcom/google/android/music/albumwall/Model$3;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$expanded:Z

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$Epoch;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p3, p0, Lcom/google/android/music/albumwall/Model$3;->val$expanded:Z

    iput-object p4, p0, Lcom/google/android/music/albumwall/Model$3;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$3;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v1}, Lcom/google/android/music/albumwall/Model;->access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$3;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/Model$3;->val$expanded:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 1104
    :goto_0
    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v2, p0, Lcom/google/android/music/albumwall/Model$3;->val$expanded:Z

    new-instance v3, Lcom/google/android/music/albumwall/Model$3$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/albumwall/Model$3$1;-><init>(Lcom/google/android/music/albumwall/Model$3;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V

    goto :goto_0
.end method
