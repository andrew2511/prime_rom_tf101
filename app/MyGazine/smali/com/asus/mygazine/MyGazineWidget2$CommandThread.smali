.class public Lcom/asus/mygazine/MyGazineWidget2$CommandThread;
.super Ljava/lang/Thread;
.source "MyGazineWidget2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/MyGazineWidget2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/MyGazineWidget2;


# direct methods
.method public constructor <init>(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, -0x1

    .line 156
    .local v0, cmd:I
    :cond_0
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-virtual {v1}, Lcom/asus/mygazine/MyGazineWidget2;->dequeueCommand()I

    move-result v0

    .line 157
    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget2;->access$600(Lcom/asus/mygazine/MyGazineWidget2;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    return-void

    .line 159
    :pswitch_0
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget2;->access$000(Lcom/asus/mygazine/MyGazineWidget2;)V

    .line 161
    :pswitch_1
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget2;->access$100(Lcom/asus/mygazine/MyGazineWidget2;)V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget2;->access$200(Lcom/asus/mygazine/MyGazineWidget2;)V

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget2;->access$300(Lcom/asus/mygazine/MyGazineWidget2;)V

    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget2;->access$400(Lcom/asus/mygazine/MyGazineWidget2;)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;->this$0:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-static {v1}, Lcom/asus/mygazine/MyGazineWidget2;->access$500(Lcom/asus/mygazine/MyGazineWidget2;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
