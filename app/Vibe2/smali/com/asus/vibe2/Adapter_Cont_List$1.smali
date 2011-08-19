.class Lcom/asus/vibe2/Adapter_Cont_List$1;
.super Landroid/os/Handler;
.source "Adapter_Cont_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Adapter_Cont_List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Adapter_Cont_List;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Adapter_Cont_List;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v7, 0x99

    .line 46
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_1

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    .local v0, currTime:J
    invoke-static {}, Lcom/asus/vibe2/Adapter_Cont_List;->access$000()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-static {}, Lcom/asus/vibe2/Adapter_Cont_List;->access$000()J

    move-result-wide v3

    sub-long v3, v0, v3

    cmp-long v3, v3, v8

    if-ltz v3, :cond_2

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-virtual {v3}, Lcom/asus/vibe2/Adapter_Cont_List;->notifyDataSetChanged()V

    .line 51
    invoke-static {v0, v1}, Lcom/asus/vibe2/Adapter_Cont_List;->access$002(J)J

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {v3}, Lcom/asus/vibe2/Adapter_Cont_List;->access$200(Lcom/asus/vibe2/Adapter_Cont_List;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_1

    .line 57
    new-instance v2, Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v2}, Lcom/asus/vibe/item/VibeParam;-><init>()V

    .line 58
    .local v2, param:Lcom/asus/vibe/item/VibeParam;
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {v3}, Lcom/asus/vibe2/Adapter_Cont_List;->access$300(Lcom/asus/vibe2/Adapter_Cont_List;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/vibe/item/VibeItem_Cont;

    iput-object v3, v2, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    .line 59
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {v3}, Lcom/asus/vibe2/Adapter_Cont_List;->access$400(Lcom/asus/vibe2/Adapter_Cont_List;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->update(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)J

    .line 62
    .end local v0           #currTime:J
    .end local v2           #param:Lcom/asus/vibe/item/VibeParam;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    return-void

    .line 53
    .restart local v0       #currTime:J
    :cond_2
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {v3}, Lcom/asus/vibe2/Adapter_Cont_List;->access$100(Lcom/asus/vibe2/Adapter_Cont_List;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {v3}, Lcom/asus/vibe2/Adapter_Cont_List;->access$100(Lcom/asus/vibe2/Adapter_Cont_List;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/vibe2/Adapter_Cont_List$1;->this$0:Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {v4}, Lcom/asus/vibe2/Adapter_Cont_List;->access$100(Lcom/asus/vibe2/Adapter_Cont_List;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Adapter_Cont_List;->access$000()J

    move-result-wide v5

    sub-long v5, v0, v5

    sub-long v5, v8, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
