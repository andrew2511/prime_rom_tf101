.class Lcom/google/android/music/albumwall/Model$1$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/albumwall/Model$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .locals 0
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$1$1;->this$1:Lcom/google/android/music/albumwall/Model$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$1$1;->this$1:Lcom/google/android/music/albumwall/Model$1;

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$1;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$1$1;->this$1:Lcom/google/android/music/albumwall/Model$1;

    iget-object v1, v1, Lcom/google/android/music/albumwall/Model$1;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 972
    return-void
.end method
