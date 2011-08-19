.class Lcom/asus/filemanager/adapter/ItemIcon$IconThread;
.super Ljava/lang/Object;
.source "ItemIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/adapter/ItemIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconThread"
.end annotation


# instance fields
.field private mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

.field final synthetic this$0:Lcom/asus/filemanager/adapter/ItemIcon;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/adapter/ItemIcon;Lcom/asus/filemanager/adapter/ItemIcon$Icon;)V
    .locals 0
    .parameter
    .parameter "i"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x40

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget v1, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->r:I

    const v2, 0x7f02002a

    if-ne v1, v2, :cond_3

    .line 131
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v1, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->f:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/asus/filemanager/adapter/ItemIcon;->loadResizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iput-object v0, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->b:Landroid/graphics/Bitmap;

    .line 135
    if-nez v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v2}, Lcom/asus/filemanager/adapter/ItemIcon;->access$500(Lcom/asus/filemanager/adapter/ItemIcon;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->b:Landroid/graphics/Bitmap;

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v1}, Lcom/asus/filemanager/adapter/ItemIcon;->access$600(Lcom/asus/filemanager/adapter/ItemIcon;)Lcom/asus/filemanager/adapter/ThumbnailDB;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v1}, Lcom/asus/filemanager/adapter/ItemIcon;->access$600(Lcom/asus/filemanager/adapter/ItemIcon;)Lcom/asus/filemanager/adapter/ThumbnailDB;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v2, v2, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->f:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v2}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v3, v3, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/asus/filemanager/adapter/ThumbnailDB;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v1}, Lcom/asus/filemanager/adapter/ItemIcon;->access$700(Lcom/asus/filemanager/adapter/ItemIcon;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v2}, Lcom/asus/filemanager/adapter/ItemIcon;->access$700(Lcom/asus/filemanager/adapter/ItemIcon;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x157c

    iget-object v4, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget v1, v1, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->r:I

    const v2, 0x1080093

    if-ne v1, v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->this$0:Lcom/asus/filemanager/adapter/ItemIcon;

    invoke-static {v1}, Lcom/asus/filemanager/adapter/ItemIcon;->access$300(Lcom/asus/filemanager/adapter/ItemIcon;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager/adapter/ItemIcon$IconThread;->mIcon:Lcom/asus/filemanager/adapter/ItemIcon$Icon;

    iget-object v2, v2, Lcom/asus/filemanager/adapter/ItemIcon$Icon;->f:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v2}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/filemanager/adapter/ItemIcon;->access$400(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
