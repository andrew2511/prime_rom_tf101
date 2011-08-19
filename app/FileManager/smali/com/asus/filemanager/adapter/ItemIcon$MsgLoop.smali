.class Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;
.super Ljava/lang/Object;
.source "ItemIcon.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/ItemIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/adapter/ItemIcon;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/adapter/ItemIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;-><init>(Lcom/asus/filemanager/adapter/ItemIcon;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v0, v0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v1, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->f:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v1, v0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->v:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v0, v0, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v0, v3}, Lcom/asus/filemanager/adapter/ItemIcon;->access$802(Lcom/asus/filemanager/adapter/ItemIcon;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 164
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v0}, Lcom/asus/filemanager/adapter/ItemIcon;->access$900(Lcom/asus/filemanager/adapter/ItemIcon;)V

    move v0, v2

    .line 165
    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v0, v3}, Lcom/asus/filemanager/adapter/ItemIcon;->access$802(Lcom/asus/filemanager/adapter/ItemIcon;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 169
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ItemIcon$MsgLoop;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v0}, Lcom/asus/filemanager/adapter/ItemIcon;->access$900(Lcom/asus/filemanager/adapter/ItemIcon;)V

    move v0, v2

    .line 170
    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x157c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
