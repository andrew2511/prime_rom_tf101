.class Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;
.super Ljava/lang/Object;
.source "MtpImage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/MtpImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetThumbnailBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/MtpImage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/MtpImage;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/MtpImage;Lcom/android/gallery3d/data/MtpImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;-><init>(Lcom/android/gallery3d/data/MtpImage;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-static {v0}, Lcom/android/gallery3d/data/MtpImage;->access$500(Lcom/android/gallery3d/data/MtpImage;)Lcom/android/gallery3d/data/MtpContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpImage;->access$200(Lcom/android/gallery3d/data/MtpImage;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-static {v2}, Lcom/android/gallery3d/data/MtpImage;->access$300(Lcom/android/gallery3d/data/MtpImage;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MtpClient;->getThumbnail(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
