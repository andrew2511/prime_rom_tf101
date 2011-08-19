.class Landroid/view/GLES20DisplayList$DisplayListFinalizer;
.super Ljava/lang/Object;
.source "GLES20DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20DisplayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayListFinalizer"
.end annotation


# instance fields
.field mNativeDisplayList:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .parameter "nativeDisplayList"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    .line 105
    return-void
.end method

.method static getFinalizer(Landroid/view/GLES20DisplayList$DisplayListFinalizer;I)Landroid/view/GLES20DisplayList$DisplayListFinalizer;
    .registers 3
    .parameter "oldFinalizer"
    .parameter "nativeDisplayList"

    .prologue
    .line 96
    if-nez p0, :cond_8

    .line 97
    new-instance v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    invoke-direct {v0, p1}, Landroid/view/GLES20DisplayList$DisplayListFinalizer;-><init>(I)V

    .line 100
    :goto_7
    return-object v0

    .line 99
    :cond_8
    invoke-direct {p0, p1}, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->replaceNativeObject(I)V

    move-object v0, p0

    .line 100
    goto :goto_7
.end method

.method private replaceNativeObject(I)V
    .registers 3
    .parameter "newNativeDisplayList"

    .prologue
    .line 108
    iget v0, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    if-eq v0, p1, :cond_d

    .line 109
    iget v0, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->destroyDisplayList(I)V

    .line 111
    :cond_d
    iput p1, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    .line 112
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->replaceNativeObject(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    return-void

    .line 119
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
