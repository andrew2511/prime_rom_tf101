.class Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
.super Ljava/lang/Object;
.source "UploadedTexture.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/UploadedTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BorderKey"
.end annotation


# instance fields
.field public config:Landroid/graphics/Bitmap$Config;

.field public length:I

.field public vertical:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/UploadedTexture$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    .locals 2

    .prologue
    .line 87
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 88
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 78
    instance-of v2, p1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    if-nez v2, :cond_0

    move v2, v4

    .line 80
    :goto_0
    return v2

    .line 79
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-object v1, v0

    .line 80
    .local v1, o:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    iget-boolean v3, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iget-object v3, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    iget v3, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    xor-int v0, v1, v2

    .line 73
    .local v0, x:I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    goto :goto_0
.end method
