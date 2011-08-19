.class Lcom/asus/dictionary/Dictionary$2;
.super Landroid/os/Handler;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dictionary/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;


# direct methods
.method constructor <init>(Lcom/asus/dictionary/Dictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$2;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 926
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 948
    .end local p0
    :goto_0
    return-void

    .line 945
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary$2;->this$0:Lcom/asus/dictionary/Dictionary;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/asus/dictionary/Dictionary;->displayOutcome(Landroid/os/Bundle;)V

    goto :goto_0

    .line 926
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
