.class Lcom/google/android/music/CreatePlaylist$3;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/CreatePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreatePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$100(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 198
    new-instance v1, Lcom/google/android/music/CreatePlaylist$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/CreatePlaylist$3$1;-><init>(Lcom/google/android/music/CreatePlaylist$3;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-virtual {v1}, Lcom/google/android/music/CreatePlaylist;->dismiss()V

    .line 232
    return-void
.end method
