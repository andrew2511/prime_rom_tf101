.class Lcom/asus/dictionary/DictionaryActivity$1;
.super Landroid/os/Handler;
.source "DictionaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dictionary/DictionaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dictionary/DictionaryActivity;


# direct methods
.method constructor <init>(Lcom/asus/dictionary/DictionaryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/asus/dictionary/DictionaryActivity$1;->this$0:Lcom/asus/dictionary/DictionaryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/asus/dictionary/DictionaryActivity$1;->this$0:Lcom/asus/dictionary/DictionaryActivity;

    invoke-static {v0}, Lcom/asus/dictionary/DictionaryActivity;->access$000(Lcom/asus/dictionary/DictionaryActivity;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/asus/dictionary/DictionaryActivity$1;->this$0:Lcom/asus/dictionary/DictionaryActivity;

    invoke-static {v0}, Lcom/asus/dictionary/DictionaryActivity;->access$100(Lcom/asus/dictionary/DictionaryActivity;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
