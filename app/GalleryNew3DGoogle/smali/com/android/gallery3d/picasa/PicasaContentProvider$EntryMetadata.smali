.class final Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasa/PicasaContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field public dateEdited:J

.field public displayIndex:I

.field public id:J

.field public survived:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 988
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1
    .parameter "id"
    .parameter "dateEdited"
    .parameter "displayIndex"

    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 991
    iput-wide p1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->id:J

    .line 992
    iput-wide p3, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->dateEdited:J

    .line 993
    iput p5, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->displayIndex:I

    .line 994
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 997
    iget-wide v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->id:J

    iget-wide v2, p1, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->id:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 981
    check-cast p1, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->compareTo(Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;)I

    move-result v0

    return v0
.end method
