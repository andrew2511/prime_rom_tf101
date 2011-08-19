.class Lcom/asus/vibe2/debug/DummyMyCloud$3;
.super Ljava/lang/Object;
.source "DummyMyCloud.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/debug/DummyMyCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/debug/DummyMyCloud;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/debug/DummyMyCloud;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/asus/vibe2/debug/DummyMyCloud$3;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud$3;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    const-string v1, "music"

    invoke-static {v0, v1}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$400(Lcom/asus/vibe2/debug/DummyMyCloud;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud$3;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    const-string v1, "radio"

    invoke-static {v0, v1}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$400(Lcom/asus/vibe2/debug/DummyMyCloud;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud$3;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    const-string v1, "video"

    invoke-static {v0, v1}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$400(Lcom/asus/vibe2/debug/DummyMyCloud;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud$3;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    const-string v1, "news"

    invoke-static {v0, v1}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$400(Lcom/asus/vibe2/debug/DummyMyCloud;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x7f080006
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
