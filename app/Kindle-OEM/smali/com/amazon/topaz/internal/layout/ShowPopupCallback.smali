.class public final Lcom/amazon/topaz/internal/layout/ShowPopupCallback;
.super Lcom/amazon/topaz/Callback;
.source "ShowPopupCallback.java"


# static fields
.field private static INFO_TYPE:Ljava/lang/String;


# instance fields
.field private items_:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazon/topaz/internal/book/Container;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "popup"

    sput-object v0, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->INFO_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->items_:Ljava/util/LinkedList;

    .line 27
    return-void
.end method


# virtual methods
.method public addItem(Lcom/amazon/topaz/internal/book/Container;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->items_:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public getInfo()Lcom/amazon/topaz/Callback$Info;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/amazon/topaz/Callback$Info;

    sget-object v1, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->INFO_TYPE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/Callback$Info;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, i:Lcom/amazon/topaz/Callback$Info;
    return-object v0
.end method

.method public run(Lcom/amazon/topaz/Viewer;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->items_:Ljava/util/LinkedList;

    new-instance v1, Lcom/amazon/foundation/internal/SimpleCanceler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/SimpleCanceler;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/Viewer;->showPopup(Ljava/util/Collection;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const-string v0, ""

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/amazon/topaz/exception/TopazException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/exception/TopazException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
