.class public Lcom/amazon/kcp/application/internal/CDownloadableImage;
.super Ljava/lang/Object;
.source "CDownloadableImage.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/IDownloadableImage;


# instance fields
.field private image:Lcom/amazon/system/drawing/Image;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/amazon/system/drawing/Image;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CDownloadableImage;->image:Lcom/amazon/system/drawing/Image;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/application/internal/CDownloadableImage;->state:I

    .line 25
    return-void
.end method


# virtual methods
.method public getDownloadState()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/amazon/kcp/application/internal/CDownloadableImage;->state:I

    return v0
.end method

.method public getImage()Lcom/amazon/system/drawing/Image;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CDownloadableImage;->image:Lcom/amazon/system/drawing/Image;

    return-object v0
.end method

.method public setDownloadState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 40
    iput p1, p0, Lcom/amazon/kcp/application/internal/CDownloadableImage;->state:I

    .line 41
    return-void
.end method

.method public setImage(Lcom/amazon/system/drawing/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CDownloadableImage;->image:Lcom/amazon/system/drawing/Image;

    .line 58
    return-void
.end method
