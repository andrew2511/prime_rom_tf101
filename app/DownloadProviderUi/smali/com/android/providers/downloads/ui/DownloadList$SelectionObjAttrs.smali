.class Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
.super Ljava/lang/Object;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionObjAttrs"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMimeType:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
