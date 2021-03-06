.class public Lcom/android/gallery3d/data/MtpImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "MtpImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;
    }
.end annotation


# instance fields
.field private final mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mDateTaken:J

.field private final mDeviceId:I

.field private mFileName:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMtpContext:Lcom/android/gallery3d/data/MtpContext;

.field private final mObjInfo:Landroid/mtp/MtpObjectInfo;

.field private mObjectId:I

.field private mObjectSize:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IILcom/android/gallery3d/data/MtpContext;)V
    .locals 6
    .parameter "path"
    .parameter "app"
    .parameter "deviceId"
    .parameter "objectId"
    .parameter "mtpContext"

    .prologue
    .line 66
    invoke-static {p5, p3, p4}, Lcom/android/gallery3d/data/MtpDevice;->getObjectInfo(Lcom/android/gallery3d/data/MtpContext;II)Landroid/mtp/MtpObjectInfo;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/MtpImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/android/gallery3d/data/MtpContext;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/android/gallery3d/data/MtpContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "objInfo"
    .parameter "mtpContext"

    .prologue
    .line 52
    invoke-static {}, Lcom/android/gallery3d/data/MtpImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 53
    iput p3, p0, Lcom/android/gallery3d/data/MtpImage;->mDeviceId:I

    .line 54
    iput-object p4, p0, Lcom/android/gallery3d/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    .line 55
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectId:I

    .line 56
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectSize:I

    .line 57
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDateTaken:J

    .line 58
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;

    .line 59
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/MtpImage;->mImageWidth:I

    .line 60
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/MtpImage;->mImageHeight:I

    .line 61
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 62
    iput-object p5, p0, Lcom/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/MtpImage;)Lcom/android/gallery3d/data/DataManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/MtpImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDeviceId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/MtpImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/data/MtpImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/MtpImage;)Lcom/android/gallery3d/data/MtpContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    return-object v0
.end method


# virtual methods
.method public Import()Z
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    iget v1, p0, Lcom/android/gallery3d/data/MtpImage;->mDeviceId:I

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MtpContext;->copyFile(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;)Z

    move-result v0

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 152
    sget-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpImage;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 6

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 160
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 161
    .local v1, formater:Ljava/text/DateFormat;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 162
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery3d/data/MtpImage;->mDateTaken:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 163
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/gallery3d/data/MtpImage;->mImageWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 164
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/gallery3d/data/MtpImage;->mImageHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 165
    const/16 v2, 0xa

    iget v3, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectSize:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 166
    return-object v0
.end method

.method public getImageData()[B
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/data/MtpImage;->mDeviceId:I

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectId:I

    iget v3, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/data/MtpClient;->getObject(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x840

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/android/gallery3d/data/MtpImage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/MtpImage$1;-><init>(Lcom/android/gallery3d/data/MtpImage;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/android/gallery3d/data/MtpImage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/MtpImage$2;-><init>(Lcom/android/gallery3d/data/MtpImage;)V

    return-object v0
.end method

.method public updateContent(Landroid/mtp/MtpObjectInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectId:I

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDateTaken:J

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/MtpImage;->mObjectId:I

    .line 129
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDateTaken:J

    .line 130
    invoke-static {}, Lcom/android/gallery3d/data/MtpImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MtpImage;->mDataVersion:J

    .line 132
    :cond_1
    return-void
.end method
