.class Landroid/app/ActivityThread$StopInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopInfo"
.end annotation


# instance fields
.field description:Ljava/lang/CharSequence;

.field thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2574
    invoke-direct {p0}, Landroid/app/ActivityThread$StopInfo;-><init>()V

    return-void
.end method
