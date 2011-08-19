.class Ldalvik/system/NativeStart;
.super Ljava/lang/Object;
.source "NativeStart.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native main([Ljava/lang/String;)V
.end method


# virtual methods
.method public native run()V
.end method
