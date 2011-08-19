.class Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;
.super Ljava/lang/Object;
.source "DLNAImageGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/DLNAImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAImageGetterRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/DLNAImageGetter;


# direct methods
.method private constructor <init>(Lcom/asus/Viewer/DLNAImageGetter;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/Viewer/DLNAImageGetter;Lcom/asus/Viewer/DLNAImageGetter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;-><init>(Lcom/asus/Viewer/DLNAImageGetter;)V

    return-void
.end method

.method private executeRequest()V
    .locals 11

    .prologue
    .line 106
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$300(Lcom/asus/Viewer/DLNAImageGetter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 107
    .local v3, imageCount:I
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$000(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/DLNAImageGetterCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/asus/Viewer/DLNAImageGetterCallback;->loadOrder()[I

    move-result-object v6

    .line 108
    .local v6, order:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_6

    .line 109
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$400(Lcom/asus/Viewer/DLNAImageGetter;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    :cond_0
    :goto_1
    return-void

    .line 110
    :cond_1
    aget v5, v6, v2

    .line 111
    .local v5, offset:I
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$500(Lcom/asus/Viewer/DLNAImageGetter;)I

    move-result v8

    add-int v4, v8, v5

    .line 112
    .local v4, imageNumber:I
    if-ltz v4, :cond_2

    if-ge v4, v3, :cond_2

    .line 113
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$000(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/DLNAImageGetterCallback;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v9}, Lcom/asus/Viewer/DLNAImageGetter;->access$500(Lcom/asus/Viewer/DLNAImageGetter;)I

    move-result v9

    invoke-interface {v8, v9, v5}, Lcom/asus/Viewer/DLNAImageGetterCallback;->wantsFullImage(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 108
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_3
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$300(Lcom/asus/Viewer/DLNAImageGetter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 118
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 119
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$400(Lcom/asus/Viewer/DLNAImageGetter;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 121
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-virtual {v8, v7}, Lcom/asus/Viewer/DLNAImageGetter;->SetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$400(Lcom/asus/Viewer/DLNAImageGetter;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 127
    :cond_4
    if-nez v0, :cond_5

    .line 128
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$200(Lcom/asus/Viewer/DLNAImageGetter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020040

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/asus/Viewer/DLNAImageGetter;->access$602(Lcom/asus/Viewer/DLNAImageGetter;Z)Z

    .line 131
    :cond_5
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    iget-object v9, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v9}, Lcom/asus/Viewer/DLNAImageGetter;->access$500(Lcom/asus/Viewer/DLNAImageGetter;)I

    move-result v9

    iget-object v10, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v10}, Lcom/asus/Viewer/DLNAImageGetter;->access$600(Lcom/asus/Viewer/DLNAImageGetter;)Z

    move-result v10

    invoke-static {v8, v9, v5, v0, v10}, Lcom/asus/Viewer/DLNAImageGetter;->access$700(Lcom/asus/Viewer/DLNAImageGetter;IILandroid/graphics/Bitmap;Z)Ljava/lang/Runnable;

    move-result-object v1

    .line 132
    .local v1, cb:Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$800(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/GetterHandler;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/asus/Viewer/GetterHandler;->GetterCallback(Ljava/lang/Runnable;)V

    .line 133
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/asus/Viewer/DLNAImageGetter;->access$602(Lcom/asus/Viewer/DLNAImageGetter;Z)Z

    goto :goto_2

    .line 136
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #cb:Ljava/lang/Runnable;
    .end local v4           #imageNumber:I
    .end local v5           #offset:I
    .end local v7           #uri:Landroid/net/Uri;
    :cond_6
    iget-object v8, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v8}, Lcom/asus/Viewer/DLNAImageGetter;->access$800(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/GetterHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v9}, Lcom/asus/Viewer/DLNAImageGetter;->access$900(Lcom/asus/Viewer/DLNAImageGetter;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/asus/Viewer/GetterHandler;->GetterCallback(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 101
    invoke-direct {p0}, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->executeRequest()V

    .line 102
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v0}, Lcom/asus/Viewer/DLNAImageGetter;->access$200(Lcom/asus/Viewer/DLNAImageGetter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/Viewer/DLNAImageGetter$DLNAImageGetterRunnable;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v1}, Lcom/asus/Viewer/DLNAImageGetter;->access$100(Lcom/asus/Viewer/DLNAImageGetter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 103
    return-void
.end method
