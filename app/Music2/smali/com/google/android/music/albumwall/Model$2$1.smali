.class Lcom/google/android/music/albumwall/Model$2$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$PileReply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/albumwall/Model$2;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$2$1;->this$1:Lcom/google/android/music/albumwall/Model$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .locals 3
    .parameter "pile"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$2$1;->this$1:Lcom/google/android/music/albumwall/Model$2;

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$2;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$2$1;->this$1:Lcom/google/android/music/albumwall/Model$2;

    iget-object v1, v1, Lcom/google/android/music/albumwall/Model$2;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$2$1;->this$1:Lcom/google/android/music/albumwall/Model$2;

    iget v2, v2, Lcom/google/android/music/albumwall/Model$2;->val$pileIndex:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 1025
    return-void
.end method
