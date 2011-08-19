.class Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;
.super Ljava/lang/Object;
.source "TabbedLists.java"

# interfaces
.implements Lcom/google/android/music/RepresentativeAlbumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TabbedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabbedAlbumChangeListener"
.end annotation


# instance fields
.field private isActive:Z

.field private mRepresentativeAlbum:J

.field private final mSuperListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/android/music/RepresentativeAlbumChangeListener;)V
    .locals 2
    .parameter "superListener"

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->mRepresentativeAlbum:J

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->isActive:Z

    .line 262
    iput-object p1, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->mSuperListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 263
    return-void
.end method


# virtual methods
.method public cancelBackgroundChange()V
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->isActive:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->mSuperListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    invoke-interface {v0}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->cancelBackgroundChange()V

    .line 283
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->isActive:Z

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->mSuperListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    iget-wide v1, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->mRepresentativeAlbum:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->setRepresentativeAlbum(JZ)V

    .line 277
    :cond_0
    return-void
.end method

.method public setRepresentativeAlbum(JZ)V
    .locals 1
    .parameter "albumId"
    .parameter "fromScroll"

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->mRepresentativeAlbum:J

    .line 267
    iget-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->isActive:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->mSuperListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->setRepresentativeAlbum(JZ)V

    .line 270
    :cond_0
    return-void
.end method
