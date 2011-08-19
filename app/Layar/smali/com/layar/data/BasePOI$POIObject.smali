.class public Lcom/layar/data/BasePOI$POIObject;
.super Ljava/lang/Object;
.source "BasePOI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/BasePOI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "POIObject"
.end annotation


# instance fields
.field public full:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public reduced:Ljava/lang/String;

.field public size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/layar/data/BasePOI$POIObject;->size:F

    .line 18
    return-void
.end method
