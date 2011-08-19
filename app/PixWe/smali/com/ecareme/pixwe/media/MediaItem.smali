.class public final Lcom/ecareme/pixwe/media/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# static fields
.field public static final CLUSTERED:I = 0x1

.field public static final ID:Ljava/lang/String; = null

.field public static final MAX_VALID_DATE_IN_MS:J = 0x1dd43fc2c00L

.field public static final MAX_VALID_DATE_IN_SEC:J = 0x7a2e1380L

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field public static final MIN_VALID_DATE_IN_MS:J = 0x24b675dc00L

.field public static final MIN_VALID_DATE_IN_SEC:J = 0x9660180L

.field public static final NOT_CLUSTERED:I = 0x0

.field public static final NOT_PRIMED:I = 0x0

.field public static final PRIMED:I = 0x2

.field public static final STARTED_PRIMING:I = 0x1

.field public static STATE_TRANSCODE_FAILURE:I = 0x0

.field public static STATE_TRANSCODE_PROGRESSING:I = 0x0

.field public static STATE_UPLOAD_CLOUD:I = 0x0

.field public static STATE_UPLOAD_UPLOADING:I = 0x0

.field public static STATE_UPLOAD_UPLOAD_FAILURE:I = 0x0

.field private static final VIDEO:Ljava/lang/String; = "video/"


# instance fields
.field public mCaption:Ljava/lang/String;

.field public mClusteringState:I

.field public mContentUri:Ljava/lang/String;

.field public mDateAddedInSec:J

.field public mDateModifiedInSec:J

.field public mDateTakenInMs:J

.field public mDescription:Ljava/lang/String;

.field private mDisplayMimeType:Ljava/lang/String;

.field public mDurationInSec:I

.field public mEditUri:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFlagForDelete:Z

.field public mGuid:Ljava/lang/String;

.field public mId:J

.field public mLatitude:D

.field public mLocaltime:Ljava/util/Date;

.field public mLongitude:D

.field public mMediaType:I

.field public mMicroThumbnailUri:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

.field public mPrimingState:I

.field public mReverseGeocodedLocation:Ljava/lang/String;

.field public mRole:Ljava/lang/String;

.field public mRotation:F

.field public mScreennailUri:Ljava/lang/String;

.field public mThumbnailFocusX:I

.field public mThumbnailFocusY:I

.field public mThumbnailId:J

.field public mThumbnailUri:Ljava/lang/String;

.field public mTriedRetrievingExifDateTaken:Z

.field public mUploadState:I

.field public mUsername:Ljava/lang/String;

.field public mVideoTranscodeState:I

.field public mWeblink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 35
    new-instance v0, Ljava/lang/String;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/media/MediaItem;->ID:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/ecareme/pixwe/media/MediaItem;->STATE_UPLOAD_CLOUD:I

    .line 85
    sput v2, Lcom/ecareme/pixwe/media/MediaItem;->STATE_UPLOAD_UPLOADING:I

    .line 86
    sput v3, Lcom/ecareme/pixwe/media/MediaItem;->STATE_UPLOAD_UPLOAD_FAILURE:I

    .line 89
    sput v2, Lcom/ecareme/pixwe/media/MediaItem;->STATE_TRANSCODE_PROGRESSING:I

    .line 90
    sput v3, Lcom/ecareme/pixwe/media/MediaItem;->STATE_TRANSCODE_FAILURE:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMediaType:I

    .line 57
    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    .line 59
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 60
    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    .line 61
    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    .line 64
    iput v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mPrimingState:I

    .line 69
    iput v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mClusteringState:I

    .line 87
    sget v0, Lcom/ecareme/pixwe/media/MediaItem;->STATE_UPLOAD_CLOUD:I

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mUploadState:I

    .line 91
    iput v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mVideoTranscodeState:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getDisplayMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 146
    .local v0, slashPos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 147
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    .line 152
    .end local v0           #slashPos:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_1
    return-object v1

    .line 149
    .restart local v0       #slashPos:I
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    goto :goto_0

    .line 152
    .end local v0           #slashPos:I
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMediaType()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMediaType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMediaType:I

    .line 136
    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMediaType:I

    return v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReverseGeocodedLocation(Lcom/ecareme/pixwe/media/ReverseGeocoder;)Ljava/lang/String;
    .locals 6
    .parameter "reverseGeocoder"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaItem;->isLatLongValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_2
    iget-wide v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    iget-wide v3, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    const/4 v5, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->getReverseGeocodedLocation(DDI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mReverseGeocodedLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public isDateAddedValid()Z
    .locals 4

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    const-wide/32 v2, 0x9660180

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    const-wide/32 v2, 0x7a2e1380

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDateModifiedValid()Z
    .locals 4

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    const-wide/32 v2, 0x9660180

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    const-wide/32 v2, 0x7a2e1380

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDateTakenValid()Z
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    const-wide v2, 0x24b675dc00L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    const-wide v2, 0x1dd43fc2c00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLatLongValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 108
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPicassaItem()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaSet;->isPicassaAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWellFormed()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public setDisplayMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "displayMimeType"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDisplayMimeType:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setMediaType(I)V
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 140
    iput p1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMediaType:I

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    return-object v0
.end method
