.class public interface abstract Lcom/amazon/kcp/library/models/internal/IMetadata;
.super Ljava/lang/Object;
.source "IMetadata.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;
.implements Lcom/amazon/kcp/application/internal/IImageSetter;
.implements Lcom/amazon/kcp/library/models/IDownloadBookItem;


# static fields
.field public static final CCT_EBOOK:Ljava/lang/String; = "EBOK"

.field public static final CCT_EBOOK_SAMPLE:Ljava/lang/String; = "EBSP"

.field public static final CCT_MAGAZINE:Ljava/lang/String; = "MAGZ"

.field public static final CCT_NEWSPAPER:Ljava/lang/String; = "NWPR"


# virtual methods
.method public abstract addAuthor(Ljava/lang/String;)V
.end method

.method public abstract addPublisher(Ljava/lang/String;)V
.end method

.method public abstract copy(Lcom/amazon/kcp/library/models/internal/IMetadata;)V
.end method

.method public abstract empty()V
.end method

.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getAuthors()Ljava/util/Vector;
.end method

.method public abstract getCdeContentType()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getPublishers()Ljava/util/Vector;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract setAsin(Ljava/lang/String;)V
.end method

.method public abstract setCdeContentType(Ljava/lang/String;)V
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setCover(Lcom/amazon/system/drawing/Image;)V
.end method

.method public abstract setErrorState(Ljava/lang/String;)V
.end method

.method public abstract setErrorSubstate(Ljava/lang/String;)V
.end method

.method public abstract setPublicationDate(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
