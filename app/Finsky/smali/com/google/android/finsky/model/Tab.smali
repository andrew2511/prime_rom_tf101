.class public Lcom/google/android/finsky/model/Tab;
.super Ljava/lang/Object;
.source "Tab.java"


# instance fields
.field private mDataUrl:Ljava/lang/String;

.field private final mIconUrl:Ljava/lang/String;

.field private final mId:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "id"
    .parameter "dataUrl"
    .parameter "iconUrl"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/model/Tab;->mName:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/google/android/finsky/model/Tab;->mId:I

    .line 42
    iput-object p3, p0, Lcom/google/android/finsky/model/Tab;->mDataUrl:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/google/android/finsky/model/Tab;->mIconUrl:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/model/Tab;->mDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/finsky/model/Tab;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/model/Tab;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/model/Tab;->mName:Ljava/lang/String;

    return-object v0
.end method
