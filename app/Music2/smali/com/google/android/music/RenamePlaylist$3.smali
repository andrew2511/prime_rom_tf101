.class Lcom/google/android/music/RenamePlaylist$3;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/music/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 187
    new-instance v1, Lcom/google/android/music/RenamePlaylist$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/RenamePlaylist$3$1;-><init>(Lcom/google/android/music/RenamePlaylist$3;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v1}, Lcom/google/android/music/RenamePlaylist;->dismiss()V

    .line 217
    return-void
.end method
