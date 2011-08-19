.class public Lcom/google/android/voicesearch/actions/ShowRawResultAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "ShowRawResultAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/ShowRawResultAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_RESOURCE_PREFIX:Ljava/lang/String; = "browser"


# instance fields
.field private final mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/voicesearch/actions/ShowRawResultAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/ShowRawResultAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 40
    const/4 v2, -0x2

    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    const-string v4, "browser"

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 43
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/ShowRawResultAction$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/ShowRawResultAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f02005b

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f02005b

    return v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f02005b

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAddShortcut()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void
.end method
