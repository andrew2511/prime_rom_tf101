.class public Lcom/google/android/music/MusicUtils$BigCursor;
.super Landroid/database/AbstractCursor;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigCursor"
.end annotation


# instance fields
.field mColumns:[Ljava/lang/String;

.field mSize:I


# direct methods
.method constructor <init>([Ljava/lang/String;I)V
    .locals 0
    .parameter "columns"
    .parameter "size"

    .prologue
    .line 811
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 812
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$BigCursor;->mColumns:[Ljava/lang/String;

    .line 813
    iput p2, p0, Lcom/google/android/music/MusicUtils$BigCursor;->mSize:I

    .line 814
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$BigCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/google/android/music/MusicUtils$BigCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/google/android/music/MusicUtils$BigCursor;->getPosition()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/google/android/music/MusicUtils$BigCursor;->getPosition()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/google/android/music/MusicUtils$BigCursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/google/android/music/MusicUtils$BigCursor;->getPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/google/android/music/MusicUtils$BigCursor;->getPosition()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/google/android/music/MusicUtils$BigCursor;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method
