.class final Lcom/amazon/topaz/internal/layout/FullScreenCallback;
.super Lcom/amazon/topaz/Callback;
.source "FullScreenCallback.java"


# static fields
.field private static INFO_TYPE:Ljava/lang/String;

.field private static LABEL:Ljava/lang/String;


# instance fields
.field private what_:Lcom/amazon/topaz/internal/book/Container;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Zoom"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FullScreenCallback;->LABEL:Ljava/lang/String;

    .line 11
    const-string v0, "zoom"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FullScreenCallback;->INFO_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/book/Container;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 14
    sget-object v0, Lcom/amazon/topaz/internal/layout/FullScreenCallback;->LABEL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/FullScreenCallback;->what_:Lcom/amazon/topaz/internal/book/Container;

    .line 16
    return-void
.end method


# virtual methods
.method public getInfo()Lcom/amazon/topaz/Callback$Info;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/amazon/topaz/Callback$Info;

    sget-object v1, Lcom/amazon/topaz/internal/layout/FullScreenCallback;->INFO_TYPE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/Callback$Info;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, i:Lcom/amazon/topaz/Callback$Info;
    return-object v0
.end method

.method public run(Lcom/amazon/topaz/Viewer;)Ljava/lang/String;
    .locals 1
    .parameter "v"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/FullScreenCallback;->what_:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/Viewer;->fullScreen(Lcom/amazon/topaz/internal/book/Container;)V

    .line 20
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    return-object v0
.end method
