.class public Lcom/android/videoeditor/service/MovieOverlay;
.super Ljava/lang/Object;
.source "MovieOverlay.java"


# static fields
.field private static final KEY_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final OVERLAY_TYPE_BOTTOM_1:I = 0x1

.field public static final OVERLAY_TYPE_BOTTOM_2:I = 0x3

.field public static final OVERLAY_TYPE_CENTER_1:I = 0x0

.field public static final OVERLAY_TYPE_CENTER_2:I = 0x2


# instance fields
.field private mAppDurationMs:J

.field private mAppStartTimeMs:J

.field private mDurationMs:J

.field private mStartTimeMs:J

.field private mSubtitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Landroid/media/videoeditor/Overlay;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/Overlay;)V
    .locals 3
    .parameter "overlay"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mUniqueId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mStartTimeMs:J

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppStartTimeMs:J

    .line 67
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mDurationMs:J

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppDurationMs:J

    .line 69
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    .line 70
    .local v0, userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mTitle:Ljava/lang/String;

    .line 71
    const-string v1, "subtitle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mSubtitle:Ljava/lang/String;

    .line 72
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mType:I

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "startTimeMs"
    .parameter "durationMs"
    .parameter "title"
    .parameter "subTitle"
    .parameter "type"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mUniqueId:Ljava/lang/String;

    .line 88
    iput-wide p2, p0, Lcom/android/videoeditor/service/MovieOverlay;->mStartTimeMs:J

    iput-wide p2, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppStartTimeMs:J

    .line 89
    iput-wide p4, p0, Lcom/android/videoeditor/service/MovieOverlay;->mDurationMs:J

    iput-wide p4, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppDurationMs:J

    .line 91
    iput-object p6, p0, Lcom/android/videoeditor/service/MovieOverlay;->mTitle:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/android/videoeditor/service/MovieOverlay;->mSubtitle:Ljava/lang/String;

    .line 93
    iput p8, p0, Lcom/android/videoeditor/service/MovieOverlay;->mType:I

    .line 94
    return-void
.end method

.method public static buildUserAttributes(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "type"
    .parameter "title"
    .parameter "subtitle"

    .prologue
    .line 238
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 239
    .local v0, userAttributes:Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "subtitle"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v0
.end method

.method public static getAttributeType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 262
    const-string v0, "type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-class v0, Ljava/lang/Integer;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSubtitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "userAttributes"

    .prologue
    .line 293
    const-string v0, "subtitle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "userAttributes"

    .prologue
    .line 284
    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Landroid/os/Bundle;)I
    .locals 1
    .parameter "userAttributes"

    .prologue
    .line 275
    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public buildUserAttributes()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 222
    .local v0, userAttributes:Landroid/os/Bundle;
    const-string v1, "type"

    iget v2, p0, Lcom/android/videoeditor/service/MovieOverlay;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieOverlay;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "subtitle"

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieOverlay;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 201
    instance-of v0, p1, Lcom/android/videoeditor/service/MovieOverlay;

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mUniqueId:Ljava/lang/String;

    check-cast p1, Lcom/android/videoeditor/service/MovieOverlay;

    .end local p1
    iget-object v1, p1, Lcom/android/videoeditor/service/MovieOverlay;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppDuration()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppDurationMs:J

    return-wide v0
.end method

.method public getAppStartTime()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppStartTimeMs:J

    return-wide v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mDurationMs:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method getStartTime()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mStartTimeMs:J

    return-wide v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAppDuration(J)V
    .locals 0
    .parameter "durationMs"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppDurationMs:J

    .line 128
    return-void
.end method

.method public setAppStartTime(J)V
    .locals 0
    .parameter "startTimeMs"

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mAppStartTimeMs:J

    .line 163
    return-void
.end method

.method setDuration(J)V
    .locals 0
    .parameter "durationMs"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mDurationMs:J

    .line 111
    return-void
.end method

.method setStartTime(J)V
    .locals 0
    .parameter "startTimeMs"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieOverlay;->mStartTimeMs:J

    .line 146
    return-void
.end method

.method updateUserAttributes(Landroid/os/Bundle;)V
    .locals 1
    .parameter "userAttributes"

    .prologue
    .line 249
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mType:I

    .line 250
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mTitle:Ljava/lang/String;

    .line 251
    const-string v0, "subtitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieOverlay;->mSubtitle:Ljava/lang/String;

    .line 252
    return-void
.end method
