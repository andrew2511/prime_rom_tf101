.class public Lcom/asus/cm/UIAlertParaDescriptor;
.super Ljava/lang/Object;
.source "UIAlertParaDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/asus/cm/UIAlertParaDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChoiceOptions:[Ljava/lang/String;

.field public mChoicedFlag:I

.field public mDefaultInput:Ljava/lang/String;

.field public mDialogContent:Ljava/lang/String;

.field public mEchoType:Ljava/lang/String;

.field public mIcon:I

.field public mInputType:Ljava/lang/String;

.field public mMaxTime:I

.field public mMinTime:I

.field public mNegativeButtonText:Ljava/lang/String;

.field public mPositiveButtonText:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/asus/cm/UIAlertParaDescriptor$1;

    invoke-direct {v0}, Lcom/asus/cm/UIAlertParaDescriptor$1;-><init>()V

    sput-object v0, Lcom/asus/cm/UIAlertParaDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mIcon:I

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "pIn"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mIcon:I

    .line 23
    invoke-virtual {p0, p1}, Lcom/asus/cm/UIAlertParaDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/asus/cm/UIAlertParaDescriptor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/asus/cm/UIAlertParaDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "pIn"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mMaxTime:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mMinTime:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mChoiceOptions:[Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mDefaultInput:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mIcon:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mNegativeButtonText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "pDest"
    .parameter "pFlags"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mMaxTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mMinTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mChoiceOptions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mDefaultInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/asus/cm/UIAlertParaDescriptor;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
