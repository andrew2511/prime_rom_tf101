.class Lcom/google/android/music/CreatePlaylist$2;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 105
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 126
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 108
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$200(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/CreatePlaylist;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/CreatePlaylist;->access$202(Lcom/google/android/music/CreatePlaylist;Landroid/widget/Button;)Landroid/widget/Button;

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$200(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$100(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, newText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$200(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    .end local v0           #newText:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 119
    .restart local v0       #newText:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$2;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/google/android/music/CreatePlaylist;->access$200(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
