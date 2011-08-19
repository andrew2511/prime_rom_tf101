.class Lcom/amazon/kcp/reader/EditNoteActivity$1;
.super Ljava/lang/Object;
.source "EditNoteActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/EditNoteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/EditNoteActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/EditNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/reader/EditNoteActivity$1;->this$0:Lcom/amazon/kcp/reader/EditNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/reader/EditNoteActivity$1;->this$0:Lcom/amazon/kcp/reader/EditNoteActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/EditNoteActivity;->access$000(Lcom/amazon/kcp/reader/EditNoteActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 101
    return-void
.end method
