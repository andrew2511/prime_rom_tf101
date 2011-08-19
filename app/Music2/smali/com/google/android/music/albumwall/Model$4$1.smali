.class Lcom/google/android/music/albumwall/Model$4$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/albumwall/Model$4;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$4$1;->this$1:Lcom/google/android/music/albumwall/Model$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$4$1;->this$1:Lcom/google/android/music/albumwall/Model$4;

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$4;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$4$1;->this$1:Lcom/google/android/music/albumwall/Model$4;

    iget-object v1, v1, Lcom/google/android/music/albumwall/Model$4;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$4$1;->this$1:Lcom/google/android/music/albumwall/Model$4;

    iget-object v2, v2, Lcom/google/android/music/albumwall/Model$4;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$4$1;->this$1:Lcom/google/android/music/albumwall/Model$4;

    iget-boolean v3, v3, Lcom/google/android/music/albumwall/Model$4;->val$expanded:Z

    iget-object v4, p0, Lcom/google/android/music/albumwall/Model$4$1;->this$1:Lcom/google/android/music/albumwall/Model$4;

    iget v4, v4, Lcom/google/android/music/albumwall/Model$4;->val$n:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1195
    return-void
.end method
