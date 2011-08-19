.class public Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidAshmemImageFactory;
.super Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImageFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImageFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createImage([BII)Lcom/google/android/youtube/googlemobile/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;-><init>([BII)V

    return-object v0
.end method
