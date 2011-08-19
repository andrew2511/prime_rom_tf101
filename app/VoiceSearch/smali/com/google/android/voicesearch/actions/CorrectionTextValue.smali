.class public Lcom/google/android/voicesearch/actions/CorrectionTextValue;
.super Lcom/google/android/voicesearch/actions/TextValue;
.source "CorrectionTextValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/CorrectionTextValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPhrases:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/voicesearch/actions/CorrectionTextValue$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/CorrectionTextValue$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p1, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actions/CorrectionTextValue;-><init>([Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/TextValue;-><init>()V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/TextValue;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAlternates(Ljava/lang/CharSequence;IIZ)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, " "

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 78
    if-ltz v2, :cond_0

    .line 79
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v3, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 88
    if-ltz v8, :cond_2

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 94
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 101
    :goto_1
    if-ltz v7, :cond_2

    .line 103
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 104
    if-eqz p4, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 109
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_3
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    .line 115
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    return-object v2
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/TextValue;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->mPhrases:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    return-void
.end method
