.class Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MyLocationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameAndDate"
.end annotation


# instance fields
.field public date:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    .line 742
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    .line 743
    return-void
.end method
