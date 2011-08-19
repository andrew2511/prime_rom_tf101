.class Lcom/asus/vibe2/Act_Detail$2;
.super Landroid/os/Handler;
.source "Act_Detail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Act_Detail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_Detail;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Act_Detail;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_5

    .line 82
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$100(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0, v4}, Lcom/asus/vibe2/Act_Detail;->access$102(Lcom/asus/vibe2/Act_Detail;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    .line 83
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v0

    iget v0, v0, Lcom/asus/vibe/item/VibeParam;->tabType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/asus/vibe/item/VibeParam;

    if-eqz v0, :cond_3

    .line 85
    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/vibe/item/VibeParam;

    invoke-static {v1, v0}, Lcom/asus/vibe2/Act_Detail;->access$202(Lcom/asus/vibe2/Act_Detail;Lcom/asus/vibe/item/VibeParam;)Lcom/asus/vibe/item/VibeParam;

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$000(Lcom/asus/vibe2/Act_Detail;)V

    .line 103
    :cond_2
    :goto_1
    return-void

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/asus/vibe/item/VibeItem_Detail;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$200(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/vibe/item/VibeItem_Detail;

    iput-object v0, v1, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    goto :goto_0

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$300(Lcom/asus/vibe2/Act_Detail;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    const/4 v1, 0x1

    const v2, 0x7f040015

    const v3, 0x7f040018

    invoke-static {v0, v1, v4, v2, v3}, Lcom/asus/vibe2/VibeErr;->showErrorAlert(Landroid/app/Activity;ZLandroid/content/Intent;II)V

    goto :goto_1

    .line 94
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_7

    .line 95
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$100(Lcom/asus/vibe2/Act_Detail;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0, v4}, Lcom/asus/vibe2/Act_Detail;->access$102(Lcom/asus/vibe2/Act_Detail;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    .line 96
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/asus/vibe2/Act_Detail;->access$402(Lcom/asus/vibe2/Act_Detail;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$000(Lcom/asus/vibe2/Act_Detail;)V

    goto :goto_1

    .line 100
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x99

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/asus/vibe2/Act_Detail$2;->this$0:Lcom/asus/vibe2/Act_Detail;

    invoke-static {v0}, Lcom/asus/vibe2/Act_Detail;->access$000(Lcom/asus/vibe2/Act_Detail;)V

    goto :goto_1
.end method
