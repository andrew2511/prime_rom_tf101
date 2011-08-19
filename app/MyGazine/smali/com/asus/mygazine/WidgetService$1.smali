.class Lcom/asus/mygazine/WidgetService$1;
.super Landroid/os/Handler;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/WidgetService;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/WidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$000(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v2}, Lcom/asus/mygazine/WidgetService;->access$000(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/asus/mygazine/WidgetService;->access$100(Lcom/asus/mygazine/WidgetService;I)I

    move-result v1

    aput v1, v0, v4

    .line 148
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$000(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    aget v0, v0, v4

    if-ltz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v1}, Lcom/asus/mygazine/WidgetService;->access$200(Lcom/asus/mygazine/WidgetService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v4, v3}, Lcom/asus/mygazine/WidgetService;->access$300(Lcom/asus/mygazine/WidgetService;Landroid/content/Context;IZ)V

    .line 151
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$400(Lcom/asus/mygazine/WidgetService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$500(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/asus/mygazine/WidgetService$1;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$600(Lcom/asus/mygazine/WidgetService;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$700(Lcom/asus/mygazine/WidgetService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$500(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    aget v0, v0, v4

    invoke-static {}, Lcom/asus/mygazine/WidgetService;->access$800()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/mygazine/WidgetService$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$000(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    iget-object v2, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v2}, Lcom/asus/mygazine/WidgetService;->access$000(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/asus/mygazine/WidgetService;->access$100(Lcom/asus/mygazine/WidgetService;I)I

    move-result v1

    aput v1, v0, v3

    .line 158
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$000(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    aget v0, v0, v3

    if-ltz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    iget-object v1, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v1}, Lcom/asus/mygazine/WidgetService;->access$200(Lcom/asus/mygazine/WidgetService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/asus/mygazine/WidgetService;->access$300(Lcom/asus/mygazine/WidgetService;Landroid/content/Context;IZ)V

    .line 161
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$400(Lcom/asus/mygazine/WidgetService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$500(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/asus/mygazine/WidgetService$1;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$600(Lcom/asus/mygazine/WidgetService;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$700(Lcom/asus/mygazine/WidgetService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/asus/mygazine/WidgetService$1;->this$0:Lcom/asus/mygazine/WidgetService;

    invoke-static {v0}, Lcom/asus/mygazine/WidgetService;->access$500(Lcom/asus/mygazine/WidgetService;)[I

    move-result-object v0

    aget v0, v0, v3

    invoke-static {}, Lcom/asus/mygazine/WidgetService;->access$800()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/mygazine/WidgetService$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
