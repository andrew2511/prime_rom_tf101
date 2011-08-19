.class public Lcom/asus/mygazine/MyGazineWidget$CommandThread;
.super Ljava/lang/Thread;
.source "MyGazineWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/MyGazineWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/MyGazineWidget;


# direct methods
.method public constructor <init>(Lcom/asus/mygazine/MyGazineWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/asus/mygazine/MyGazineWidget$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, -0x1

    .line 105
    .local v0, cmd:I
    :cond_0
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget;

    invoke-virtual {v1}, Lcom/asus/mygazine/MyGazineWidget;->dequeueCommand()I

    move-result v0

    .line 106
    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget;->access$300(Lcom/asus/mygazine/MyGazineWidget;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    return-void

    .line 108
    :pswitch_1
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget;->access$000(Lcom/asus/mygazine/MyGazineWidget;)V

    .line 110
    :pswitch_2
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget;->access$100(Lcom/asus/mygazine/MyGazineWidget;)V

    .line 112
    :pswitch_3
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget;->access$200(Lcom/asus/mygazine/MyGazineWidget;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
