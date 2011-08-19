.class Lcom/google/android/music/RenamePlaylist$1;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/RenamePlaylist;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private originalname:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/music/RenamePlaylist;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist$1;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RenamePlaylist$1;->originalname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/RenamePlaylist$1;->this$0:Lcom/google/android/music/RenamePlaylist;

    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$1;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$000(Lcom/google/android/music/RenamePlaylist;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/RenamePlaylist;->access$100(Lcom/google/android/music/RenamePlaylist;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RenamePlaylist$1;->originalname:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/RenamePlaylist$1;->this$0:Lcom/google/android/music/RenamePlaylist;

    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$1;->originalname:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/RenamePlaylist$1;->originalname:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/RenamePlaylist;->access$200(Lcom/google/android/music/RenamePlaylist;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
