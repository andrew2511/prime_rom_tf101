.class public final enum Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivationTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

.field public static final enum Explicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

.field public static final enum Implicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    const-string v1, "Explicit"

    invoke-direct {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Explicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    const-string v1, "Implicit"

    invoke-direct {v0, v1, v3}, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Implicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Explicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Implicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    return-object p0
.end method

.method public static values()[Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    array-length v1, v0

    new-array v2, v1, [Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
