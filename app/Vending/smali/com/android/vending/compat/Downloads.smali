.class public final Lcom/android/vending/compat/Downloads;
.super Ljava/lang/Object;
.source "Downloads.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/vending/compat/Downloads;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 139
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    return v0
.end method

.method public static isStatusPaused(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public static isStatusPending(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 103
    const/16 v0, 0xbe

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusQueuedForWifi(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 117
    const/16 v0, 0xc4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 124
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    return v0
.end method
