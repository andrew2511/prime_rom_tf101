.class public Lcom/amazon/topaz/Callback$Info;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/topaz/Callback$Info;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/Callback$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/amazon/topaz/Callback$Info;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 77
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/Callback$Info;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazon/topaz/Callback$Info;->type:Ljava/lang/String;

    .line 83
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Callback$Info;->data:Ljava/util/Map;

    .line 84
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/topaz/Callback$Info;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/topaz/Callback$Info;->type:Ljava/lang/String;

    return-object v0
.end method
