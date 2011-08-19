.class final Lcom/ecareme/pixwe/media/TimeBar$Marker;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/TimeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marker"
.end annotation


# static fields
.field public static final TYPE_DAY:I = 0x2

.field public static final TYPE_DOT:I = 0x3

.field public static final TYPE_MONTH:I = 0x1


# instance fields
.field public final day:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public final month:I

.field public final x:F

.field public final year:I


# direct methods
.method constructor <init>(FJIIIII)V
    .locals 1
    .parameter "x"
    .parameter "time"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "type"
    .parameter "expectedCapacity"

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p1, p0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->x:F

    .line 498
    iput p4, p0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->year:I

    .line 499
    iput p5, p0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->month:I

    .line 500
    iput p6, p0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->day:I

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    .line 502
    return-void
.end method
