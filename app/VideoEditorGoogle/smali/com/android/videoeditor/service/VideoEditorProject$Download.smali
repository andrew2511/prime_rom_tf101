.class public Lcom/android/videoeditor/service/VideoEditorProject$Download;
.super Ljava/lang/Object;
.source "VideoEditorProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/VideoEditorProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Download"
.end annotation


# instance fields
.field private final mFilename:Ljava/lang/String;

.field private final mMediaUri:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;

.field private final mTime:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "mediaUri"
    .parameter "mimeType"
    .parameter "filename"
    .parameter "time"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mMediaUri:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mMimeType:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mFilename:Ljava/lang/String;

    .line 102
    iput-wide p4, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mTime:J

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/videoeditor/service/VideoEditorProject$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p5}, Lcom/android/videoeditor/service/VideoEditorProject$Download;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mMediaUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/videoeditor/service/VideoEditorProject$Download;->mTime:J

    return-wide v0
.end method
