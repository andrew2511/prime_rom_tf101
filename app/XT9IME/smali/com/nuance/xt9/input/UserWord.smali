.class public final Lcom/nuance/xt9/input/UserWord;
.super Ljava/lang/Object;
.source "UserWord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nuance/xt9/input/UserWord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEmpty:Ljava/lang/String;

.field private mSubs:Ljava/lang/String;

.field private mWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/nuance/xt9/input/UserWord$1;

    invoke-direct {v0}, Lcom/nuance/xt9/input/UserWord$1;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mEmpty:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mEmpty:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mSubs:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mEmpty:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mWord:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mEmpty:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/UserWord;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/nuance/xt9/input/UserWord$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/UserWord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/nuance/xt9/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mSubs:Ljava/lang/String;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mWord:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mSubs:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mWord:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPhrase(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setSpell(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/UserWord;->setSubs(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setSubs(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nuance/xt9/input/UserWord;->mSubs:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nuance/xt9/input/UserWord;->mWord:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mSubs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/nuance/xt9/input/UserWord;->mWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "arg1"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/UserWord;->writeToParcel(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method
