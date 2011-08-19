.class public Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
.super Ljava/lang/Object;
.source "OrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/OrderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public Supplements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;",
            ">;"
        }
    .end annotation
.end field

.field public cid:Ljava/lang/String;

.field public includeSupplements:Z

.field public isFavorite:Z

.field public isSubscription:Z

.field public selectedDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
