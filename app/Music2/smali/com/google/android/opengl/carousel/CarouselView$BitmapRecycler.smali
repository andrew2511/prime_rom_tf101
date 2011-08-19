.class public interface abstract Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;
.super Ljava/lang/Object;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapRecycler"
.end annotation


# static fields
.field public static final TYPE_BACKGROUND:I = 0x0

.field public static final TYPE_CARD_TEXTURE:I = 0x1

.field public static final TYPE_DETAIL_TEXTURE:I = 0x2


# virtual methods
.method public abstract recycle(ILandroid/graphics/Bitmap;)V
.end method
