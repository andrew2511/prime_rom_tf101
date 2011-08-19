.class public Lcom/nvidia/tegrazone/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static hasImage(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 15
    if-eqz p0, :cond_0

    .line 16
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v1, "/Active/en_US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_0
.end method

.method public static loadImage(Lcom/nvidia/tegrazone/components/GFWebImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "imageView"
    .parameter "imagePath"

    .prologue
    .line 23
    invoke-static {p1}, Lcom/nvidia/tegrazone/utils/ImageUtils;->hasImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    goto :goto_0
.end method
