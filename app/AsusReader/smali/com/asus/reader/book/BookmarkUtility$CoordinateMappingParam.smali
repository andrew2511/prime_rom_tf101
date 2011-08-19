.class public Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;
.super Ljava/lang/Object;
.source "BookmarkUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookmarkUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoordinateMappingParam"
.end annotation


# instance fields
.field public adjustX:D

.field public adjustY:D

.field public scaleX:D

.field public scaleY:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0
    .parameter "scaleX"
    .parameter "adjustX"
    .parameter "scaleY"
    .parameter "adjustY"

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput-wide p1, p0, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleX:D

    .line 685
    iput-wide p3, p0, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustX:D

    .line 686
    iput-wide p5, p0, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleY:D

    .line 687
    iput-wide p7, p0, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustY:D

    .line 688
    return-void
.end method
