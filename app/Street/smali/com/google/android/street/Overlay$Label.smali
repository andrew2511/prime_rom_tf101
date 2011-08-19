.class Lcom/google/android/street/Overlay$Label;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Label"
.end annotation


# instance fields
.field public mHeight:F

.field public mLabelID:I

.field public final mPosition:[F

.field public mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/Overlay$Label;->mPosition:[F

    .line 325
    return-void
.end method
