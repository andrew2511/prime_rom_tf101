.class public Ljavax/obex/ApplicationParameter$TRIPLET_VALUE$ORDER;
.super Ljava/lang/Object;
.source "ApplicationParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/obex/ApplicationParameter$TRIPLET_VALUE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ORDER"
.end annotation


# static fields
.field public static final ORDER_BY_ALPHANUMERIC:B = 0x1t

.field public static final ORDER_BY_INDEX:B = 0x0t

.field public static final ORDER_BY_PHONETIC:B = 0x2t


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
