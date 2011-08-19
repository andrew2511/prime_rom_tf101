.class Lcom/google/android/music/RenamePlaylist$2;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 115
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 118
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    iget-object v2, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/RenamePlaylist;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/RenamePlaylist;->access$302(Lcom/google/android/music/RenamePlaylist;Landroid/widget/Button;)Landroid/widget/Button;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, newText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    .end local v0           #newText:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 129
    .restart local v0       #newText:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
