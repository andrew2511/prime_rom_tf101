.class Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I
    .locals 7
    .parameter "req1"
    .parameter "req2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 211
    iget v1, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-eq v1, v2, :cond_1

    .line 212
    iget v1, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v2, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-ge v1, v2, :cond_0

    move v0, v5

    .line 220
    .local v0, res:I
    :goto_0
    return v0

    .end local v0           #res:I
    :cond_0
    move v0, v6

    .line 212
    goto :goto_0

    .line 214
    :cond_1
    iget-wide v1, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 215
    const/4 v0, 0x0

    .restart local v0       #res:I
    goto :goto_0

    .line 217
    .end local v0           #res:I
    :cond_2
    iget-wide v1, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    move v0, v5

    .restart local v0       #res:I
    :goto_1
    goto :goto_0

    .end local v0           #res:I
    :cond_3
    move v0, v6

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    check-cast p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p1
    check-cast p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;->compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I

    move-result v0

    return v0
.end method
