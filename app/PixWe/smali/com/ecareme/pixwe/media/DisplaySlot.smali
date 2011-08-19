.class public final Lcom/ecareme/pixwe/media/DisplaySlot;
.super Ljava/lang/Object;
.source "DisplaySlot.java"


# static fields
.field private static final CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private static final CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private static final LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;


# instance fields
.field private mLocation:Ljava/lang/String;

.field private mLocationImage:Lcom/ecareme/pixwe/media/StringTexture;

.field private mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

.field private mTitle:Ljava/lang/String;

.field private mTitleImage:Lcom/ecareme/pixwe/media/StringTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3fc0

    .line 31
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 32
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 33
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 36
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v4, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 37
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v1, 0x4180

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 38
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput-boolean v4, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    .line 39
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    .line 40
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    move v1, v6

    :goto_1
    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    .line 41
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/4 v1, 0x3

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->yalignment:I

    .line 42
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v5, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    .line 44
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v4, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 45
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    const/16 v1, 0x80

    :goto_2
    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    .line 46
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    move v1, v6

    :goto_3
    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    .line 47
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/4 v1, 0x3

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->yalignment:I

    .line 48
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v1, 0x4180

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 49
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput-boolean v4, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    .line 50
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v5, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    .line 52
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v4, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 53
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v1, 0x4140

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 54
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    const/16 v1, 0x80

    :goto_4
    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    .line 55
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    move v1, v6

    :goto_5
    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    .line 56
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v1, 0x4140

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 57
    sget-object v0, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v5, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    .line 24
    return-void

    .line 39
    :cond_0
    const/16 v1, 0x100

    goto :goto_0

    :cond_1
    move v1, v7

    .line 40
    goto :goto_1

    .line 45
    :cond_2
    const/16 v1, 0x100

    goto :goto_2

    :cond_3
    move v1, v7

    .line 46
    goto :goto_3

    .line 54
    :cond_4
    const/16 v1, 0x100

    goto :goto_4

    :cond_5
    move v1, v7

    .line 55
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTextureForString(Ljava/lang/String;Ljava/util/HashMap;Lcom/ecareme/pixwe/media/StringTexture$Config;)Lcom/ecareme/pixwe/media/StringTexture;
    .locals 2
    .parameter "string"
    .parameter
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/pixwe/media/StringTexture;",
            ">;",
            "Lcom/ecareme/pixwe/media/StringTexture$Config;",
            ")",
            "Lcom/ecareme/pixwe/media/StringTexture;"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, textureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, texture:Lcom/ecareme/pixwe/media/StringTexture;
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #texture:Lcom/ecareme/pixwe/media/StringTexture;
    check-cast v0, Lcom/ecareme/pixwe/media/StringTexture;

    .line 89
    .restart local v0       #texture:Lcom/ecareme/pixwe/media/StringTexture;
    :cond_0
    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture;

    .end local v0           #texture:Lcom/ecareme/pixwe/media/StringTexture;
    invoke-direct {v0, p1, p3}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    .line 91
    .restart local v0       #texture:Lcom/ecareme/pixwe/media/StringTexture;
    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getLocationImage(Lcom/ecareme/pixwe/media/ReverseGeocoder;Ljava/util/HashMap;)Lcom/ecareme/pixwe/media/StringTexture;
    .locals 3
    .parameter "reverseGeocoder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ecareme/pixwe/media/ReverseGeocoder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/pixwe/media/StringTexture;",
            ">;)",
            "Lcom/ecareme/pixwe/media/StringTexture;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, textureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture;>;"
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/MediaSet;->mTitleString:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 130
    :goto_0
    return-object v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mLocationImage:Lcom/ecareme/pixwe/media/StringTexture;

    if-nez v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-boolean v1, v1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {p1, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->enqueue(Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 120
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-boolean v1, v1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-object v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 124
    .local v0, geocodedLocation:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 125
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mLocation:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mLocation:Ljava/lang/String;

    sget-object v2, Lcom/ecareme/pixwe/media/DisplaySlot;->LOCATION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {p0, v1, p2, v2}, Lcom/ecareme/pixwe/media/DisplaySlot;->getTextureForString(Ljava/lang/String;Ljava/util/HashMap;Lcom/ecareme/pixwe/media/StringTexture$Config;)Lcom/ecareme/pixwe/media/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mLocationImage:Lcom/ecareme/pixwe/media/StringTexture;

    .line 130
    .end local v0           #geocodedLocation:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mLocationImage:Lcom/ecareme/pixwe/media/StringTexture;

    goto :goto_0
.end method

.method public getMediaSet()Lcom/ecareme/pixwe/media/MediaSet;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    return-object v0
.end method

.method public getTitleImage(Ljava/util/HashMap;)Lcom/ecareme/pixwe/media/StringTexture;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/pixwe/media/StringTexture;",
            ">;)",
            "Lcom/ecareme/pixwe/media/StringTexture;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, textureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture;>;"
    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    if-nez v2, :cond_0

    .line 100
    const/4 v2, 0x0

    .line 110
    :goto_0
    return-object v2

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mTitleImage:Lcom/ecareme/pixwe/media/StringTexture;

    .line 103
    .local v0, texture:Lcom/ecareme/pixwe/media/StringTexture;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-object v1, v2, Lcom/ecareme/pixwe/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    .line 104
    .local v1, title:Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v2, v2, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v2, v2, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    sget-object v2, Lcom/ecareme/pixwe/media/DisplaySlot;->CAPTION_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    :goto_1
    invoke-direct {p0, v1, p1, v2}, Lcom/ecareme/pixwe/media/DisplaySlot;->getTextureForString(Ljava/lang/String;Ljava/util/HashMap;Lcom/ecareme/pixwe/media/StringTexture$Config;)Lcom/ecareme/pixwe/media/StringTexture;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mTitleImage:Lcom/ecareme/pixwe/media/StringTexture;

    .line 108
    iput-object v1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mTitle:Ljava/lang/String;

    :cond_1
    move-object v2, v0

    .line 110
    goto :goto_0

    .line 106
    :cond_2
    sget-object v2, Lcom/ecareme/pixwe/media/DisplaySlot;->CLUSTER_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    goto :goto_1
.end method

.method public hasValidLocation()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 77
    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public setMediaSet(Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 2
    .parameter "set"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    iput-object p1, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mSetRef:Lcom/ecareme/pixwe/media/MediaSet;

    .line 62
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mTitle:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mTitleImage:Lcom/ecareme/pixwe/media/StringTexture;

    .line 64
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplaySlot;->mLocationImage:Lcom/ecareme/pixwe/media/StringTexture;

    .line 65
    iget-object v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    iput-boolean v1, p1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    .line 67
    iput-boolean v1, p1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 69
    :cond_0
    return-void
.end method
