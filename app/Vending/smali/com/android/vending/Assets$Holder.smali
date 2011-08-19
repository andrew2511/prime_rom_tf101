.class Lcom/android/vending/Assets$Holder;
.super Ljava/lang/Object;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/Assets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/android/vending/Assets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/android/vending/Assets;

    invoke-direct {v0}, Lcom/android/vending/Assets;-><init>()V

    sput-object v0, Lcom/android/vending/Assets$Holder;->instance:Lcom/android/vending/Assets;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/vending/Assets;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/vending/Assets$Holder;->instance:Lcom/android/vending/Assets;

    return-object v0
.end method
