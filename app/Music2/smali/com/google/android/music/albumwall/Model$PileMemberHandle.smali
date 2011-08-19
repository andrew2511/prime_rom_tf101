.class Lcom/google/android/music/albumwall/Model$PileMemberHandle;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PileMemberHandle"
.end annotation


# instance fields
.field private mExpanded:Z

.field private mIndex:I

.field private mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V
    .locals 0
    .parameter "pile"
    .parameter "expanded"
    .parameter "index"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 561
    iput-boolean p2, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    .line 562
    iput p3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    .line 563
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 575
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 588
    :goto_0
    return v2

    .line 577
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 578
    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 580
    goto :goto_0

    .line 581
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;

    move-object v1, v0

    .line 582
    .local v1, other:Lcom/google/android/music/albumwall/Model$PileMemberHandle;
    iget-boolean v2, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    iget-boolean v3, v1, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 583
    goto :goto_0

    .line 584
    :cond_3
    iget v2, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    iget v3, v1, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    if-eq v2, v3, :cond_4

    move v2, v4

    .line 585
    goto :goto_0

    .line 586
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-object v3, v1, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 587
    goto :goto_0

    :cond_5
    move v2, v5

    .line 588
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 566
    const/16 v0, 0x1f

    .line 567
    .local v0, prime:I
    const/4 v1, 0x1

    .line 568
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 569
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    add-int v1, v2, v3

    .line 570
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 571
    return v1

    .line 568
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PileMemberHandle [mPile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
