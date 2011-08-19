.class public Lcom/amazon/kcp/store/models/IAsyncModel$State;
.super Ljava/lang/Object;
.source "IAsyncModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/models/IAsyncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

.field public static final LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

.field public static final LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

.field public static final NONE:Lcom/amazon/kcp/store/models/IAsyncModel$State;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->NONE:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    .line 36
    new-instance v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    .line 41
    new-instance v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    .line 46
    new-instance v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/models/IAsyncModel$State;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->name:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->name:Ljava/lang/String;

    return-object v0
.end method
