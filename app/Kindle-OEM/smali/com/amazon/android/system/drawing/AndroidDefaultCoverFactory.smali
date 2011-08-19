.class public Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;
.super Ljava/lang/Object;
.source "AndroidDefaultCoverFactory.java"

# interfaces
.implements Lcom/amazon/system/drawing/IDefaultCoverImageFactory;


# static fields
.field private static instance:Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;


# instance fields
.field private bookCover:Lcom/amazon/system/drawing/Image;

.field private context:Landroid/content/Context;

.field private magazineCover:Lcom/amazon/system/drawing/Image;

.field private newspaperCover:Lcom/amazon/system/drawing/Image;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->instance:Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Android Default Cover Factory not initialized! Call initialize first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    sget-object v0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->instance:Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "applicationContext"

    .prologue
    .line 47
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;

    invoke-direct {v0, p0}, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->instance:Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;

    .line 48
    return-void
.end method


# virtual methods
.method public getDefaultCover(I)Lcom/amazon/system/drawing/Image;
    .locals 3
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->magazineCover:Lcom/amazon/system/drawing/Image;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020035

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->magazineCover:Lcom/amazon/system/drawing/Image;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->magazineCover:Lcom/amazon/system/drawing/Image;

    .line 109
    :goto_0
    return-object v0

    .line 88
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 91
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->newspaperCover:Lcom/amazon/system/drawing/Image;

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->newspaperCover:Lcom/amazon/system/drawing/Image;

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->newspaperCover:Lcom/amazon/system/drawing/Image;

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->bookCover:Lcom/amazon/system/drawing/Image;

    if-nez v0, :cond_4

    .line 103
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->bookCover:Lcom/amazon/system/drawing/Image;

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidDefaultCoverFactory;->bookCover:Lcom/amazon/system/drawing/Image;

    goto :goto_0
.end method
