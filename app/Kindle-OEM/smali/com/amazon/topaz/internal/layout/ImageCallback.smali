.class public final Lcom/amazon/topaz/internal/layout/ImageCallback;
.super Lcom/amazon/topaz/Callback;
.source "ImageCallback.java"


# static fields
.field private static INFO_TYPE:Ljava/lang/String;

.field private static LABEL:Ljava/lang/String;


# instance fields
.field private image:Lcom/amazon/topaz/internal/book/Image;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "Image"

    sput-object v0, Lcom/amazon/topaz/internal/layout/ImageCallback;->LABEL:Ljava/lang/String;

    .line 18
    const-string v0, "image"

    sput-object v0, Lcom/amazon/topaz/internal/layout/ImageCallback;->INFO_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/book/Image;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 30
    sget-object v0, Lcom/amazon/topaz/internal/layout/ImageCallback;->LABEL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/ImageCallback;->image:Lcom/amazon/topaz/internal/book/Image;

    .line 32
    return-void
.end method


# virtual methods
.method public getInfo()Lcom/amazon/topaz/Callback$Info;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ImageCallback;->image:Lcom/amazon/topaz/internal/book/Image;

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "imageId"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ImageCallback;->image:Lcom/amazon/topaz/internal/book/Image;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Image;->getImageId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    new-instance v1, Lcom/amazon/topaz/Callback$Info;

    sget-object v2, Lcom/amazon/topaz/internal/layout/ImageCallback;->INFO_TYPE:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/Callback$Info;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    return-object v1
.end method

.method public getRect()Lcom/amazon/system/drawing/Rectangle;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ImageCallback;->image:Lcom/amazon/topaz/internal/book/Image;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Image;->getDestinationRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/amazon/topaz/Viewer;)Ljava/lang/String;
    .locals 1
    .parameter "viewer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
