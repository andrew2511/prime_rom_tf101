.class Lcom/android/vending/api/RequestDispatcher$RequestState;
.super Ljava/lang/Object;
.source "RequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestState"
.end annotation


# instance fields
.field cacheable:Z

.field canPostponeRefresh:Z

.field isCached:Z

.field isExpired:Z

.field possiblyExpiredProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/api/RequestDispatcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/vending/api/RequestDispatcher$RequestState;-><init>()V

    return-void
.end method
