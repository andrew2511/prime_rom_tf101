.class Lcom/google/android/music/CreatePlaylist$1;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/CreatePlaylist;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private defaultname:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreatePlaylist;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylist$1;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/CreatePlaylist$1;->defaultname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylist$1;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/google/android/music/CreatePlaylist;->access$000(Lcom/google/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreatePlaylist$1;->defaultname:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$1;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$100(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 92
    .local v0, userTypedSomethingIn:Z
    :goto_0
    if-nez v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$1;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$100(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$1;->defaultname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$1;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$100(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 96
    :cond_0
    return-void

    .line 89
    .end local v0           #userTypedSomethingIn:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
