.class Lcom/android/gallery3d/ui/SlotView$ItemEntry;
.super Lcom/android/gallery3d/util/LinkedNode;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemEntry"
.end annotation


# instance fields
.field public base:Lcom/android/gallery3d/ui/PositionRepository$Position;

.field public item:Lcom/android/gallery3d/ui/DisplayItem;

.field public target:Lcom/android/gallery3d/ui/PositionRepository$Position;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/DisplayItem;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;)V
    .locals 0
    .parameter "item"
    .parameter "target"
    .parameter "base"

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/gallery3d/util/LinkedNode;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->item:Lcom/android/gallery3d/ui/DisplayItem;

    .line 352
    iput-object p2, p0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->target:Lcom/android/gallery3d/ui/PositionRepository$Position;

    .line 353
    iput-object p3, p0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->base:Lcom/android/gallery3d/ui/PositionRepository$Position;

    .line 354
    return-void
.end method
