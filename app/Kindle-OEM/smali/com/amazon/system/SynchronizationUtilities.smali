.class public final Lcom/amazon/system/SynchronizationUtilities;
.super Ljava/lang/Object;
.source "SynchronizationUtilities.java"


# static fields
.field private static volatile utilities:Lcom/amazon/system/Utilities;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUtilities()Lcom/amazon/system/Utilities;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/amazon/system/SynchronizationUtilities;->utilities:Lcom/amazon/system/Utilities;

    return-object v0
.end method

.method public static setUtilities(Lcom/amazon/system/Utilities;)V
    .locals 1
    .parameter "util"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31
    :cond_0
    sput-object p0, Lcom/amazon/system/SynchronizationUtilities;->utilities:Lcom/amazon/system/Utilities;

    .line 32
    return-void
.end method
