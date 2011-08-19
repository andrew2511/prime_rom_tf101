.class public Lcom/layar/core/POIRenderer1D;
.super Lcom/layar/core/POIRenderer;
.source "POIRenderer1D.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/layar/data/POI;)V
    .locals 0
    .parameter "context"
    .parameter "poi"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/layar/core/POIRenderer;-><init>(Landroid/content/Context;Lcom/layar/data/BasePOI;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected drawObject(Ljavax/microedition/khronos/opengles/GL10;Z)Z
    .locals 1
    .parameter "gl"
    .parameter "focus"

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method protected intersect([F[F)F
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 22
    const/high16 v0, -0x4080

    return v0
.end method
