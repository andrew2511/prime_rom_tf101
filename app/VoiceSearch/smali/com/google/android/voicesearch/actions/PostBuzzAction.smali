.class public Lcom/google/android/voicesearch/actions/PostBuzzAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "PostBuzzAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/PostBuzzAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_RESOURCE_PREFIX:Ljava/lang/String; = "post_buzz"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/voicesearch/actions/PostBuzzAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/PostBuzzAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/PostBuzzAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v2, -0x1

    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    const-string v4, "post_buzz"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/PostBuzzAction$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/PostBuzzAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f020016

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f020017

    return v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f020018

    return v0
.end method

.method public shouldAddShortcut()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
