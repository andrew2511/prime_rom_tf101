.class public Lcom/zinio/mobile/android/resources/download/b;
.super Lcom/zinio/mobile/android/resources/download/k;
.source "SourceFile"


# static fields
.field private static b:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/zinio/mobile/android/resources/download/h;

    invoke-direct {v0}, Lcom/zinio/mobile/android/resources/download/h;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/resources/download/b;->b:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/zinio/mobile/android/resources/download/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput p6, p0, Lcom/zinio/mobile/android/resources/download/b;->a:I

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/resources/download/k;-><init>(Landroid/os/Parcel;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/resources/download/b;->a:I

    .line 70
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/zinio/mobile/android/resources/download/b;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/resources/download/k;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    iget v0, p0, Lcom/zinio/mobile/android/resources/download/b;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
