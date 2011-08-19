.class public interface abstract Lcom/amazon/kcp/library/models/ILocalBookItem;
.super Ljava/lang/Object;
.source "ILocalBookItem.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ILocalBookInfo;


# static fields
.field public static final FRL_Different:I = 0x1

.field public static final FRL_None:I


# virtual methods
.method public abstract createDocument()Lcom/amazon/kcp/reader/models/IBookDocument;
.end method

.method public abstract deSerializeCover()Z
.end method

.method public abstract getCover()Lcom/amazon/system/drawing/Image;
.end method

.method public abstract getCoverPath()Ljava/lang/String;
.end method

.method public abstract getEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
.end method

.method public abstract getLargeEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
.end method

.method public abstract getLastReadDateChangeEvent()Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;
.end method

.method public abstract getLocalBookItemCoverChangeEvent()Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;
.end method

.method public abstract getUserCurrentLocation()I
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract loadCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
.end method

.method public abstract proposeFurthestReadLocation(I)V
.end method

.method public abstract serializeCover([B)V
.end method

.method public abstract setAnnotationFile(Ljava/lang/String;Z)Z
.end method

.method public abstract setCover(Lcom/amazon/system/drawing/Image;)V
.end method

.method public abstract setNowAsLastReadDate()Z
.end method

.method public abstract supportsDictionaryCapability()Z
.end method

.method public abstract updateServerLastPageRead(I[BILjava/lang/String;)Z
.end method
