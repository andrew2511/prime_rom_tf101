.class public interface abstract Lcom/amazon/kcp/store/models/IBookInfo;
.super Ljava/lang/Object;
.source "IBookInfo.java"


# static fields
.field public static final EBookAvailabilityPreorder:I = 0x1

.field public static final EBookAvailabilityPurchase:I = 0x0

.field public static final EBookAvailabilityUnavailable:I = 0x2

.field public static final EBookAvailabilityUnavailableForDevice:I = 0x3

.field public static final EBookOrderableNo:I = 0x2

.field public static final EBookOrderableUnknown:I = 0x0

.field public static final EBookOrderableYes:I = 0x1


# virtual methods
.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getAvailability()I
.end method

.method public abstract getCoverUrl()Ljava/lang/String;
.end method

.method public abstract getPrice()Ljava/lang/String;
.end method

.method public abstract getRating()F
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
