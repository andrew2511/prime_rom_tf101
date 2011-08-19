.class public Lcom/google/android/voicesearch/actions/SlotSpec;
.super Ljava/lang/Object;
.source "SlotSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SlotSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_COMPOSE:I = 0x3

.field public static final TYPE_CONTACT_EMAIL:I = 0x0

.field public static final TYPE_CONTACT_PHONE:I = 0x1

.field public static final TYPE_ONE_LINE_COMPOSE:I = 0x2

.field public static final TYPE_TIME:I = 0x4


# instance fields
.field private final mIdentifier:Ljava/lang/String;

.field private final mIndex:I

.field private final mIsDefault:Z

.field private final mMaxLength:I

.field private final mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/google/android/voicesearch/actions/SlotSpec$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SlotSpec$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SlotSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIsDefault:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    .line 57
    iput p4, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    .line 58
    iput-boolean p5, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIsDefault:Z

    .line 59
    iput p6, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIsDefault:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mIsDefault:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/google/android/voicesearch/actions/SlotSpec;->mMaxLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
