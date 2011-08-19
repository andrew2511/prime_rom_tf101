.class Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;
.super Ljava/lang/Object;
.source "TextSizeOptionsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->displayOptions(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->this$0:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->val$show:Z

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->this$0:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->syncSelectedOptions()V

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->this$0:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->this$0:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->this$0:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->requestFocus()Z

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView$1;->this$0:Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/TextSizeOptionsView;->setVisibility(I)V

    goto :goto_0
.end method
