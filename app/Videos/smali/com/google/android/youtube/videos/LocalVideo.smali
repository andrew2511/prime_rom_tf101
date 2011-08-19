.class public Lcom/google/android/youtube/videos/LocalVideo;
.super Ljava/lang/Object;
.source "LocalVideo.java"


# instance fields
.field public final date:Ljava/util/Date;

.field public final duration:I

.field public final id:J

.field public final mimeType:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V
    .locals 0
    .parameter "id"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "title"
    .parameter "date"
    .parameter "duration"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/google/android/youtube/videos/LocalVideo;->id:J

    .line 29
    iput-object p3, p0, Lcom/google/android/youtube/videos/LocalVideo;->uri:Landroid/net/Uri;

    .line 30
    iput-object p4, p0, Lcom/google/android/youtube/videos/LocalVideo;->mimeType:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/google/android/youtube/videos/LocalVideo;->title:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/google/android/youtube/videos/LocalVideo;->date:Ljava/util/Date;

    .line 33
    iput p7, p0, Lcom/google/android/youtube/videos/LocalVideo;->duration:I

    .line 34
    return-void
.end method
