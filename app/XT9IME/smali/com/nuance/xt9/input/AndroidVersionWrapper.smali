.class public Lcom/nuance/xt9/input/AndroidVersionWrapper;
.super Ljava/lang/Object;
.source "AndroidVersionWrapper.java"


# static fields
.field public static final ECLAIR:I = 0x5

.field public static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/nuance/xt9/input/AndroidVersionWrapper;->SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
