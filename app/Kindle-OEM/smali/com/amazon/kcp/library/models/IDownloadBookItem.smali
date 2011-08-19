.class public interface abstract Lcom/amazon/kcp/library/models/IDownloadBookItem;
.super Ljava/lang/Object;
.source "IDownloadBookItem.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IListableBook;


# static fields
.field public static final DBS_Downloaded:I = 0x4

.field public static final DBS_Downloading:I = 0x2

.field public static final DBS_Error:I = 0x3

.field public static final DBS_None:I = 0x1

.field public static final DBS_Paused:I = 0x5

.field public static final DBS_Queued:I = 0x6

.field public static final DBS_Unknown:I = 0x0

.field public static final DBT_Content:I = 0x1

.field public static final DBT_Sidecar:I = 0x2

.field public static final DBT_Unknown:I


# virtual methods
.method public abstract getCoverState()I
.end method

.method public abstract getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;
.end method

.method public abstract getDownloadProgress()J
.end method

.method public abstract getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;
.end method

.method public abstract getDownloadState()I
.end method

.method public abstract getDownloadTarget()I
.end method

.method public abstract getErrorState()Ljava/lang/String;
.end method

.method public abstract getErrorSubstate()Ljava/lang/String;
.end method

.method public abstract getMaxDownloadProgress()J
.end method

.method public abstract getProcessedCoverImage(Lcom/amazon/system/drawing/Image;Lcom/amazon/system/drawing/Image;)Lcom/amazon/system/drawing/Image;
.end method

.method public abstract setDownloadState(I)V
.end method
