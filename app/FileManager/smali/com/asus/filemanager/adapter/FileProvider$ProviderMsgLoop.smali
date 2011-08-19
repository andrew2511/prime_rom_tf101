.class Lcom/asus/filemanager/adapter/FileProvider$ProviderMsgLoop;
.super Ljava/lang/Object;
.source "FileProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderMsgLoop"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/adapter/FileProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/asus/filemanager/adapter/FileProvider$ProviderMsgLoop;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 207
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 229
    .end local p0
    :cond_0
    :goto_0
    return v6

    .line 210
    .restart local p0
    :pswitch_0
    const/4 v2, 0x0

    .line 212
    .local v2, id:I
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Lcom/asus/filemanager/adapter/FileProvider;->access$200(Ljava/io/File;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 217
    :goto_1
    if-eqz v2, :cond_0

    .line 218
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_1

    move v3, v5

    :goto_2
    invoke-static {v2, v3}, Lcom/asus/filemanager/adapter/FileProvider;->access$400(IZ)Z

    goto :goto_0

    .line 213
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 214
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 215
    invoke-static {}, Lcom/asus/filemanager/adapter/FileProvider;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GetFileID Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e1:Ljava/io/IOException;
    :cond_1
    move v3, v6

    .line 218
    goto :goto_2

    .line 222
    .end local v2           #id:I
    .restart local p0
    :pswitch_1
    :try_start_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/io/File;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_2

    move v3, v5

    :goto_3
    invoke-static {p0, v3}, Lcom/asus/filemanager/adapter/FileProvider;->access$500(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 224
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    invoke-static {}, Lcom/asus/filemanager/adapter/FileProvider;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AddFile_Tree Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    move v3, v6

    .line 222
    goto :goto_3

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
