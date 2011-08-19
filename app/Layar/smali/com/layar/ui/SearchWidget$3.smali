.class Lcom/layar/ui/SearchWidget$3;
.super Ljava/lang/Object;
.source "SearchWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/SearchWidget;->_initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/SearchWidget;


# direct methods
.method constructor <init>(Lcom/layar/ui/SearchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/SearchWidget$3;->this$0:Lcom/layar/ui/SearchWidget;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 158
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 161
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$3;->this$0:Lcom/layar/ui/SearchWidget;

    invoke-static {v0}, Lcom/layar/ui/SearchWidget;->access$2(Lcom/layar/ui/SearchWidget;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
